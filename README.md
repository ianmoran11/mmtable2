
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mmtable2 <a> <img src='man/figures/logo.png' align="right" height="131.5" /></a>

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/ianmoran11/mmtable2/branch/master/graph/badge.svg)](https://codecov.io/gh/ianmoran11/mmtable2?branch=master)
[![R-CMD-check](https://github.com/ianmoran11/mmtable2/workflows/R-CMD-check/badge.svg)](https://github.com/ianmoran11/mmtable2/actions)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

mmtable2 allows you to create and combine tables with a
ggplot2/patchwork syntax.

## Installation

mmtable2 is not available on CRAN. It can be installed from github with
the following script:

``` r
devtools::install_github("ianmoran11/mmtable2")
```

## Example

``` r
library(tidyverse)
library(gapminder)
library(webshot)
library(gt)
library(mmtable2)
```

Here’s a GIF demonstrating how to use mmtable2:
<img src="https://unpivotr.s3.amazonaws.com/01_intro_fast.gif" width="800px" />

And here’s the code used in the GIF.

``` r
row_list <- cells_body(rows = c(1,3,5,7,9,11))
style_list <- list(cell_borders(sides = "top",color = "grey"))
gm_df <- gapminder_mm %>% filter(var != "Life expectancy")

gm_table <- 
 gm_df %>% 
  mmtable(table_data = value) +
  header_top(year) +
  header_left(country) +
  header_top_left(var)  +
  header_left_top(continent)  +
  table_format(
    locations = row_list,
    style = style_list)

gm_table %>% print()
```

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#hiwhhmseat .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#hiwhhmseat .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#hiwhhmseat .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#hiwhhmseat .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#hiwhhmseat .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#hiwhhmseat .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#hiwhhmseat .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#hiwhhmseat .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#hiwhhmseat .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#hiwhhmseat .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#hiwhhmseat .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#hiwhhmseat .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#hiwhhmseat .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#hiwhhmseat .gt_from_md > :first-child {
  margin-top: 0;
}

#hiwhhmseat .gt_from_md > :last-child {
  margin-bottom: 0;
}

#hiwhhmseat .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#hiwhhmseat .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#hiwhhmseat .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#hiwhhmseat .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#hiwhhmseat .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#hiwhhmseat .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#hiwhhmseat .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#hiwhhmseat .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#hiwhhmseat .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#hiwhhmseat .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#hiwhhmseat .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#hiwhhmseat .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#hiwhhmseat .gt_left {
  text-align: left;
}

#hiwhhmseat .gt_center {
  text-align: center;
}

#hiwhhmseat .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#hiwhhmseat .gt_font_normal {
  font-weight: normal;
}

#hiwhhmseat .gt_font_bold {
  font-weight: bold;
}

#hiwhhmseat .gt_font_italic {
  font-style: italic;
}

#hiwhhmseat .gt_super {
  font-size: 65%;
}

#hiwhhmseat .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="hiwhhmseat" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">GDP</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Population</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2007</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2007</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Africa</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Botswana</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">8.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">8.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">11.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">12.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Gabon</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">13.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">14.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">12.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">13.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.5</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Americas</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Canada</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">26.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">29.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">33.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">36.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">28.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">30.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">31.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">33.4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">United States</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">32.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">35.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">39.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">43.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">256.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">272.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">287.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">301.1</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Asia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Kuwait</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">40.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">35.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">47.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">2.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">2.5</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Singapore</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">24.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">33.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">36.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Europe</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Ireland</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">17.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">24.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">40.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">4.1</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Norway</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">34.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">41.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">44.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">49.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Oceania</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Australia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">23.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">27.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">30.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">17.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">18.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">19.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">20.4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">New Zealand</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">18.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">21.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">23.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">25.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.1</td>
    </tr>
  </tbody>
  
  
</table></div>

## Adding headers

You can add headers using data from a column in your data frame.

It’s placement will depend on your your choice of header\_\* functions.

Header options include: top, top\_left, left, and left\_top.

Here’s a table of the same data used above, this time with a different
header layout.

