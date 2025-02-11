# Athena Typst theme

This is a theme inspired by the TUGraz Metropolis LaTeX theme, with some added nice features.

The flake provides a Dev-Shell and includes required fonts.
The theme is not Nix-packaged yet, because in their great wisdom, Typst devs decided to look in `$XDG_DATA_HOME` for packages instead of `$XDG_DATA_DIRS`


## Installation as local package

Install with

```sh
git clone https://github.com/h4ckd0tm3/athena-typst-theme.git ~/.local/share/typst/packages/local/athena-typst-theme/1.0.0
```

Init project with template

```sh
typst init @local/athena-typst-theme:1.0.0
```