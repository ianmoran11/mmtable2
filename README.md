
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
table1 <-
  student_df %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table1.1 <-
  student_df_1 %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table2 <-
  student_df_2 %>%
  mmtable(table_data = value)  +
  header_top(student) +
  header_top_left(grade) +
  header_left(class) +
  header_left_top(subject)

table1             +  table_title("Single Table")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#mgcquqaljk .gt_table {
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

#mgcquqaljk .gt_heading {
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

#mgcquqaljk .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#mgcquqaljk .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#mgcquqaljk .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#mgcquqaljk .gt_col_headings {
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

#mgcquqaljk .gt_col_heading {
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

#mgcquqaljk .gt_column_spanner_outer {
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

#mgcquqaljk .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#mgcquqaljk .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#mgcquqaljk .gt_column_spanner {
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

#mgcquqaljk .gt_group_heading {
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

#mgcquqaljk .gt_empty_group_heading {
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

#mgcquqaljk .gt_from_md > :first-child {
  margin-top: 0;
}

#mgcquqaljk .gt_from_md > :last-child {
  margin-bottom: 0;
}

#mgcquqaljk .gt_row {
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

#mgcquqaljk .gt_stub {
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

#mgcquqaljk .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#mgcquqaljk .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#mgcquqaljk .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#mgcquqaljk .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#mgcquqaljk .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#mgcquqaljk .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#mgcquqaljk .gt_footnotes {
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

#mgcquqaljk .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#mgcquqaljk .gt_sourcenotes {
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

#mgcquqaljk .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#mgcquqaljk .gt_left {
  text-align: left;
}

#mgcquqaljk .gt_center {
  text-align: center;
}

#mgcquqaljk .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#mgcquqaljk .gt_font_normal {
  font-weight: normal;
}

#mgcquqaljk .gt_font_bold {
  font-weight: bold;
}

#mgcquqaljk .gt_font_italic {
  font-style: italic;
}

#mgcquqaljk .gt_super {
  font-size: 65%;
}

#mgcquqaljk .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="mgcquqaljk" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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
table1 / table1.1  +  table_title("Table Quotient")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#fzmzbzvwmb .gt_table {
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

#fzmzbzvwmb .gt_heading {
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

#fzmzbzvwmb .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#fzmzbzvwmb .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#fzmzbzvwmb .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#fzmzbzvwmb .gt_col_headings {
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

#fzmzbzvwmb .gt_col_heading {
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

#fzmzbzvwmb .gt_column_spanner_outer {
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

#fzmzbzvwmb .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#fzmzbzvwmb .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#fzmzbzvwmb .gt_column_spanner {
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

#fzmzbzvwmb .gt_group_heading {
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

#fzmzbzvwmb .gt_empty_group_heading {
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

#fzmzbzvwmb .gt_from_md > :first-child {
  margin-top: 0;
}

#fzmzbzvwmb .gt_from_md > :last-child {
  margin-bottom: 0;
}

#fzmzbzvwmb .gt_row {
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

#fzmzbzvwmb .gt_stub {
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

#fzmzbzvwmb .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#fzmzbzvwmb .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#fzmzbzvwmb .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#fzmzbzvwmb .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#fzmzbzvwmb .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#fzmzbzvwmb .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#fzmzbzvwmb .gt_footnotes {
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

#fzmzbzvwmb .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#fzmzbzvwmb .gt_sourcenotes {
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

#fzmzbzvwmb .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#fzmzbzvwmb .gt_left {
  text-align: left;
}

#fzmzbzvwmb .gt_center {
  text-align: center;
}

#fzmzbzvwmb .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#fzmzbzvwmb .gt_font_normal {
  font-weight: normal;
}

#fzmzbzvwmb .gt_font_bold {
  font-weight: bold;
}

#fzmzbzvwmb .gt_font_italic {
  font-style: italic;
}