``` r
row_list <- cells_body(rows = c(3,7))
col_list <- cells_body(columns = c(3,5,7,9,11))
style_list <- list(cell_borders(sides = "top",color = "grey"))
style_list2<- list(cell_borders(sides = "left",color = "grey"))
gm_df <- gapminder_mm %>% filter(var != "Life expectancy")
style_list3 = list(cell_text(align = "left"))

gm_table <- 
 gm_df %>% 
  mmtable(table_data = value) +
  header_left(year) +
  header_top(country) +
  header_left_top(var)  +
  header_top_left(continent)  +
  table_format(
    locations = row_list,
    style = style_list) +
  header_format(continent,style_list3 )

gm_table %>% print()
```

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#eizjxxxroi .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#eizjxxxroi .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#eizjxxxroi .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#eizjxxxroi .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#eizjxxxroi .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eizjxxxroi .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#eizjxxxroi .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#eizjxxxroi .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#eizjxxxroi .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#eizjxxxroi .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#eizjxxxroi .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#eizjxxxroi .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#eizjxxxroi .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#eizjxxxroi .gt_from_md > :first-child {
  margin-top: 0;
}

#eizjxxxroi .gt_from_md > :last-child {
  margin-bottom: 0;
}

#eizjxxxroi .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#eizjxxxroi .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#eizjxxxroi .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#eizjxxxroi .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#eizjxxxroi .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#eizjxxxroi .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#eizjxxxroi .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#eizjxxxroi .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eizjxxxroi .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#eizjxxxroi .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#eizjxxxroi .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#eizjxxxroi .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#eizjxxxroi .gt_left {
  text-align: left;
}

#eizjxxxroi .gt_center {
  text-align: center;
}

#eizjxxxroi .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#eizjxxxroi .gt_font_normal {
  font-weight: normal;
}

#eizjxxxroi .gt_font_bold {
  font-weight: bold;
}

#eizjxxxroi .gt_font_italic {
  font-style: italic;
}

#eizjxxxroi .gt_super {
  font-size: 65%;
}

#eizjxxxroi .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="eizjxxxroi" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: left; font-weight: bold;">Africa</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: left; font-weight: bold;">Americas</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: left; font-weight: bold;">Asia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: left; font-weight: bold;">Europe</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: left; font-weight: bold;">Oceania</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Botswana</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Gabon</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Canada</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">United States</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Kuwait</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Singapore</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Ireland</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Norway</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Australia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">New Zealand</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">GDP</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">8.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">13.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">26.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">32.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">24.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">17.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">23.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">18.4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">8.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">14.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">29.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">35.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">40.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">33.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">24.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">41.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">27.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">21.1</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">11.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">12.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">33.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">39.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">35.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">36.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">34.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">44.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">30.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">23.2</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">2007</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">12.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">13.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">36.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">43.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">40.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">49.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">34.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">25.2</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Population</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">28.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">256.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">4.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">17.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">30.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">272.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">18.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.7</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">31.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">287.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">2.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">19.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.9</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">2007</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">33.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">301.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">2.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">20.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.1</td>
    </tr>
  </tbody>
  
  
</table></div>

## Combining tables

You can combine tables with `+`, `/` and `*` operators.

The `+` operator places tables side-by-side (sharing headers)

``` r
ex1 <- t1 + t2
ex1 %>% print()
```

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ivdhqjwvtq .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ivdhqjwvtq .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ivdhqjwvtq .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ivdhqjwvtq .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ivdhqjwvtq .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ivdhqjwvtq .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ivdhqjwvtq .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ivdhqjwvtq .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ivdhqjwvtq .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ivdhqjwvtq .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ivdhqjwvtq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ivdhqjwvtq .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#ivdhqjwvtq .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ivdhqjwvtq .gt_from_md > :first-child {
  margin-top: 0;
}

#ivdhqjwvtq .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ivdhqjwvtq .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ivdhqjwvtq .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#ivdhqjwvtq .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ivdhqjwvtq .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#ivdhqjwvtq .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ivdhqjwvtq .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ivdhqjwvtq .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ivdhqjwvtq .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ivdhqjwvtq .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ivdhqjwvtq .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#ivdhqjwvtq .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ivdhqjwvtq .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#ivdhqjwvtq .gt_left {
  text-align: left;
}

