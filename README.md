
<!-- README.md is generated from README.Rmd. Please edit that file -->
# mmtable2 <a> <img src='man/figures/logo.png' align="right" height="131.5" /></a>

<!-- badges: start -->
[![Codecov test coverage](https://codecov.io/gh/ianmoran11/mmtable2/branch/master/graph/badge.svg)](https://codecov.io/gh/ianmoran11/mmtable2?branch=master) [![R-CMD-check](https://github.com/ianmoran11/mmtable2/workflows/R-CMD-check/badge.svg)](https://github.com/ianmoran11/mmtable2/actions) [![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental) <!-- badges: end -->

mmtable2 allows you to create and combine tables with a ggplot2/patchwork syntax.

## Installation

mmtable2 is not available on CRAN. It can be installed from github with the following script:

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

Here's a GIF demonstrating how to use mmtable2: <img src="https://unpivotr.s3.amazonaws.com/01_intro_fast.gif" width="800px" />

And here's the code used in the GIF.

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

gm_table 
```

<style>html {
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}
#nivkiletet .gt_table {
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
#nivkiletet .gt_heading {
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
#nivkiletet .gt_title {
color: #333333;
font-size: 125%;
font-weight: initial;
padding-top: 4px;
padding-bottom: 4px;
border-bottom-color: #FFFFFF;
border-bottom-width: 0;
}
#nivkiletet .gt_subtitle {
color: #333333;
font-size: 85%;
font-weight: initial;
padding-top: 0;
padding-bottom: 4px;
border-top-color: #FFFFFF;
border-top-width: 0;
}
#nivkiletet .gt_bottom_border {
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#nivkiletet .gt_col_headings {
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
#nivkiletet .gt_col_heading {
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
#nivkiletet .gt_column_spanner_outer {
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
#nivkiletet .gt_column_spanner_outer:first-child {
padding-left: 0;
}
#nivkiletet .gt_column_spanner_outer:last-child {
padding-right: 0;
}
#nivkiletet .gt_column_spanner {
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
#nivkiletet .gt_group_heading {
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
#nivkiletet .gt_empty_group_heading {
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
#nivkiletet .gt_from_md > :first-child {
margin-top: 0;
}
#nivkiletet .gt_from_md > :last-child {
margin-bottom: 0;
}
#nivkiletet .gt_row {
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
#nivkiletet .gt_stub {
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
#nivkiletet .gt_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#nivkiletet .gt_first_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
}
#nivkiletet .gt_grand_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#nivkiletet .gt_first_grand_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: double;
border-top-width: 6px;
border-top-color: #D3D3D3;
}
#nivkiletet .gt_striped {
background-color: rgba(128, 128, 128, 0.05);
}
#nivkiletet .gt_table_body {
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#nivkiletet .gt_footnotes {
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
#nivkiletet .gt_footnote {
margin: 0px;
font-size: 90%;
padding: 4px;
}
#nivkiletet .gt_sourcenotes {
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
#nivkiletet .gt_sourcenote {
font-size: 90%;
padding: 4px;
}
#nivkiletet .gt_left {
text-align: left;
}
#nivkiletet .gt_center {
text-align: center;
}
#nivkiletet .gt_right {
text-align: right;
font-variant-numeric: tabular-nums;
}
#nivkiletet .gt_font_normal {
font-weight: normal;
}
#nivkiletet .gt_font_bold {
font-weight: bold;
}
#nivkiletet .gt_font_italic {
font-style: italic;
}
#nivkiletet .gt_super {
font-size: 65%;
}
#nivkiletet .gt_footnote_marks {
font-style: italic;
font-weight: normal;
font-size: 65%;
}
</style>
<table class="gt_table">
<tbody class="gt_table_body">
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
GDP
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Population
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2007
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2007
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Africa
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Botswana
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
8.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
8.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
11.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
12.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.6
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Gabon
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
13.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
14.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
12.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
13.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.5
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Americas
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Canada
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
26.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
29.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
33.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
36.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
28.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
30.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
31.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
33.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
United States
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
32.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
35.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
39.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
43.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
256.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
272.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
287.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
301.1
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Asia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Kuwait
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
40.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
35.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
47.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
2.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
2.5
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Singapore
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
24.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
33.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
36.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.6
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Europe
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Ireland
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
17.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
24.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
40.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
4.1
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Norway
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
34.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
41.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
44.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
49.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.6
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Oceania
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Australia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
23.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
27.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
30.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
17.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
18.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
19.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
20.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
New Zealand
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
18.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
21.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
23.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
25.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.1
</td>
</tr>
</tbody>
</table>

## Adding headers

You can add headers using data from a column in your data frame.

It's placement will depend on your your choice of header\_\* functions.

Header options include: top, top\_left, left, and left\_top.

Here's a table of the same data used above, this time with a different header layout.

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

gm_table 
```

<style>html {
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}
#hgcgcsvyxp .gt_table {
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
#hgcgcsvyxp .gt_heading {
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
#hgcgcsvyxp .gt_title {
color: #333333;
font-size: 125%;
font-weight: initial;
padding-top: 4px;
padding-bottom: 4px;
border-bottom-color: #FFFFFF;
border-bottom-width: 0;
}
#hgcgcsvyxp .gt_subtitle {
color: #333333;
font-size: 85%;
font-weight: initial;
padding-top: 0;
padding-bottom: 4px;
border-top-color: #FFFFFF;
border-top-width: 0;
}
#hgcgcsvyxp .gt_bottom_border {
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#hgcgcsvyxp .gt_col_headings {
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
#hgcgcsvyxp .gt_col_heading {
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
#hgcgcsvyxp .gt_column_spanner_outer {
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
#hgcgcsvyxp .gt_column_spanner_outer:first-child {
padding-left: 0;
}
#hgcgcsvyxp .gt_column_spanner_outer:last-child {
padding-right: 0;
}
#hgcgcsvyxp .gt_column_spanner {
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
#hgcgcsvyxp .gt_group_heading {
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
#hgcgcsvyxp .gt_empty_group_heading {
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
#hgcgcsvyxp .gt_from_md > :first-child {
margin-top: 0;
}
#hgcgcsvyxp .gt_from_md > :last-child {
margin-bottom: 0;
}
#hgcgcsvyxp .gt_row {
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
#hgcgcsvyxp .gt_stub {
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
#hgcgcsvyxp .gt_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#hgcgcsvyxp .gt_first_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
}
#hgcgcsvyxp .gt_grand_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#hgcgcsvyxp .gt_first_grand_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: double;
border-top-width: 6px;
border-top-color: #D3D3D3;
}
#hgcgcsvyxp .gt_striped {
background-color: rgba(128, 128, 128, 0.05);
}
#hgcgcsvyxp .gt_table_body {
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#hgcgcsvyxp .gt_footnotes {
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
#hgcgcsvyxp .gt_footnote {
margin: 0px;
font-size: 90%;
padding: 4px;
}
#hgcgcsvyxp .gt_sourcenotes {
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
#hgcgcsvyxp .gt_sourcenote {
font-size: 90%;
padding: 4px;
}
#hgcgcsvyxp .gt_left {
text-align: left;
}
#hgcgcsvyxp .gt_center {
text-align: center;
}
#hgcgcsvyxp .gt_right {
text-align: right;
font-variant-numeric: tabular-nums;
}
#hgcgcsvyxp .gt_font_normal {
font-weight: normal;
}
#hgcgcsvyxp .gt_font_bold {
font-weight: bold;
}
#hgcgcsvyxp .gt_font_italic {
font-style: italic;
}
#hgcgcsvyxp .gt_super {
font-size: 65%;
}
#hgcgcsvyxp .gt_footnote_marks {
font-style: italic;
font-weight: normal;
font-size: 65%;
}
</style>
<table class="gt_table">
<tbody class="gt_table_body">
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: left; font-weight: bold;">
Africa
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: left; font-weight: bold;">
Americas
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: left; font-weight: bold;">
Asia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: left; font-weight: bold;">
Europe
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: left; font-weight: bold;">
Oceania
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Botswana
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Gabon
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Canada
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
United States
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Kuwait
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Singapore
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Ireland
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Norway
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Australia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
New Zealand
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
GDP
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
8.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
13.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
26.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
32.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
24.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
17.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
23.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
18.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
8.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
14.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
29.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
35.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
40.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
33.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
24.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
41.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
27.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
21.1
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
11.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
12.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
33.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
39.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
35.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
36.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
34.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
44.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
30.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
23.2
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
2007
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
12.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
13.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
36.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
43.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
40.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
49.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
34.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
25.2
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Population
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
28.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
256.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
4.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
17.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
30.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
272.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
18.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.7
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
31.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
287.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
2.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
19.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.9
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
2007
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
33.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
301.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
2.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
20.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.1
</td>
</tr>
</tbody>
</table>

