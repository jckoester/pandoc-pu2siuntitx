# Test

## Examples from the mhchem manual
see https://mhchem.github.io/MathJax-mhchem/

### Physical Units (pu)
(MathJax or KaTeX only, not for LaTeX)

`$\pu{123 kJ}$`: $\pu{123 kJ}$

`$\pu{123 mm2}$`:  $\pu{123 mm2}$

### Two conventions regarding the multiplication within units.

>[!NOTE]
> These will all be translated to the same `siunitx`-Macro:
> ```
> \qty{123}{\J\cdot\s}
> ```
`$\pu{123 J s}$`; $\pu{123 J s}$

`$\pu{123 J*s}$`: $\pu{123 J*s}$

### Four conventions regarding divisions.

>[!NOTE]
> These will all be translated to the same `siunitx`-Macro:
> ```
> \qty{123}{\kJ\per\mol}
> ```

`$\pu{123 kJ/mol}$` : $\pu{123 kJ/mol}$

`$\pu{123 kJ//mol}$` : $\pu{123 kJ//mol}$

`$\pu{123 kJ mol-1}$`: $\pu{123 kJ mol-1}$

`$\pu{123 kJ*mol-1}$`: $\pu{123 kJ*mol-1}$

### Four main conventions for writing numbers in scientific notation.
>[!NOTE]
> These will all be translated to the same `siunitx`-Macro:
> ```
> \qty{1.2e3}{\kJ}
> ```

`$\pu{1.2e3 kJ}$`: $\pu{1.2e3 kJ}$

`$\pu{1,2e3 kJ}$`: $\pu{1,2e3 kJ}$

`$\pu{1.2E3 kJ}$`: $\pu{1.2E3 kJ}$

`$\pu{1,2E3 kJ}$`: $\pu{1,2E3 kJ}$


---

## Additional examples for the filter

### SI base units

$\pu{A}$, $\pu{cd}$, $\pu{K}$, $\pu{kg}$, $\pu{m}$, $\pu{mol}$, $\pu{s}$

### and derived units

$\pu{Bq}$, $\pu{°C}$, $\pu{C}$, $\pu{F}$, $\pu{Gy}$, $\pu{Hz}$, $\pu{H}$, $\pu{J}$, $\pu{lm}$, $\pu{kat}$, $\pu{lx}$, $\pu{N}$, $\pu{\Omega}$, $\pu{Pa}$, $\pu{rad}$, $\pu{S}$, $\pu{Sv}$, $\pu{sr}$, $\pu{T}$, $\pu{V}$, $\pu{W}$, $\pu{Wb}$

### Non-si units accepted for use with the International System of Units
$\pu{au}$, $\pu{B}$, $\pu{Da}$, $\pu{d}$, $\pu{dB}$, $\pu{°}$, $\pu{eV}$, $\pu{ha}$, $\pu{h}$, $\pu{L}$, $\pu{'}$, $\pu{''}$, $\pu{min}$, $\pu{Np}$, $\pu{t}$

### SI prefixes
For simplicity all examples use the same base unit. I'm using $\pu{m}$ as this is the most difficult to replace 

  - **quecto**: `$\pu{123 qm}$` $\pu{123 qm}$
  - **ronto**: `$\pu{123 rm}$` $\pu{123 rm}$
  - **yocto**: `$\pu{123 ym}$` $\pu{123 ym}$
  - **zepto**: `$\pu{123 zm}$` $\pu{123 zm}$
  - **atto**: `$\pu{123 am}$` $\pu{123 am}$
  - **femto**: `$\pu{123 fm}$` $\pu{123 fm}$
  - **pico**: `$\pu{123 pm}$` $\pu{123 pm}$
  - **nano**: `$\pu{123 nm}$` $\pu{123 nm}$
  - **micro**: `$\pu{123 \mu m}$` $\pu{123 \mu m}$
  - **milli**: `$\pu{123 mm}$` $\pu{123 mm}$
  - **centi**: `$\pu{123 cm}$` $\pu{123 cm}$
  - **deci**: `$\pu{123 dm}$` $\pu{123 dm}$
  - **deca**: `$\pu{123 dam}$` $\pu{123 dam}$
  - **hecto**: `$\pu{123 hm}$` $\pu{123 hm}$
  - **kilo**: `$\pu{123 km}$` $\pu{123 km}$
  - **mega**: `$\pu{123 Mm}$` $\pu{123 Mm}$
  - **giga**: `$\pu{123 Gm}$` $\pu{123 Gm}$
  - **tera**: `$\pu{123 Tm}$` $\pu{123 Tm}$
  - **peta**: `$\pu{123 Pm}$` $\pu{123 Pm}$
  - **exa**: `$\pu{123 Em}$` $\pu{123 Em}$
  - **zetta**: `$\pu{123 Zm}$` $\pu{123 Zm}$
  - **yotta**: `$\pu{123 Ym}$` $\pu{123 Ym}$
  - **ronna**: `$\pu{123 Rm}$` $\pu{123 Rm}$
  - **quetta**: `$\pu{123 Qm}$` $\pu{123 Qm}$