#ivdhqjwvtq .gt_center {
  text-align: center;
}

#ivdhqjwvtq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ivdhqjwvtq .gt_font_normal {
  font-weight: normal;
}

#ivdhqjwvtq .gt_font_bold {
  font-weight: bold;
}

#ivdhqjwvtq .gt_font_italic {
  font-style: italic;
}

#ivdhqjwvtq .gt_super {
  font-size: 65%;
}

#ivdhqjwvtq .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="ivdhqjwvtq" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Table 1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Table 2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">GDP</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Population</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2007</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2007</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Asia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Kuwait</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">34.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">40.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">35.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">2.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">2.5</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Singapore</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">24.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">33.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">36.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.6</td>
    </tr>
  </tbody>
  
  
</table></div>

The `/` operator places tables on top of one another (sharing headers)

``` r
ex2 <- t1 / t3
ex2 %>% print()
```

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#mbncbcunpm .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#mbncbcunpm .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#mbncbcunpm .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#mbncbcunpm .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#mbncbcunpm .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#mbncbcunpm .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#mbncbcunpm .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#mbncbcunpm .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#mbncbcunpm .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#mbncbcunpm .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#mbncbcunpm .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#mbncbcunpm .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#mbncbcunpm .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#mbncbcunpm .gt_from_md > :first-child {
  margin-top: 0;
}

#mbncbcunpm .gt_from_md > :last-child {
  margin-bottom: 0;
}

#mbncbcunpm .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#mbncbcunpm .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#mbncbcunpm .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#mbncbcunpm .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#mbncbcunpm .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#mbncbcunpm .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#mbncbcunpm .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#mbncbcunpm .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#mbncbcunpm .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#mbncbcunpm .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#mbncbcunpm .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#mbncbcunpm .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#mbncbcunpm .gt_left {
  text-align: left;
}

#mbncbcunpm .gt_center {
  text-align: center;
}

#mbncbcunpm .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#mbncbcunpm .gt_font_normal {
  font-weight: normal;
}

#mbncbcunpm .gt_font_bold {
  font-weight: bold;
}

#mbncbcunpm .gt_font_italic {
  font-style: italic;
}

#mbncbcunpm .gt_super {
  font-size: 65%;
}

#mbncbcunpm .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="mbncbcunpm" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">GDP</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2007</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Table 1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Asia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Kuwait</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">34.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">40.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">35.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.3</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Singapore</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">24.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">33.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">36.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.1</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Table 3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Oceania</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Australia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">23.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">27.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">30.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">34.4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">New Zealand</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">18.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">21.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">23.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">25.2</td>
    </tr>
  </tbody>
  
  
</table></div>

The `*` operator “integrates” tables

``` r
ex3 <- t1 * t3 * t4 *  t2
ex3 %>% print()
```

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#gjdquyfnyz .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#gjdquyfnyz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#gjdquyfnyz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#gjdquyfnyz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#gjdquyfnyz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gjdquyfnyz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#gjdquyfnyz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#gjdquyfnyz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#gjdquyfnyz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#gjdquyfnyz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#gjdquyfnyz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#gjdquyfnyz .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#gjdquyfnyz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#gjdquyfnyz .gt_from_md > :first-child {
  margin-top: 0;
}

#gjdquyfnyz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#gjdquyfnyz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#gjdquyfnyz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#gjdquyfnyz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#gjdquyfnyz .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#gjdquyfnyz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#gjdquyfnyz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#gjdquyfnyz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#gjdquyfnyz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gjdquyfnyz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#gjdquyfnyz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#gjdquyfnyz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#gjdquyfnyz .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#gjdquyfnyz .gt_left {
  text-align: left;
}

#gjdquyfnyz .gt_center {
  text-align: center;
}

#gjdquyfnyz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#gjdquyfnyz .gt_font_normal {
  font-weight: normal;
}

#gjdquyfnyz .gt_font_bold {
  font-weight: bold;
}

#gjdquyfnyz .gt_font_italic {
  font-style: italic;
}

#gjdquyfnyz .gt_super {
  font-size: 65%;
}