## Combining tables

You can combine tables with `+`, `/` and `*` operators.

The `+` operator places tables side-by-side (sharing headers)

``` r
ex1 <- t1 + t2
ex1 
```

<style>html {
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}
#sefhxprkri .gt_table {
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
#sefhxprkri .gt_heading {
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
#sefhxprkri .gt_title {
color: #333333;
font-size: 125%;
font-weight: initial;
padding-top: 4px;
padding-bottom: 4px;
border-bottom-color: #FFFFFF;
border-bottom-width: 0;
}
#sefhxprkri .gt_subtitle {
color: #333333;
font-size: 85%;
font-weight: initial;
padding-top: 0;
padding-bottom: 4px;
border-top-color: #FFFFFF;
border-top-width: 0;
}
#sefhxprkri .gt_bottom_border {
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#sefhxprkri .gt_col_headings {
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
#sefhxprkri .gt_col_heading {
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
#sefhxprkri .gt_column_spanner_outer {
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
#sefhxprkri .gt_column_spanner_outer:first-child {
padding-left: 0;
}
#sefhxprkri .gt_column_spanner_outer:last-child {
padding-right: 0;
}
#sefhxprkri .gt_column_spanner {
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
#sefhxprkri .gt_group_heading {
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
#sefhxprkri .gt_empty_group_heading {
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
#sefhxprkri .gt_from_md > :first-child {
margin-top: 0;
}
#sefhxprkri .gt_from_md > :last-child {
margin-bottom: 0;
}
#sefhxprkri .gt_row {
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
#sefhxprkri .gt_stub {
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
#sefhxprkri .gt_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#sefhxprkri .gt_first_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
}
#sefhxprkri .gt_grand_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#sefhxprkri .gt_first_grand_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: double;
border-top-width: 6px;
border-top-color: #D3D3D3;
}
#sefhxprkri .gt_striped {
background-color: rgba(128, 128, 128, 0.05);
}
#sefhxprkri .gt_table_body {
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#sefhxprkri .gt_footnotes {
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
#sefhxprkri .gt_footnote {
margin: 0px;
font-size: 90%;
padding: 4px;
}
#sefhxprkri .gt_sourcenotes {
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
#sefhxprkri .gt_sourcenote {
font-size: 90%;
padding: 4px;
}
#sefhxprkri .gt_left {
text-align: left;
}
#sefhxprkri .gt_center {
text-align: center;
}
#sefhxprkri .gt_right {
text-align: right;
font-variant-numeric: tabular-nums;
}
#sefhxprkri .gt_font_normal {
font-weight: normal;
}
#sefhxprkri .gt_font_bold {
font-weight: bold;
}
#sefhxprkri .gt_font_italic {
font-style: italic;
}
#sefhxprkri .gt_super {
font-size: 65%;
}
#sefhxprkri .gt_footnote_marks {
font-style: italic;
font-weight: normal;
font-size: 65%;
}
</style>
<table class="gt_table">
<tbody class="gt_table_body">
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Table 1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Table 2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
GDP
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Population
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2007
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2007
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Asia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Kuwait
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
34.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
40.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
35.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
2.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
2.5
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Singapore
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
24.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
33.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
36.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.6
</td>
</tr>
</tbody>
</table>

