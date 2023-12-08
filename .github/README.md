# Attack Simulation

Detect malicious functionalities in the contract's bytecode through black box fuzzing.

## Report

### Exports

The current version of the report is available in PDF in the [report subfolder](../report).

It has 3 different variants based on the theme: dark / Forta / light.

The figures are also exported separately in the [figures subfolder](../figures).

### Compiling with LaTeX

From the root directory of the repository:

```shell
cd sources/
lualatex --output-directory ../report/ dark.tex
lualatex --output-directory ../figures/ figures/light.tex
```

The report can be built with `pdflatex`, `xetex` or `lualatex`.

The Forta theme requires either `xetex` or `lualatex` since it is using specific fonts.

## Attack Samples

Data from the latest attacks has been gathered to study, in ``.