#gjdquyfnyz .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="gjdquyfnyz" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">GDP</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">Population</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2007</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">2007</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Asia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Kuwait</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">34.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">40.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">35.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">2.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">2.5</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Singapore</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">24.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">33.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">36.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Oceania</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">Australia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">23.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">27.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">30.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">34.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">17.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">18.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">19.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">20.4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">New Zealand</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">18.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">21.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">23.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">25.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.1</td>
    </tr>
  </tbody>
  
  
</table></div>

## Formatting tables

mmtable2 outputs tables using the gt package’s format.

This means you can alter formatting using many existing gt styling
commands.

``` r
gm_table_formatted <- 
gapminder_mm %>% 
  filter(var != "Life expectancy") %>% 
  mmtable(table_data = value) +
  header_top(year) +
  header_left(country) +
  header_top_left(var)  +
  header_left_top(continent)  +
  cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) +
  header_format(header = year, style = list(cell_text(align = "right"))) +
  header_format("all_cols", style = list(cell_text(weight = "bolder"))) +
  header_format("all_rows", style = list(cell_text(weight = "bolder"))) +
  table_format(
    locations = cells_body(rows = c(1,3,5,7,9,11)),
    style = list(cell_borders(sides = "top",color = "grey"))) + 
  table_source_note(source_note = "Excerpt of the Gapminder data on life expectancy, GDP per capita, and population by country." )

gm_table_formatted %>% print()
```

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#eszsedmxjw .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#eszsedmxjw .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#eszsedmxjw .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#eszsedmxjw .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#eszsedmxjw .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eszsedmxjw .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#eszsedmxjw .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#eszsedmxjw .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#eszsedmxjw .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#eszsedmxjw .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#eszsedmxjw .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#eszsedmxjw .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#eszsedmxjw .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#eszsedmxjw .gt_from_md > :first-child {
  margin-top: 0;
}

#eszsedmxjw .gt_from_md > :last-child {
  margin-bottom: 0;
}

#eszsedmxjw .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#eszsedmxjw .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#eszsedmxjw .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#eszsedmxjw .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#eszsedmxjw .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#eszsedmxjw .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#eszsedmxjw .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#eszsedmxjw .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eszsedmxjw .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#eszsedmxjw .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#eszsedmxjw .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#eszsedmxjw .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#eszsedmxjw .gt_left {
  text-align: left;
}

#eszsedmxjw .gt_center {
  text-align: center;
}

#eszsedmxjw .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#eszsedmxjw .gt_font_normal {
  font-weight: normal;
}

#eszsedmxjw .gt_font_bold {
  font-weight: bold;
}

#eszsedmxjw .gt_font_italic {
  font-style: italic;
}

#eszsedmxjw .gt_super {
  font-size: 65%;
}

#eszsedmxjw .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="eszsedmxjw" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">GDP</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Population</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">2007</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">2007</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Africa</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Botswana</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">8.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">8.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">11.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">12.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">Gabon</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">13.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">14.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">12.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">13.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.5</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Americas</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Canada</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">26.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">29.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">33.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">36.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">28.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">30.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">31.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">33.4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">United States</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">32.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">35.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">39.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">43.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">256.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">272.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">287.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">301.1</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Asia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Kuwait</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">40.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">35.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">47.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">2.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">2.5</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">Singapore</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">24.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">33.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">36.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Europe</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Ireland</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">17.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">24.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">40.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">4.1</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">Norway</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">34.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">41.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">44.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">49.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Oceania</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Australia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">23.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">27.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">30.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">17.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">18.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">19.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">20.4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">New Zealand</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">18.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">21.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">23.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">25.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.1</td>
    </tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="10">Excerpt of the Gapminder data on life expectancy, GDP per capita, and population by country.</td>
    </tr>
  </tfoot>
  
</table></div>

### Merged header columns

Table headers can be merged with `header_merged_cols()`. This supports
an aributrary number of column headers.