#fzmzbzvwmb .gt_super {
  font-size: 65%;
}

#fzmzbzvwmb .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="fzmzbzvwmb" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

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

History

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

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

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

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

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->

``` r
table1 * table1.1  +  table_title("Table Product")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#nnrxniicca .gt_table {
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

#nnrxniicca .gt_heading {
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

#nnrxniicca .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#nnrxniicca .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#nnrxniicca .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nnrxniicca .gt_col_headings {
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

#nnrxniicca .gt_col_heading {
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

#nnrxniicca .gt_column_spanner_outer {
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

#nnrxniicca .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#nnrxniicca .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#nnrxniicca .gt_column_spanner {
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

#nnrxniicca .gt_group_heading {
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

#nnrxniicca .gt_empty_group_heading {
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

#nnrxniicca .gt_from_md > :first-child {
  margin-top: 0;
}

#nnrxniicca .gt_from_md > :last-child {
  margin-bottom: 0;
}

#nnrxniicca .gt_row {
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

#nnrxniicca .gt_stub {
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

#nnrxniicca .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#nnrxniicca .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#nnrxniicca .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#nnrxniicca .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#nnrxniicca .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#nnrxniicca .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nnrxniicca .gt_footnotes {
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

#nnrxniicca .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#nnrxniicca .gt_sourcenotes {
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

#nnrxniicca .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#nnrxniicca .gt_left {
  text-align: left;
}

#nnrxniicca .gt_center {
  text-align: center;
}

#nnrxniicca .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#nnrxniicca .gt_font_normal {
  font-weight: normal;
}

#nnrxniicca .gt_font_bold {
  font-weight: bold;
}

#nnrxniicca .gt_font_italic {
  font-style: italic;
}

#nnrxniicca .gt_super {
  font-size: 65%;
}

#nnrxniicca .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="nnrxniicca" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

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

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

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

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

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

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

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
table1 + table2    +  table_title("Table Sum")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ghyqrlrscn .gt_table {
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

#ghyqrlrscn .gt_heading {
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

#ghyqrlrscn .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ghyqrlrscn .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ghyqrlrscn .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ghyqrlrscn .gt_col_headings {
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

#ghyqrlrscn .gt_col_heading {
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

#ghyqrlrscn .gt_column_spanner_outer {
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

#ghyqrlrscn .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ghyqrlrscn .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ghyqrlrscn .gt_column_spanner {
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

#ghyqrlrscn .gt_group_heading {
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

#ghyqrlrscn .gt_empty_group_heading {
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

#ghyqrlrscn .gt_from_md > :first-child {
  margin-top: 0;
}

#ghyqrlrscn .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ghyqrlrscn .gt_row {
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

#ghyqrlrscn .gt_stub {
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

#ghyqrlrscn .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ghyqrlrscn .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#ghyqrlrscn .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ghyqrlrscn .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ghyqrlrscn .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ghyqrlrscn .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ghyqrlrscn .gt_footnotes {
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

#ghyqrlrscn .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#ghyqrlrscn .gt_sourcenotes {
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

#ghyqrlrscn .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#ghyqrlrscn .gt_left {
  text-align: left;
}

#ghyqrlrscn .gt_center {
  text-align: center;
}

#ghyqrlrscn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ghyqrlrscn .gt_font_normal {
  font-weight: normal;
}

#ghyqrlrscn .gt_font_bold {
  font-weight: bold;
}

#ghyqrlrscn .gt_font_italic {
  font-style: italic;
}

#ghyqrlrscn .gt_super {
  font-size: 65%;
}

#ghyqrlrscn .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ghyqrlrscn" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

Grade 3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

Grade 4

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

5

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

4

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

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

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

8

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

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

2

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

5

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

6

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

3

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

<td class="gt_row gt_left" style="background-color: #FFFFFF; color: #000000;">

1

</td>

</tr>

</tbody>

</table>

</div>

<!--/html_preserve-->
