
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

table1             +  table_title("Single Table")
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ifkjbogumm .gt_table {
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

#ifkjbogumm .gt_heading {
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

#ifkjbogumm .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ifkjbogumm .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ifkjbogumm .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ifkjbogumm .gt_col_headings {
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

#ifkjbogumm .gt_col_heading {
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

#ifkjbogumm .gt_column_spanner_outer {
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

#ifkjbogumm .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ifkjbogumm .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ifkjbogumm .gt_column_spanner {
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

#ifkjbogumm .gt_group_heading {
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

#ifkjbogumm .gt_empty_group_heading {
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

#ifkjbogumm .gt_from_md > :first-child {
  margin-top: 0;
}

#ifkjbogumm .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ifkjbogumm .gt_row {
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

#ifkjbogumm .gt_stub {
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

#ifkjbogumm .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ifkjbogumm .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#ifkjbogumm .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ifkjbogumm .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ifkjbogumm .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ifkjbogumm .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ifkjbogumm .gt_footnotes {
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

#ifkjbogumm .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#ifkjbogumm .gt_sourcenotes {
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

#ifkjbogumm .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#ifkjbogumm .gt_left {
  text-align: left;
}

#ifkjbogumm .gt_center {
  text-align: center;
}

#ifkjbogumm .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ifkjbogumm .gt_font_normal {
  font-weight: normal;
}

#ifkjbogumm .gt_font_bold {
  font-weight: bold;
}

#ifkjbogumm .gt_font_italic {
  font-style: italic;
}

#ifkjbogumm .gt_super {
  font-size: 65%;
}

#ifkjbogumm .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ifkjbogumm" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

#yxdvmoette .gt_table {
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

#yxdvmoette .gt_heading {
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

#yxdvmoette .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#yxdvmoette .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#yxdvmoette .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#yxdvmoette .gt_col_headings {
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

#yxdvmoette .gt_col_heading {
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

#yxdvmoette .gt_column_spanner_outer {
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

#yxdvmoette .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#yxdvmoette .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#yxdvmoette .gt_column_spanner {
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

#yxdvmoette .gt_group_heading {
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

#yxdvmoette .gt_empty_group_heading {
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

#yxdvmoette .gt_from_md > :first-child {
  margin-top: 0;
}

#yxdvmoette .gt_from_md > :last-child {
  margin-bottom: 0;
}

#yxdvmoette .gt_row {
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

#yxdvmoette .gt_stub {
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

#yxdvmoette .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#yxdvmoette .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#yxdvmoette .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#yxdvmoette .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#yxdvmoette .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#yxdvmoette .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#yxdvmoette .gt_footnotes {
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

#yxdvmoette .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#yxdvmoette .gt_sourcenotes {
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

#yxdvmoette .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#yxdvmoette .gt_left {
  text-align: left;
}

#yxdvmoette .gt_center {
  text-align: center;
}

#yxdvmoette .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#yxdvmoette .gt_font_normal {
  font-weight: normal;
}

#yxdvmoette .gt_font_bold {
  font-weight: bold;
}

#yxdvmoette .gt_font_italic {
  font-style: italic;
}

#yxdvmoette .gt_super {
  font-size: 65%;
}

#yxdvmoette .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="yxdvmoette" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

#jehaetdppr .gt_table {
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

#jehaetdppr .gt_heading {
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

#jehaetdppr .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#jehaetdppr .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#jehaetdppr .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jehaetdppr .gt_col_headings {
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

#jehaetdppr .gt_col_heading {
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

#jehaetdppr .gt_column_spanner_outer {
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

#jehaetdppr .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#jehaetdppr .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#jehaetdppr .gt_column_spanner {
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

#jehaetdppr .gt_group_heading {
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

#jehaetdppr .gt_empty_group_heading {
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

#jehaetdppr .gt_from_md > :first-child {
  margin-top: 0;
}

#jehaetdppr .gt_from_md > :last-child {
  margin-bottom: 0;
}

#jehaetdppr .gt_row {
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

#jehaetdppr .gt_stub {
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

#jehaetdppr .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jehaetdppr .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#jehaetdppr .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jehaetdppr .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#jehaetdppr .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#jehaetdppr .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jehaetdppr .gt_footnotes {
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

#jehaetdppr .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#jehaetdppr .gt_sourcenotes {
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

#jehaetdppr .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#jehaetdppr .gt_left {
  text-align: left;
}

#jehaetdppr .gt_center {
  text-align: center;
}

#jehaetdppr .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#jehaetdppr .gt_font_normal {
  font-weight: normal;
}

#jehaetdppr .gt_font_bold {
  font-weight: bold;
}

#jehaetdppr .gt_font_italic {
  font-style: italic;
}

#jehaetdppr .gt_super {
  font-size: 65%;
}

#jehaetdppr .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="jehaetdppr" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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

#jmympgpovd .gt_table {
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

#jmympgpovd .gt_heading {
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

#jmympgpovd .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#jmympgpovd .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#jmympgpovd .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jmympgpovd .gt_col_headings {
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

#jmympgpovd .gt_col_heading {
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

#jmympgpovd .gt_column_spanner_outer {
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

#jmympgpovd .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#jmympgpovd .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#jmympgpovd .gt_column_spanner {
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

#jmympgpovd .gt_group_heading {
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

#jmympgpovd .gt_empty_group_heading {
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

#jmympgpovd .gt_from_md > :first-child {
  margin-top: 0;
}

#jmympgpovd .gt_from_md > :last-child {
  margin-bottom: 0;
}

#jmympgpovd .gt_row {
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

#jmympgpovd .gt_stub {
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

#jmympgpovd .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jmympgpovd .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#jmympgpovd .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jmympgpovd .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#jmympgpovd .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#jmympgpovd .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jmympgpovd .gt_footnotes {
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

#jmympgpovd .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#jmympgpovd .gt_sourcenotes {
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

#jmympgpovd .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#jmympgpovd .gt_left {
  text-align: left;
}

#jmympgpovd .gt_center {
  text-align: center;
}

#jmympgpovd .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#jmympgpovd .gt_font_normal {
  font-weight: normal;
}

#jmympgpovd .gt_font_bold {
  font-weight: bold;
}

#jmympgpovd .gt_font_italic {
  font-style: italic;
}

#jmympgpovd .gt_super {
  font-size: 65%;
}

#jmympgpovd .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="jmympgpovd" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">

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
