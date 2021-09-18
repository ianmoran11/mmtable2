# shell.nix
{ pkgs ? import <nixpkgs> { } }:
with pkgs;
let
  my-r-pkgs = rWrapper.override {
    packages = with rPackages; [
      ggplot2
      tidyverse
      tidybayes
      gt
      broom
      tidygraph
      usethis
      ggraph
      devtools
      patchwork
      rmarkdown
      dplyr
      tidyr
      purrr
      gt
      magrittr
      broom
      tibble
      stringr
      htmltools
      xml2
      rlang
      forcats
      zoo
      webshot
      covr
      testthat
      knitr
      rmarkdown
      testthat
      webshot
      gapminder
      covr
      languageserver
      knitr
      rmarkdown
      margins
      tidyverse
      titanic
      RColorBrewer
      renv
      colorspace
      scales
      ## textshaping
      ## pkgdown
    ];
  };
in mkShell {
  buildInputs = with pkgs; [
    pandoc
    vscodium
    git
    glibcLocales
    openssl
    which
    openssh
    curl
    wget
    harfbuzz
    haskellPackages.freetype2
    fribidi
  ];
  inputsFrom = [ my-r-pkgs ];
  shellHook = ''
    mkdir -p "$(pwd)/_libs"
    export R_LIBS_USER="$(pwd)/_libs"
  '';
  GIT_SSL_CAINFO = "${cacert}/etc/ssl/certs/ca-bundle.crt";
#  LOCALE_ARCHIVE = stdenv.lib.optionalString stdenv.isLinux
#    "${glibcLocales}/lib/locale/locale-archive";
}

