
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mmtable2

<!-- badges: start -->

<!-- badges: end -->

The goal of mmtable2 is to provide a ggplot2-like interface for untidy
tables. It does this by introducing algabraic untidy tables.

## Installation

This probably to buggy for installation, but feel free to clone\!

## Example

Here’s a GIF demonstrating how to use mmtable2:

<img src="https://unpivotr.s3.amazonaws.com/Peek+2021-04-11+15-34.gif" width="800px" />

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


table1             +  table_title("Single Table")    %>% print_knitr
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#tzamkkpnit .gt_table {
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

#tzamkkpnit .gt_heading {
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

#tzamkkpnit .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#tzamkkpnit .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#tzamkkpnit .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#tzamkkpnit .gt_col_headings {
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

#tzamkkpnit .gt_col_heading {
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

#tzamkkpnit .gt_column_spanner_outer {
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

#tzamkkpnit .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#tzamkkpnit .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#tzamkkpnit .gt_column_spanner {
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

#tzamkkpnit .gt_group_heading {
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

#tzamkkpnit .gt_empty_group_heading {
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

#tzamkkpnit .gt_from_md > :first-child {
  margin-top: 0;
}

#tzamkkpnit .gt_from_md > :last-child {
  margin-bottom: 0;
}

#tzamkkpnit .gt_row {
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

#tzamkkpnit .gt_stub {
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

#tzamkkpnit .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#tzamkkpnit .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#tzamkkpnit .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#tzamkkpnit .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#tzamkkpnit .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#tzamkkpnit .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#tzamkkpnit .gt_footnotes {
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

#tzamkkpnit .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#tzamkkpnit .gt_sourcenotes {
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

#tzamkkpnit .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#tzamkkpnit .gt_left {
  text-align: left;
}

#tzamkkpnit .gt_center {
  text-align: center;
}

#tzamkkpnit .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#tzamkkpnit .gt_font_normal {
  font-weight: normal;
}

#tzamkkpnit .gt_font_bold {
  font-weight: bold;
}

#tzamkkpnit .gt_font_italic {
  font-style: italic;
}

#tzamkkpnit .gt_super {
  font-size: 65%;
}

#tzamkkpnit .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="tzamkkpnit" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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
table1 / table1.1  +  table_title("Table Quotient")  %>% print_knitr
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#fejvyngbms .gt_table {
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

#fejvyngbms .gt_heading {
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

#fejvyngbms .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#fejvyngbms .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#fejvyngbms .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#fejvyngbms .gt_col_headings {
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

#fejvyngbms .gt_col_heading {
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

#fejvyngbms .gt_column_spanner_outer {
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

#fejvyngbms .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#fejvyngbms .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#fejvyngbms .gt_column_spanner {
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

#fejvyngbms .gt_group_heading {
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

#fejvyngbms .gt_empty_group_heading {
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

#fejvyngbms .gt_from_md > :first-child {
  margin-top: 0;
}

#fejvyngbms .gt_from_md > :last-child {
  margin-bottom: 0;
}

#fejvyngbms .gt_row {
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

#fejvyngbms .gt_stub {
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

#fejvyngbms .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#fejvyngbms .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#fejvyngbms .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#fejvyngbms .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#fejvyngbms .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#fejvyngbms .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#fejvyngbms .gt_footnotes {
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

#fejvyngbms .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#fejvyngbms .gt_sourcenotes {
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

#fejvyngbms .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#fejvyngbms .gt_left {
  text-align: left;
}

#fejvyngbms .gt_center {
  text-align: center;
}

#fejvyngbms .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#fejvyngbms .gt_font_normal {
  font-weight: normal;
}

#fejvyngbms .gt_font_bold {
  font-weight: bold;
}

#fejvyngbms .gt_font_italic {
  font-style: italic;
}

#fejvyngbms .gt_super {
  font-size: 65%;
}

#fejvyngbms .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="fejvyngbms" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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
table1 * table1.1  +  table_title("Table Product")   %>% print_knitr
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#rhpsitvhxt .gt_table {
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

#rhpsitvhxt .gt_heading {
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

#rhpsitvhxt .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#rhpsitvhxt .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#rhpsitvhxt .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rhpsitvhxt .gt_col_headings {
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

#rhpsitvhxt .gt_col_heading {
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

#rhpsitvhxt .gt_column_spanner_outer {
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

#rhpsitvhxt .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#rhpsitvhxt .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#rhpsitvhxt .gt_column_spanner {
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

#rhpsitvhxt .gt_group_heading {
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

#rhpsitvhxt .gt_empty_group_heading {
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

#rhpsitvhxt .gt_from_md > :first-child {
  margin-top: 0;
}

#rhpsitvhxt .gt_from_md > :last-child {
  margin-bottom: 0;
}

#rhpsitvhxt .gt_row {
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

#rhpsitvhxt .gt_stub {
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

#rhpsitvhxt .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#rhpsitvhxt .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#rhpsitvhxt .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#rhpsitvhxt .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#rhpsitvhxt .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#rhpsitvhxt .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#rhpsitvhxt .gt_footnotes {
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

#rhpsitvhxt .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#rhpsitvhxt .gt_sourcenotes {
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

#rhpsitvhxt .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#rhpsitvhxt .gt_left {
  text-align: left;
}

#rhpsitvhxt .gt_center {
  text-align: center;
}

#rhpsitvhxt .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#rhpsitvhxt .gt_font_normal {
  font-weight: normal;
}

#rhpsitvhxt .gt_font_bold {
  font-weight: bold;
}

#rhpsitvhxt .gt_font_italic {
  font-style: italic;
}

#rhpsitvhxt .gt_super {
  font-size: 65%;
}

#rhpsitvhxt .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="rhpsitvhxt" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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
table1 + table2    +  table_title("Table Sum")       %>% print_knitr
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#phymqjwrhp .gt_table {
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

#phymqjwrhp .gt_heading {
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

#phymqjwrhp .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#phymqjwrhp .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#phymqjwrhp .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#phymqjwrhp .gt_col_headings {
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

#phymqjwrhp .gt_col_heading {
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

#phymqjwrhp .gt_column_spanner_outer {
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

#phymqjwrhp .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#phymqjwrhp .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#phymqjwrhp .gt_column_spanner {
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

#phymqjwrhp .gt_group_heading {
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

#phymqjwrhp .gt_empty_group_heading {
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

#phymqjwrhp .gt_from_md > :first-child {
  margin-top: 0;
}

#phymqjwrhp .gt_from_md > :last-child {
  margin-bottom: 0;
}

#phymqjwrhp .gt_row {
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

#phymqjwrhp .gt_stub {
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

#phymqjwrhp .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#phymqjwrhp .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#phymqjwrhp .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#phymqjwrhp .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#phymqjwrhp .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#phymqjwrhp .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#phymqjwrhp .gt_footnotes {
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

#phymqjwrhp .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#phymqjwrhp .gt_sourcenotes {
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

#phymqjwrhp .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#phymqjwrhp .gt_left {
  text-align: left;
}

#phymqjwrhp .gt_center {
  text-align: center;
}

#phymqjwrhp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#phymqjwrhp .gt_font_normal {
  font-weight: normal;
}

#phymqjwrhp .gt_font_bold {
  font-weight: bold;
}

#phymqjwrhp .gt_font_italic {
  font-style: italic;
}

#phymqjwrhp .gt_super {
  font-size: 65%;
}

#phymqjwrhp .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="phymqjwrhp" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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