``` r
row_list <- cells_body(rows = c(3,7))
col_list <- cells_body(columns = c(3,5,7,9,11))
style_list <- list(cell_borders(sides = "top",color = "grey"))
style_list2<- list(cell_borders(sides = "left",color = "grey"))
gm_df <- gapminder_mm %>% filter(var != "Life expectancy")
style_list3 = list(cell_text(align = "left"))

gm_table_merged <- 
 gm_df %>% 
  mmtable(table_data = value) +
  header_left(year) +
  header_top(country) +
  header_left_top(var)  +
  header_top_left(continent)  +
  table_format(
    locations = row_list,
    style = style_list) +
  header_format(continent,style_list3 ) +
  header_merged_cols()

gm_table_merged %>% print()
```

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#wwmbbyrdud .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#wwmbbyrdud .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#wwmbbyrdud .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#wwmbbyrdud .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#wwmbbyrdud .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wwmbbyrdud .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#wwmbbyrdud .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#wwmbbyrdud .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#wwmbbyrdud .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#wwmbbyrdud .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#wwmbbyrdud .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#wwmbbyrdud .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#wwmbbyrdud .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#wwmbbyrdud .gt_from_md > :first-child {
  margin-top: 0;
}

#wwmbbyrdud .gt_from_md > :last-child {
  margin-bottom: 0;
}

#wwmbbyrdud .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#wwmbbyrdud .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#wwmbbyrdud .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wwmbbyrdud .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#wwmbbyrdud .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wwmbbyrdud .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#wwmbbyrdud .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#wwmbbyrdud .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wwmbbyrdud .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#wwmbbyrdud .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#wwmbbyrdud .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#wwmbbyrdud .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#wwmbbyrdud .gt_left {
  text-align: left;
}

#wwmbbyrdud .gt_center {
  text-align: center;
}

#wwmbbyrdud .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#wwmbbyrdud .gt_font_normal {
  font-weight: normal;
}

#wwmbbyrdud .gt_font_bold {
  font-weight: bold;
}

#wwmbbyrdud .gt_font_italic {
  font-style: italic;
}

#wwmbbyrdud .gt_super {
  font-size: 65%;
}

#wwmbbyrdud .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
</head>
<body><div id="wwmbbyrdud" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
<thead class="gt_col_headings">
<html><body><tr>
<th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-size: 12px; text-align: left; font-weight: bold;">
        <span class="gt_column_spanner">&nbsp;</span>
      </th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-size: 12px; text-align: left; font-weight: bold;">
        <span class="gt_column_spanner">Africa</span>
      </th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-size: 12px; text-align: left; font-weight: bold;">
        <span class="gt_column_spanner">Americas</span>
      </th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-size: 12px; text-align: left; font-weight: bold;">
        <span class="gt_column_spanner">Asia</span>
      </th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-size: 12px; text-align: left; font-weight: bold;">
        <span class="gt_column_spanner">Europe</span>
      </th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-size: 12px; text-align: left; font-weight: bold;">
        <span class="gt_column_spanner">Oceania</span>
      </th>
    </tr></body></html>
<tr>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">Botswana</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">Gabon</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">Canada</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">United States</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">Kuwait</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">Singapore</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">Ireland</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">Norway</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">Australia</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">New Zealand</th>
    </tr>
</thead>
<tbody class="gt_table_body">
<tr>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">GDP</td>
      <td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">1992</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">8.0</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">13.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">26.3</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">32.0</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">34.9</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">24.8</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">17.6</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">34.0</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">23.4</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">18.4</td>
    </tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">8.6</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">14.7</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">29.0</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">35.8</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">40.3</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">33.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">24.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">41.3</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">27.0</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">21.1</td>
    </tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">2002</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">11.0</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">12.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">33.3</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">39.1</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">35.1</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">36.0</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.1</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">44.7</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">30.7</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">23.2</td>
    </tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">2007</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">12.6</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">13.2</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">36.3</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">43.0</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">47.3</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">47.1</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">40.7</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">49.4</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">34.4</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">25.2</td>
    </tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">Population</td>
      <td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">1992</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">1.3</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">1.0</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">28.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">256.9</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">1.4</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">3.2</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">3.6</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">4.3</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">17.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">3.4</td>
    </tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">1997</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">1.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">1.1</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">30.3</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">272.9</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">1.8</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">3.8</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">3.7</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">4.4</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">18.6</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">3.7</td>
    </tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">2002</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.6</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.3</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">31.9</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">287.7</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">2.1</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">4.2</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.9</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">4.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">19.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.9</td>
    </tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">2007</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">1.6</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">1.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">33.4</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">301.1</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">2.5</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">4.6</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">4.1</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">4.6</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">20.4</td>
      <td class="gt_row gt_left" style="font-size: 12px; text-align: right;">4.1</td>
    </tr>