The `/` operator places tables on top of one another (sharing headers)

``` r
ex2 <- t1 / t3
ex2 
```

<style>html {
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}
#lpfhovlpty .gt_table {
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
#lpfhovlpty .gt_heading {
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
#lpfhovlpty .gt_title {
color: #333333;
font-size: 125%;
font-weight: initial;
padding-top: 4px;
padding-bottom: 4px;
border-bottom-color: #FFFFFF;
border-bottom-width: 0;
}
#lpfhovlpty .gt_subtitle {
color: #333333;
font-size: 85%;
font-weight: initial;
padding-top: 0;
padding-bottom: 4px;
border-top-color: #FFFFFF;
border-top-width: 0;
}
#lpfhovlpty .gt_bottom_border {
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#lpfhovlpty .gt_col_headings {
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
#lpfhovlpty .gt_col_heading {
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
#lpfhovlpty .gt_column_spanner_outer {
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
#lpfhovlpty .gt_column_spanner_outer:first-child {
padding-left: 0;
}
#lpfhovlpty .gt_column_spanner_outer:last-child {
padding-right: 0;
}
#lpfhovlpty .gt_column_spanner {
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
#lpfhovlpty .gt_group_heading {
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
#lpfhovlpty .gt_empty_group_heading {
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
#lpfhovlpty .gt_from_md > :first-child {
margin-top: 0;
}
#lpfhovlpty .gt_from_md > :last-child {
margin-bottom: 0;
}
#lpfhovlpty .gt_row {
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
#lpfhovlpty .gt_stub {
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
#lpfhovlpty .gt_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#lpfhovlpty .gt_first_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
}
#lpfhovlpty .gt_grand_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#lpfhovlpty .gt_first_grand_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: double;
border-top-width: 6px;
border-top-color: #D3D3D3;
}
#lpfhovlpty .gt_striped {
background-color: rgba(128, 128, 128, 0.05);
}
#lpfhovlpty .gt_table_body {
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#lpfhovlpty .gt_footnotes {
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
#lpfhovlpty .gt_footnote {
margin: 0px;
font-size: 90%;
padding: 4px;
}
#lpfhovlpty .gt_sourcenotes {
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
#lpfhovlpty .gt_sourcenote {
font-size: 90%;
padding: 4px;
}
#lpfhovlpty .gt_left {
text-align: left;
}
#lpfhovlpty .gt_center {
text-align: center;
}
#lpfhovlpty .gt_right {
text-align: right;
font-variant-numeric: tabular-nums;
}
#lpfhovlpty .gt_font_normal {
font-weight: normal;
}
#lpfhovlpty .gt_font_bold {
font-weight: bold;
}
#lpfhovlpty .gt_font_italic {
font-style: italic;
}
#lpfhovlpty .gt_super {
font-size: 65%;
}
#lpfhovlpty .gt_footnote_marks {
font-style: italic;
font-weight: normal;
font-size: 65%;
}
</style>
<table class="gt_table">
<tbody class="gt_table_body">
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
GDP
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2007
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Table 1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Asia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Kuwait
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
34.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
40.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
35.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.3
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Singapore
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
24.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
33.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
36.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.1
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Table 3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Oceania
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Australia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
23.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
27.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
30.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
34.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
New Zealand
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
18.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
21.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
23.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
25.2
</td>
</tr>
</tbody>
</table>

