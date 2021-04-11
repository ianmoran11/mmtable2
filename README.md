
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mmtable2

<!-- badges: start -->

<!-- badges: end -->

The goal of mmtable2 is to provide a ggplot2-like interface for untidy
tables. It does this by introducing algabraic untidy tables.

## Installation

This probably to buggy for installation, but feel free to clone\!

## Example

This is a basic example which shows you how to solve a common problem:

``` r

student_df
#> # A tibble: 16 x 5
#>    subject     class    student  value grade  
#>    <chr>       <chr>    <chr>    <dbl> <chr>  
#>  1 Humanities  Classics Matilda      1 Grade 1
#>  2 Humanities  History  Matilda      3 Grade 1
#>  3 Performance Music    Matilda      5 Grade 1
#>  4 Performance Drama    Matilda      7 Grade 1
#>  5 Humanities  Classics Olivia       2 Grade 1
#>  6 Humanities  History  Olivia       4 Grade 1
#>  7 Performance Music    Olivia       6 Grade 1
#>  8 Performance Drama    Olivia       8 Grade 1
#>  9 Humanities  Classics Nicholas     3 Grade 2
#> 10 Humanities  History  Nicholas     5 Grade 2
#> 11 Performance Music    Nicholas     9 Grade 2
#> 12 Performance Drama    Nicholas    12 Grade 2
#> 13 Humanities  Classics Paul         0 Grade 2
#> 14 Humanities  History  Paul         1 Grade 2
#> 15 Performance Music    Paul         2 Grade 2
#> 16 Performance Drama    Paul         3 Grade 2

# table1 <- 
student_df %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#kwqbbcavkj .gt_table {
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

#kwqbbcavkj .gt_heading {
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

#kwqbbcavkj .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#kwqbbcavkj .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#kwqbbcavkj .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#kwqbbcavkj .gt_col_headings {
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

#kwqbbcavkj .gt_col_heading {
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

#kwqbbcavkj .gt_column_spanner_outer {
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

#kwqbbcavkj .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#kwqbbcavkj .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#kwqbbcavkj .gt_column_spanner {
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

#kwqbbcavkj .gt_group_heading {
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

#kwqbbcavkj .gt_empty_group_heading {
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

#kwqbbcavkj .gt_from_md > :first-child {
  margin-top: 0;
}

#kwqbbcavkj .gt_from_md > :last-child {
  margin-bottom: 0;
}

#kwqbbcavkj .gt_row {
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

#kwqbbcavkj .gt_stub {
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

#kwqbbcavkj .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#kwqbbcavkj .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#kwqbbcavkj .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#kwqbbcavkj .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#kwqbbcavkj .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#kwqbbcavkj .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#kwqbbcavkj .gt_footnotes {
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

#kwqbbcavkj .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#kwqbbcavkj .gt_sourcenotes {
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

#kwqbbcavkj .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#kwqbbcavkj .gt_left {
  text-align: left;
}

#kwqbbcavkj .gt_center {
  text-align: center;
}

#kwqbbcavkj .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#kwqbbcavkj .gt_font_normal {
  font-weight: normal;
}

#kwqbbcavkj .gt_font_bold {
  font-weight: bold;
}

#kwqbbcavkj .gt_font_italic {
  font-style: italic;
}

#kwqbbcavkj .gt_super {
  font-size: 65%;
}

#kwqbbcavkj .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="kwqbbcavkj" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

</tr>

</thead>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Matilda

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Olivia

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Nicholas

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Paul

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Humanities

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Classics

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

0

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

History

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Performance

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Drama

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

7

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

12

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Music

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

9

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->

``` r



table1             +  table_title("Single Table")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#pgbbgngrev .gt_table {
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

#pgbbgngrev .gt_heading {
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

#pgbbgngrev .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#pgbbgngrev .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#pgbbgngrev .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#pgbbgngrev .gt_col_headings {
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

#pgbbgngrev .gt_col_heading {
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

#pgbbgngrev .gt_column_spanner_outer {
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

#pgbbgngrev .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#pgbbgngrev .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#pgbbgngrev .gt_column_spanner {
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

#pgbbgngrev .gt_group_heading {
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

#pgbbgngrev .gt_empty_group_heading {
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

