# Simple PowerShell HTTP Server for Las Güelas (Dynamic)
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:8000/")
try {
    $listener.Start()
    Write-Host "Servidor local iniciado en http://localhost:8000/"
    Write-Host "Presiona Ctrl+C para detener el servidor o detén la tarea en Antigravity."
} catch {
    Write-Error "No se pudo iniciar el servidor. Es posible que el puerto 8000 ya esté en uso."
    Exit
}

$baseDir = "C:\Users\Usuario\.gemini\antigravity\scratch\las_guelas"

while ($listener.IsListening) {
    try {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response
        
        $localPath = $request.Url.LocalPath
        if ($localPath -eq "/") {
            $localPath = "/index.html"
        }
        
        # Mapear ruta física de manera segura
        $filePath = [System.IO.Path]::GetFullPath((Join-Path $baseDir $localPath.TrimStart("/")))
        
        # Verificar que la ruta esté dentro del directorio base
        if (-not $filePath.StartsWith($baseDir, [System.StringComparison]::OrdinalIgnoreCase)) {
            $response.StatusCode = 403
            $response.Close()
            continue
        }
        
        if (Test-Path $filePath -PathType Leaf) {
            $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
            $contentType = switch ($ext) {
                ".html" { "text/html; charset=utf-8" }
                ".css"  { "text/css; charset=utf-8" }
                ".js"   { "text/javascript; charset=utf-8" }
                ".png"  { "image/png" }
                ".jpg"  { "image/jpeg" }
                ".jpeg" { "image/jpeg" }
                ".gif"  { "image/gif" }
                ".svg"  { "image/svg+xml" }
                ".md"   { "text/markdown; charset=utf-8" }
                default { "application/octet-stream" }
            }
            
            $content = [System.IO.File]::ReadAllBytes($filePath)
            $response.ContentType = $contentType
            $response.ContentLength64 = $content.Length
            $response.OutputStream.Write($content, 0, $content.Length)
            Write-Host "$(Get-Date -Format 'HH:mm:ss') - 200 - $localPath ($contentType)"
        } else {
            $response.StatusCode = 404
            $errorMsg = [System.Text.Encoding]::UTF8.GetBytes("404 - Archivo no encontrado")
            $response.ContentType = "text/plain; charset=utf-8"
            $response.ContentLength64 = $errorMsg.Length
            $response.OutputStream.Write($errorMsg, 0, $errorMsg.Length)
            Write-Host "$(Get-Date -Format 'HH:mm:ss') - 404 - $localPath"
        }
        $response.Close()
    } catch {
        # Mantener el servidor activo ante excepciones
    }
}