The `*` operator "integrates" tables

``` r
ex3 <- t1 * t3 * t4 *  t2
ex3 
```

<style>html {
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}
#jiyvikhgal .gt_table {
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
#jiyvikhgal .gt_heading {
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
#jiyvikhgal .gt_title {
color: #333333;
font-size: 125%;
font-weight: initial;
padding-top: 4px;
padding-bottom: 4px;
border-bottom-color: #FFFFFF;
border-bottom-width: 0;
}
#jiyvikhgal .gt_subtitle {
color: #333333;
font-size: 85%;
font-weight: initial;
padding-top: 0;
padding-bottom: 4px;
border-top-color: #FFFFFF;
border-top-width: 0;
}
#jiyvikhgal .gt_bottom_border {
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#jiyvikhgal .gt_col_headings {
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
#jiyvikhgal .gt_col_heading {
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
#jiyvikhgal .gt_column_spanner_outer {
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
#jiyvikhgal .gt_column_spanner_outer:first-child {
padding-left: 0;
}
#jiyvikhgal .gt_column_spanner_outer:last-child {
padding-right: 0;
}
#jiyvikhgal .gt_column_spanner {
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
#jiyvikhgal .gt_group_heading {
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
#jiyvikhgal .gt_empty_group_heading {
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
#jiyvikhgal .gt_from_md > :first-child {
margin-top: 0;
}
#jiyvikhgal .gt_from_md > :last-child {
margin-bottom: 0;
}
#jiyvikhgal .gt_row {
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
#jiyvikhgal .gt_stub {
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
#jiyvikhgal .gt_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#jiyvikhgal .gt_first_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
}
#jiyvikhgal .gt_grand_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#jiyvikhgal .gt_first_grand_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: double;
border-top-width: 6px;
border-top-color: #D3D3D3;
}
#jiyvikhgal .gt_striped {
background-color: rgba(128, 128, 128, 0.05);
}
#jiyvikhgal .gt_table_body {
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#jiyvikhgal .gt_footnotes {
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
#jiyvikhgal .gt_footnote {
margin: 0px;
font-size: 90%;
padding: 4px;
}
#jiyvikhgal .gt_sourcenotes {
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
#jiyvikhgal .gt_sourcenote {
font-size: 90%;
padding: 4px;
}
#jiyvikhgal .gt_left {
text-align: left;
}
#jiyvikhgal .gt_center {
text-align: center;
}
#jiyvikhgal .gt_right {
text-align: right;
font-variant-numeric: tabular-nums;
}
#jiyvikhgal .gt_font_normal {
font-weight: normal;
}
#jiyvikhgal .gt_font_bold {
font-weight: bold;
}
#jiyvikhgal .gt_font_italic {
font-style: italic;
}
#jiyvikhgal .gt_super {
font-size: 65%;
}
#jiyvikhgal .gt_footnote_marks {
font-style: italic;
font-weight: normal;
font-size: 65%;
}
</style>
<table class="gt_table">
<tbody class="gt_table_body">
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
GDP
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
Population
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2007
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bold;">
2007
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Asia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Kuwait
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
34.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
40.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
35.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
2.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
2.5
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Singapore
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
24.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
33.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
36.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.6
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Oceania
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
Australia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
23.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
27.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
30.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
34.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
17.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
18.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
19.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
20.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bold;">
New Zealand
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
18.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
21.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
23.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
25.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.1
</td>
</tr>
</tbody>
</table>