</tbody>
</table></div></body>
</html>

### Alternative pipe syntax

Adding the `add_` prefix to functions allows use of `%>%` in place of
`+`.

``` r
gm_table_piped <- 
gapminder_mm %>% 
  filter(var != "Life expectancy") %>% 
  mmtable(table_data = value, use_defaul_formats = T) %>% 
  add_header_top(year) %>% 
  add_header_left(country) %>% 
  add_header_top_left(var)  %>% 
  add_header_left_top(continent)  %>% 
  add_cells_format(cell_predicate = T, style = list(cell_text(align = "right"))) %>% 
  add_header_format(header = year, style = list(cell_text(align = "right"))) %>% 
  add_header_format("all_cols", style = list(cell_text(weight = "bolder"))) %>% 
  add_header_format("all_rows", style = list(cell_text(weight = "bolder"))) %>% 
  add_table_format(
    locations = cells_body(rows = c(1,3,5,7,9,11)),
    style = list(cell_borders(sides = "top",color = "grey"))) %>% 
  add_table_source_note(source_note = "Excerpt of the Gapminder data on life expectancy, GDP per capita, and population by country." )

gm_table_piped %>% print()
```

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#pmkgaeuohh .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#pmkgaeuohh .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#pmkgaeuohh .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#pmkgaeuohh .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#pmkgaeuohh .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#pmkgaeuohh .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#pmkgaeuohh .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#pmkgaeuohh .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#pmkgaeuohh .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#pmkgaeuohh .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#pmkgaeuohh .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#pmkgaeuohh .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#pmkgaeuohh .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#pmkgaeuohh .gt_from_md > :first-child {
  margin-top: 0;
}

#pmkgaeuohh .gt_from_md > :last-child {
  margin-bottom: 0;
}

#pmkgaeuohh .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#pmkgaeuohh .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#pmkgaeuohh .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#pmkgaeuohh .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#pmkgaeuohh .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#pmkgaeuohh .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#pmkgaeuohh .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#pmkgaeuohh .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#pmkgaeuohh .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#pmkgaeuohh .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#pmkgaeuohh .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#pmkgaeuohh .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#pmkgaeuohh .gt_left {
  text-align: left;
}

#pmkgaeuohh .gt_center {
  text-align: center;
}

#pmkgaeuohh .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#pmkgaeuohh .gt_font_normal {
  font-weight: normal;
}

#pmkgaeuohh .gt_font_bold {
  font-weight: bold;
}

#pmkgaeuohh .gt_font_italic {
  font-style: italic;
}

#pmkgaeuohh .gt_super {
  font-size: 65%;
}

#pmkgaeuohh .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="pmkgaeuohh" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">GDP</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Population</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;"> </td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"></td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">2007</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">1992</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">1997</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">2002</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">2007</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Africa</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Botswana</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">8.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">8.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">11.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">12.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">Gabon</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">13.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">14.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">12.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">13.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">1.5</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Americas</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Canada</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">26.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">29.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">33.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">36.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">28.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">30.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">31.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">33.4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">United States</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">32.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">35.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">39.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">43.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">256.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">272.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">287.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">301.1</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Asia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Kuwait</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">40.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">35.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">47.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">1.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">2.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">2.5</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">Singapore</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">24.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">33.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">36.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">47.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.8</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Europe</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Ireland</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">17.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">24.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">40.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">3.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">4.1</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">Norway</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">34.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">41.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">44.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">49.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.3</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Oceania</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">Australia</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">23.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">27.0</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">30.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">34.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">17.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">18.6</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">19.5</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">20.4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;"> </td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">New Zealand</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">18.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">21.1</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">23.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">25.2</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.4</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.7</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">3.9</td>
      <td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">4.1</td>
    </tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="10">Excerpt of the Gapminder data on life expectancy, GDP per capita, and population by country.</td>
    </tr>
  </tfoot>
  
</table></div>
