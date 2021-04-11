
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mmtable2

<!-- badges: start -->

<!-- badges: end -->

The goal of mmtable2 is to provide a ggplot2-like interface for untidy
tables. It does this by introducing algabraic untidy tables.

## Installation

This package is probably too buggy for installation, but feel free to clone\!

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
