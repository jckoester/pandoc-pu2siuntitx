# pu2siunitx

`\pu{}` is a macro provided by the [mhchem](https://ctan.org/pkg/mhchem) package for MathJaxto typeset physical units. This macro is not part of the LaTeX version of mhchem. In LaTeX [siunitx](https://ctan.org/pkg/siunitx) is a widely-used LaTeX package for typesettings values with units. However it is not part of MathJax.

> [!WARNING]
> This filter is currently in beta state. It is not yet properly tested!

## What this filter does
This filter replaces any `\pu{}` elements in RawInline, RawBlock, and Math elements, with `\qty{}`or `\unit{}` elements wrapped in Math elements  that can be used in LaTeX files.
The filter tries to replace unit symbols with their respective shortcode from siunitx.

## What this filter does not do
Both mhchem's pu and siunitx offer a lor of option to change the rendering of the unit. Siunitx offers global options as well es per formula options, eg. for fractions.
This filter does not set any of these options, you'll have to do that in your (LaTeX) template file.
Other document formats are currently not supported.

## Usage

To convert a LaTeX document containing mhchem `pu{}` macros to latex, do
```
pandoc -f latex+raw_tex -L mhchem.lua -t latex input.tex -o output.tex
```