#pgbbgngrev .gt_from_md > :first-child {
  margin-top: 0;
}

#pgbbgngrev .gt_from_md > :last-child {
  margin-bottom: 0;
}

#pgbbgngrev .gt_row {
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

#pgbbgngrev .gt_stub {
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

#pgbbgngrev .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#pgbbgngrev .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#pgbbgngrev .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#pgbbgngrev .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#pgbbgngrev .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#pgbbgngrev .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#pgbbgngrev .gt_footnotes {
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

#pgbbgngrev .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#pgbbgngrev .gt_sourcenotes {
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

#pgbbgngrev .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#pgbbgngrev .gt_left {
  text-align: left;
}

#pgbbgngrev .gt_center {
  text-align: center;
}

#pgbbgngrev .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#pgbbgngrev .gt_font_normal {
  font-weight: normal;
}

#pgbbgngrev .gt_font_bold {
  font-weight: bold;
}

#pgbbgngrev .gt_font_italic {
  font-style: italic;
}

#pgbbgngrev .gt_super {
  font-size: 65%;
}

#pgbbgngrev .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="pgbbgngrev" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_header">

<tr>

<th colspan="6" class="gt_heading gt_title gt_font_normal" style>

Single Table

</th>

</tr>

<tr>

<th colspan="6" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>

</th>

</tr>

</thead>

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

</tr>

</thead>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Matilda

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Olivia

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Nicholas

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Paul

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Humanities

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Classics

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

0

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

History

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Performance

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Drama

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

7

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

12

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Music

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

9

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->

``` r
table1 / table1    +  table_title("Table Quotient")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#datguyeuph .gt_table {
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

#datguyeuph .gt_heading {
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

#datguyeuph .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#datguyeuph .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#datguyeuph .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#datguyeuph .gt_col_headings {
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

#datguyeuph .gt_col_heading {
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

#datguyeuph .gt_column_spanner_outer {
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

#datguyeuph .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#datguyeuph .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#datguyeuph .gt_column_spanner {
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

#datguyeuph .gt_group_heading {
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

#datguyeuph .gt_empty_group_heading {
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

#datguyeuph .gt_from_md > :first-child {
  margin-top: 0;
}

#datguyeuph .gt_from_md > :last-child {
  margin-bottom: 0;
}

#datguyeuph .gt_row {
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

#datguyeuph .gt_stub {
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

#datguyeuph .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#datguyeuph .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#datguyeuph .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#datguyeuph .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#datguyeuph .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#datguyeuph .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#datguyeuph .gt_footnotes {
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

#datguyeuph .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#datguyeuph .gt_sourcenotes {
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

#datguyeuph .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#datguyeuph .gt_left {
  text-align: left;
}

#datguyeuph .gt_center {
  text-align: center;
}

#datguyeuph .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#datguyeuph .gt_font_normal {
  font-weight: normal;
}

#datguyeuph .gt_font_bold {
  font-weight: bold;
}

#datguyeuph .gt_font_italic {
  font-style: italic;
}

#datguyeuph .gt_super {
  font-size: 65%;
}

#datguyeuph .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="datguyeuph" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_header">

<tr>

<th colspan="7" class="gt_heading gt_title gt_font_normal" style>

Table Quotient

</th>

</tr>

<tr>

<th colspan="7" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>

</th>

</tr>

</thead>

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

</tr>

</thead>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Matilda

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Olivia

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Nicholas

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Paul

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Table 1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Humanities

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Classics

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

0

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

History

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Performance

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Drama

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

7

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

12

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Music

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

9

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Table 2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Humanities

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Classics

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

0

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

History

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Performance

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Drama

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

7

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

12

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Music

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

9

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->

``` r
table1 + table1    +  table_title("Table Sum")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#wqpcxvwbno .gt_table {
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

#wqpcxvwbno .gt_heading {
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

#wqpcxvwbno .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#wqpcxvwbno .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#wqpcxvwbno .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wqpcxvwbno .gt_col_headings {
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

#wqpcxvwbno .gt_col_heading {
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

#wqpcxvwbno .gt_column_spanner_outer {
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

#wqpcxvwbno .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#wqpcxvwbno .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#wqpcxvwbno .gt_column_spanner {
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

#wqpcxvwbno .gt_group_heading {
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