## Formatting tables

mmtable2 outputs tables using the gt package's format.

This means you can alter formatting using many existing gt styling commands.

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

gm_table_formatted
```

<style>html {
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}
#stjaoqmpmg .gt_table {
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
#stjaoqmpmg .gt_heading {
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
#stjaoqmpmg .gt_title {
color: #333333;
font-size: 125%;
font-weight: initial;
padding-top: 4px;
padding-bottom: 4px;
border-bottom-color: #FFFFFF;
border-bottom-width: 0;
}
#stjaoqmpmg .gt_subtitle {
color: #333333;
font-size: 85%;
font-weight: initial;
padding-top: 0;
padding-bottom: 4px;
border-top-color: #FFFFFF;
border-top-width: 0;
}
#stjaoqmpmg .gt_bottom_border {
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#stjaoqmpmg .gt_col_headings {
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
#stjaoqmpmg .gt_col_heading {
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
#stjaoqmpmg .gt_column_spanner_outer {
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
#stjaoqmpmg .gt_column_spanner_outer:first-child {
padding-left: 0;
}
#stjaoqmpmg .gt_column_spanner_outer:last-child {
padding-right: 0;
}
#stjaoqmpmg .gt_column_spanner {
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
#stjaoqmpmg .gt_group_heading {
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
#stjaoqmpmg .gt_empty_group_heading {
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
#stjaoqmpmg .gt_from_md > :first-child {
margin-top: 0;
}
#stjaoqmpmg .gt_from_md > :last-child {
margin-bottom: 0;
}
#stjaoqmpmg .gt_row {
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
#stjaoqmpmg .gt_stub {
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
#stjaoqmpmg .gt_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#stjaoqmpmg .gt_first_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
}
#stjaoqmpmg .gt_grand_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#stjaoqmpmg .gt_first_grand_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: double;
border-top-width: 6px;
border-top-color: #D3D3D3;
}
#stjaoqmpmg .gt_striped {
background-color: rgba(128, 128, 128, 0.05);
}
#stjaoqmpmg .gt_table_body {
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#stjaoqmpmg .gt_footnotes {
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
#stjaoqmpmg .gt_footnote {
margin: 0px;
font-size: 90%;
padding: 4px;
}
#stjaoqmpmg .gt_sourcenotes {
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
#stjaoqmpmg .gt_sourcenote {
font-size: 90%;
padding: 4px;
}
#stjaoqmpmg .gt_left {
text-align: left;
}
#stjaoqmpmg .gt_center {
text-align: center;
}
#stjaoqmpmg .gt_right {
text-align: right;
font-variant-numeric: tabular-nums;
}
#stjaoqmpmg .gt_font_normal {
font-weight: normal;
}
#stjaoqmpmg .gt_font_bold {
font-weight: bold;
}
#stjaoqmpmg .gt_font_italic {
font-style: italic;
}
#stjaoqmpmg .gt_super {
font-size: 65%;
}
#stjaoqmpmg .gt_footnote_marks {
font-style: italic;
font-weight: normal;
font-size: 65%;
}
</style>
<table class="gt_table">
<tbody class="gt_table_body">
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
GDP
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Population
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
2007
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
2007
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Africa
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Botswana
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
8.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
8.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
11.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
12.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.6
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">
Gabon
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
13.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
14.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
12.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
13.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.5
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Americas
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Canada
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
26.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
29.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
33.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
36.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
28.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
30.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
31.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
33.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">
United States
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
32.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
35.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
39.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
43.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
256.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
272.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
287.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
301.1
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Asia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Kuwait
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
40.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
35.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
47.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
2.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
2.5
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">
Singapore
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
24.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
33.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
36.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.6
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Europe
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Ireland
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
17.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
24.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
40.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
4.1
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">
Norway
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
34.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
41.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
44.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
49.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.6
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Oceania
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Australia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
23.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
27.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
30.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
17.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
18.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
19.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
20.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">
New Zealand
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
18.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
21.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
23.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
25.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.1
</td>
</tr>
</tbody>
<tfoot class="gt_sourcenotes">
<tr>
<td class="gt_sourcenote" colspan="10">
Excerpt of the Gapminder data on life expectancy, GDP per capita, and population by country.
</td>
</tr>
</tfoot>
</table>

### Merged header columns

Table headers can be merged with `header_merged_cols()`. This supports an aributrary number of column headers.

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

 gm_table_merged
```

