---
name: Rustic Heritage
colors:
  surface: '#fbf9f4'
  surface-dim: '#dbdad5'
  surface-bright: '#fbf9f4'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f5f3ee'
  surface-container: '#f0eee9'
  surface-container-high: '#eae8e3'
  surface-container-highest: '#e4e2dd'
  on-surface: '#1b1c19'
  on-surface-variant: '#3f4945'
  inverse-surface: '#30312e'
  inverse-on-surface: '#f2f1ec'
  outline: '#707975'
  outline-variant: '#bfc9c4'
  surface-tint: '#29695b'
  primary: '#00342b'
  on-primary: '#ffffff'
  primary-container: '#004d40'
  on-primary-container: '#7ebdac'
  inverse-primary: '#94d3c1'
  secondary: '#77574d'
  on-secondary: '#ffffff'
  secondary-container: '#fed3c7'
  on-secondary-container: '#795950'
  tertiary: '#3d2a00'
  on-tertiary: '#ffffff'
  tertiary-container: '#593f00'
  on-tertiary-container: '#d1ab63'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#afefdd'
  primary-fixed-dim: '#94d3c1'
  on-primary-fixed: '#00201a'
  on-primary-fixed-variant: '#065043'
  secondary-fixed: '#ffdbd0'
  secondary-fixed-dim: '#e7bdb1'
  on-secondary-fixed: '#2c160e'
  on-secondary-fixed-variant: '#5d4037'
  tertiary-fixed: '#ffdea5'
  tertiary-fixed-dim: '#e9c176'
  on-tertiary-fixed: '#261900'
  on-tertiary-fixed-variant: '#5d4201'
  background: '#fbf9f4'
  on-background: '#1b1c19'
  surface-variant: '#e4e2dd'
typography:
  headline-xl:
    fontFamily: Newsreader
    fontSize: 48px
    fontWeight: '600'
    lineHeight: 56px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Newsreader
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
  headline-md:
    fontFamily: Newsreader
    fontSize: 24px
    fontWeight: '500'
    lineHeight: 32px
  headline-lg-mobile:
    fontFamily: Newsreader
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 36px
  body-lg:
    fontFamily: Work Sans
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Work Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  label-md:
    fontFamily: Work Sans
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
    letterSpacing: 0.05em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 8px
  gutter: 24px
  margin-mobile: 16px
  margin-desktop: 64px
  max-width: 1280px
---

## Brand & Style

The brand personality for this design system is rooted in Asturian heritage—warm, communal, and deeply authentic. It balances the weight of tradition with a modern, clean execution, evoking the feeling of a sun-drenched stone tavern. The target audience includes both locals seeking familiarity and culinary travelers looking for an elevated traditional experience.

The design style is a blend of **Minimalism** and **Tactile** influences. It prioritizes high-quality photography as the primary storyteller, using generous whitespace (off-white) to let imagery of pouring cider and rustic dishes breathe. The interface feels organic rather than mechanical, focusing on comfort and reliability.

## Colors

The palette is derived from the natural environment of a traditional sidrería. 
- **Bottle Green (Primary):** Representing the iconic Asturian cider bottle; used for primary actions and brand-heavy elements.
- **Rich Wood (Secondary):** Providing grounding and warmth, used for secondary structural elements and text.
- **Elegant Gold (Tertiary):** Inspired by the cider’s hue; used for accents, highlights, and specialized icons like "Dog Friendly" markers.
- **Off-White (Neutral):** A soft, linen-like background that prevents the high-contrast harshness of pure white, enhancing the rustic feel.

## Typography

This design system utilizes a sophisticated typographic pairing to bridge the gap between history and the present. **Newsreader** is the chosen serif for headings, providing an editorial, authoritative, yet warm character that suggests long-standing tradition. 

**Work Sans** serves as the functional workhorse for body text and UI labels. Its neutral, grounded proportions ensure high legibility on mobile devices and menus, providing a clean contrast to the more expressive serif headlines. For headlines on mobile, sizes are reduced slightly to maintain hierarchy without overwhelming the screen.

## Layout & Spacing

The layout philosophy follows a **fixed grid** model for desktop to maintain an editorial, "menu-like" structure, while transitioning to a fluid single-column layout for mobile devices. 

A 12-column grid is used for desktop layouts, allowing photography to span multiple columns to create visual rhythm. Spacing follows an 8px base unit to ensure consistent vertical rhythm. Content should be centered with generous outer margins to emphasize the premium, boutique nature of the establishment. Large-scale photography should often break the grid or occupy full-width sections to immerse the user in the atmosphere of "Las Güelas."

## Elevation & Depth

Depth is conveyed through **ambient shadows** and **tonal layers**. Instead of harsh, black shadows, this design system uses soft, diffused shadows with a slight warm tint (`rgba(93, 64, 55, 0.08)`) to mimic the way natural light hits wooden surfaces.

Surface tiers are used to separate content:
1.  **Base:** Off-white background (#f9f7f2).
2.  **Surface-Raised:** Pure white or very light cream cards with subtle shadows for location details or menu items.
3.  **Overlay:** Bottle Green or Rich Wood overlays with 80% opacity, used for text legibility over high-quality background photography.

## Shapes

The shape language is **Rounded**, avoiding the clinical feel of sharp corners or the overly "tech" feel of pill shapes. A 0.5rem (8px) base radius is applied to buttons, input fields, and cards. This moderate rounding evokes a sense of friendliness and organic texture, reminiscent of handcrafted wooden furniture or ceramic plates.

## Components

### Buttons
Primary buttons use the Bottle Green background with Off-White text, featuring a subtle Gold bottom-border on hover to signal the "premium" touch. Secondary buttons use a Wood Brown outline with a transparent background.

### Cards & Photography
Location cards are the protagonist of the interface. They must feature a full-bleed image header with the location name in Newsreader overlapping the bottom edge. High-quality photography of the cider house interior or specific dishes should be treated with a subtle grain filter to enhance the rustic aesthetic.

### Icons & "Dog Friendly" Pattern
Icons are thin-stroke and elegant. The "Dog Friendly" icon is a custom illustration of a paw print or a hound profile, always rendered in Gold (#c5a059) to denote its status as a special amenity. It is often paired with a small, rounded chip label.

### Lists & Menus
Menu lists use a traditional "dotted leader" style to connect dish names with prices, utilizing Work Sans for legibility but Newsreader for the dish titles.

### Input Fields
Fields use the Off-White background with a 1px Wood Brown border. On focus, the border thickens and changes to Gold.