#wqpcxvwbno .gt_empty_group_heading {
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

#wqpcxvwbno .gt_from_md > :first-child {
  margin-top: 0;
}

#wqpcxvwbno .gt_from_md > :last-child {
  margin-bottom: 0;
}

#wqpcxvwbno .gt_row {
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

#wqpcxvwbno .gt_stub {
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

#wqpcxvwbno .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wqpcxvwbno .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#wqpcxvwbno .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wqpcxvwbno .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#wqpcxvwbno .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#wqpcxvwbno .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wqpcxvwbno .gt_footnotes {
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

#wqpcxvwbno .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#wqpcxvwbno .gt_sourcenotes {
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

#wqpcxvwbno .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#wqpcxvwbno .gt_left {
  text-align: left;
}

#wqpcxvwbno .gt_center {
  text-align: center;
}

#wqpcxvwbno .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#wqpcxvwbno .gt_font_normal {
  font-weight: normal;
}

#wqpcxvwbno .gt_font_bold {
  font-weight: bold;
}

#wqpcxvwbno .gt_font_italic {
  font-style: italic;
}

#wqpcxvwbno .gt_super {
  font-size: 65%;
}

#wqpcxvwbno .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="wqpcxvwbno" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_header">

<tr>

<th colspan="10" class="gt_heading gt_title gt_font_normal" style>

Table Sum

</th>

</tr>

<tr>

<th colspan="10" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>

</th>

</tr>

</thead>

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

</tr>

</thead>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Table 1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Table 2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Matilda

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Olivia

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Nicholas

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Paul

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Matilda

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Olivia

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Nicholas

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Paul

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Humanities

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Classics

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

0

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

0

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

History

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Performance

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Drama

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

7

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

12

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

7

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

12

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Music

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

9

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

9

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->

``` r
table1 * table1    +  table_title("Table Product")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#qcajsxxtgv .gt_table {
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

#qcajsxxtgv .gt_heading {
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

#qcajsxxtgv .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#qcajsxxtgv .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#qcajsxxtgv .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qcajsxxtgv .gt_col_headings {
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

#qcajsxxtgv .gt_col_heading {
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

#qcajsxxtgv .gt_column_spanner_outer {
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

#qcajsxxtgv .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#qcajsxxtgv .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#qcajsxxtgv .gt_column_spanner {
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

#qcajsxxtgv .gt_group_heading {
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

#qcajsxxtgv .gt_empty_group_heading {
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

#qcajsxxtgv .gt_from_md > :first-child {
  margin-top: 0;
}

#qcajsxxtgv .gt_from_md > :last-child {
  margin-bottom: 0;
}

#qcajsxxtgv .gt_row {
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

#qcajsxxtgv .gt_stub {
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

#qcajsxxtgv .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#qcajsxxtgv .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#qcajsxxtgv .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#qcajsxxtgv .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#qcajsxxtgv .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#qcajsxxtgv .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qcajsxxtgv .gt_footnotes {
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

#qcajsxxtgv .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#qcajsxxtgv .gt_sourcenotes {
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

#qcajsxxtgv .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#qcajsxxtgv .gt_left {
  text-align: left;
}

#qcajsxxtgv .gt_center {
  text-align: center;
}

#qcajsxxtgv .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#qcajsxxtgv .gt_font_normal {
  font-weight: normal;
}

#qcajsxxtgv .gt_font_bold {
  font-weight: bold;
}

#qcajsxxtgv .gt_font_italic {
  font-style: italic;
}

#qcajsxxtgv .gt_super {
  font-size: 65%;
}

#qcajsxxtgv .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="qcajsxxtgv" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

<table class="gt_table">

<thead class="gt_header">

<tr>

<th colspan="6" class="gt_heading gt_title gt_font_normal" style>

Table Product

</th>

</tr>

<tr>

<th colspan="6" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>

</th>

</tr>

</thead>

<thead class="gt_col_headings">

<tr>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

<th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">

</th>

</tr>

</thead>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Matilda

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Olivia

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Nicholas

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Paul

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Humanities

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Classics

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

0

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Classics

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

0

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

History

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

History

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Performance

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Drama

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

7

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

12

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Drama

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

7

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

12

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Music

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

9

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

</tr>

<tr>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Music

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

9

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->