<style>html {
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}
#qhljzusppo .gt_table {
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
#qhljzusppo .gt_heading {
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
#qhljzusppo .gt_title {
color: #333333;
font-size: 125%;
font-weight: initial;
padding-top: 4px;
padding-bottom: 4px;
border-bottom-color: #FFFFFF;
border-bottom-width: 0;
}
#qhljzusppo .gt_subtitle {
color: #333333;
font-size: 85%;
font-weight: initial;
padding-top: 0;
padding-bottom: 4px;
border-top-color: #FFFFFF;
border-top-width: 0;
}
#qhljzusppo .gt_bottom_border {
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#qhljzusppo .gt_col_headings {
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
#qhljzusppo .gt_col_heading {
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
#qhljzusppo .gt_column_spanner_outer {
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
#qhljzusppo .gt_column_spanner_outer:first-child {
padding-left: 0;
}
#qhljzusppo .gt_column_spanner_outer:last-child {
padding-right: 0;
}
#qhljzusppo .gt_column_spanner {
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
#qhljzusppo .gt_group_heading {
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
#qhljzusppo .gt_empty_group_heading {
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
#qhljzusppo .gt_from_md > :first-child {
margin-top: 0;
}
#qhljzusppo .gt_from_md > :last-child {
margin-bottom: 0;
}
#qhljzusppo .gt_row {
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
#qhljzusppo .gt_stub {
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
#qhljzusppo .gt_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#qhljzusppo .gt_first_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
}
#qhljzusppo .gt_grand_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#qhljzusppo .gt_first_grand_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: double;
border-top-width: 6px;
border-top-color: #D3D3D3;
}
#qhljzusppo .gt_striped {
background-color: rgba(128, 128, 128, 0.05);
}
#qhljzusppo .gt_table_body {
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#qhljzusppo .gt_footnotes {
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
#qhljzusppo .gt_footnote {
margin: 0px;
font-size: 90%;
padding: 4px;
}
#qhljzusppo .gt_sourcenotes {
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
#qhljzusppo .gt_sourcenote {
font-size: 90%;
padding: 4px;
}
#qhljzusppo .gt_left {
text-align: left;
}
#qhljzusppo .gt_center {
text-align: center;
}
#qhljzusppo .gt_right {
text-align: right;
font-variant-numeric: tabular-nums;
}
#qhljzusppo .gt_font_normal {
font-weight: normal;
}
#qhljzusppo .gt_font_bold {
font-weight: bold;
}
#qhljzusppo .gt_font_italic {
font-style: italic;
}
#qhljzusppo .gt_super {
font-size: 65%;
}
#qhljzusppo .gt_footnote_marks {
font-style: italic;
font-weight: normal;
font-size: 65%;
}
</style>
<table class="gt_table">
<thead class="gt_col_headings">
<tr>
<th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" style="font-size: 12px; text-align: left; font-weight: bold;">
<span class="gt_column_spanner"> </span>
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
</tr>
<tr>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
Botswana
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
Gabon
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
Canada
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
United States
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
Kuwait
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
Singapore
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
Ireland
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
Norway
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
Australia
</th>
<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="font-size: 12px; text-align: left; font-weight: bold;">
New Zealand
</th>
</tr>
</thead>
<tbody class="gt_table_body">
<tr>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">
GDP
</td>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">
1992
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
8.0
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
13.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
26.3
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
32.0
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
34.9
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
24.8
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
17.6
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
34.0
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
23.4
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
18.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px;">
</td>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
8.6
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
14.7
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
29.0
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
35.8
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
40.3
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
33.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
24.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
41.3
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
27.0
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
21.1
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
2002
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
11.0
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
12.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
33.3
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
39.1
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
35.1
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
36.0
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.1
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
44.7
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
30.7
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
23.2
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px;">
</td>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">
2007
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
12.6
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
13.2
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
36.3
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
43.0
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
47.3
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
47.1
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
40.7
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
49.4
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
34.4
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
25.2
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">
Population
</td>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">
1992
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
1.3
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
1.0
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
28.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
256.9
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
1.4
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
3.2
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
3.6
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
4.3
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
17.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
3.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px;">
</td>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">
1997
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
1.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
1.1
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
30.3
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
272.9
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
1.8
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
3.8
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
3.7
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
4.4
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
18.6
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
3.7
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
2002
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.6
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.3
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
31.9
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
287.7
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
2.1
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
4.2
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.9
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
4.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
19.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.9
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="font-size: 12px;">
</td>
<td class="gt_row gt_left" style="font-size: 12px; font-weight: bold;">
2007
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
1.6
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
1.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
33.4
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
301.1
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
2.5
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
4.6
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
4.1
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
4.6
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
20.4
</td>
<td class="gt_row gt_left" style="font-size: 12px; text-align: right;">
4.1
</td>
</tr>
</tbody>
</table>

### Alternative pipe syntax

Adding the `add_` prefix to functions allows use of `%>%` in place of `+`.

``` r
gm_table_piped <- 
gapminder_mm %>% 
  filter(var != "Life expectancy") %>% 
  mmtable(table_data = value, use_default_formats = T) %>% 
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

# webshot(url = gm_table_piped %>% print(),file = "test.png")
gm_table_piped 
```

<style>html {
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}
#gyfplsqecw .gt_table {
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
#gyfplsqecw .gt_heading {
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
#gyfplsqecw .gt_title {
color: #333333;
font-size: 125%;
font-weight: initial;
padding-top: 4px;
padding-bottom: 4px;
border-bottom-color: #FFFFFF;
border-bottom-width: 0;
}
#gyfplsqecw .gt_subtitle {
color: #333333;
font-size: 85%;
font-weight: initial;
padding-top: 0;
padding-bottom: 4px;
border-top-color: #FFFFFF;
border-top-width: 0;
}
#gyfplsqecw .gt_bottom_border {
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#gyfplsqecw .gt_col_headings {
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
#gyfplsqecw .gt_col_heading {
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
#gyfplsqecw .gt_column_spanner_outer {
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
#gyfplsqecw .gt_column_spanner_outer:first-child {
padding-left: 0;
}
#gyfplsqecw .gt_column_spanner_outer:last-child {
padding-right: 0;
}
#gyfplsqecw .gt_column_spanner {
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
#gyfplsqecw .gt_group_heading {
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
#gyfplsqecw .gt_empty_group_heading {
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
#gyfplsqecw .gt_from_md > :first-child {
margin-top: 0;
}
#gyfplsqecw .gt_from_md > :last-child {
margin-bottom: 0;
}
#gyfplsqecw .gt_row {
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
#gyfplsqecw .gt_stub {
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
#gyfplsqecw .gt_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#gyfplsqecw .gt_first_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
}
#gyfplsqecw .gt_grand_summary_row {
color: #333333;
background-color: #FFFFFF;
text-transform: inherit;
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
}
#gyfplsqecw .gt_first_grand_summary_row {
padding-top: 8px;
padding-bottom: 8px;
padding-left: 5px;
padding-right: 5px;
border-top-style: double;
border-top-width: 6px;
border-top-color: #D3D3D3;
}
#gyfplsqecw .gt_striped {
background-color: rgba(128, 128, 128, 0.05);
}
#gyfplsqecw .gt_table_body {
border-top-style: solid;
border-top-width: 2px;
border-top-color: #D3D3D3;
border-bottom-style: solid;
border-bottom-width: 2px;
border-bottom-color: #D3D3D3;
}
#gyfplsqecw .gt_footnotes {
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
#gyfplsqecw .gt_footnote {
margin: 0px;
font-size: 90%;
padding: 4px;
}
#gyfplsqecw .gt_sourcenotes {
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
#gyfplsqecw .gt_sourcenote {
font-size: 90%;
padding: 4px;
}
#gyfplsqecw .gt_left {
text-align: left;
}
#gyfplsqecw .gt_center {
text-align: center;
}
#gyfplsqecw .gt_right {
text-align: right;
font-variant-numeric: tabular-nums;
}
#gyfplsqecw .gt_font_normal {
font-weight: normal;
}
#gyfplsqecw .gt_font_bold {
font-weight: bold;
}
#gyfplsqecw .gt_font_italic {
font-style: italic;
}
#gyfplsqecw .gt_super {
font-size: 65%;
}
#gyfplsqecw .gt_footnote_marks {
font-style: italic;
font-weight: normal;
font-size: 65%;
}
</style>
<table class="gt_table">
<tbody class="gt_table_body">
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
GDP
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Population
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
2007
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
1992
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
1997
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
2002
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; font-weight: bolder;">
2007
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Africa
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Botswana
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
8.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
8.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
11.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
12.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.6
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">
Gabon
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
13.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
14.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
12.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
13.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
1.5
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Americas
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Canada
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
26.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
29.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
33.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
36.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
28.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
30.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
31.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
33.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">
United States
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
32.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
35.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
39.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
43.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
256.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
272.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
287.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
301.1
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Asia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Kuwait
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
40.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
35.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
47.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
1.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
2.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
2.5
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">
Singapore
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
24.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
33.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
36.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
47.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.8
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.6
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Europe
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Ireland
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
17.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
24.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
40.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
3.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
4.1
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">
Norway
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
34.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
41.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
44.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
49.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.3
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.6
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Oceania
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
Australia
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
23.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
27.0
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
30.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
34.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
17.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
18.6
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
19.5
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right; border-top-width: 1px; border-top-style: solid; border-top-color: grey;">
20.4
</td>
</tr>
<tr>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px;">
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; font-weight: bolder;">
New Zealand
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
18.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
21.1
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
23.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
25.2
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.4
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.7
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
3.9
</td>
<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000; font-size: 12px; text-align: right;">
4.1
</td>
</tr>
</tbody>
<tfoot class="gt_sourcenotes">
<tr>
<td class="gt_sourcenote" colspan="10">
Excerpt of the Gapminder data on life expectancy, GDP per capita, and population by country.
</td>
</tr>
</tfoot>
</table>
