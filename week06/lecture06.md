---
title: Lecture 6
layout: lecture
---
<!-- .slide: class="titleslide" -->

# Data Visualization
<div style="height: 6.0em;"></div>
## Matthew Turk
## Fall 2018
## Lecture 6

---

## Warm-Up Activity

1. What is the visualization trying to show?
1. What are its methods?
1. What are the strengths / weaknesses?

 * https://gizmodo.com/observatories-across-the-world-announce-groundbreaking-1819500578
 * https://gizmodo.com/let-s-break-down-what-that-monumental-neutron-star-coll-1819613829

---

## Last Week

 * Transformations
 * Colors and color mapping
 * HSV/RGB/etc
 * Image visualization
 * Importing modules

---

## Review: Color Mapping

 * Choose an accessible, appropriate colormap
   * "Am I showing different things?"
   * "Can these things be compared directly?"
   * "Do I want to demonstrate deviation or gradiation?"
 * Mapping between "data space" and "color space" requires normalization and
   color mapping
   * Normalization: $f(v) => v' \in [0, 1]$
   * Color mapping: $g(v) => RGBA$

---

## This Week

 * Showing Composition
 * Comparing Datasets
 * More Pandas and some Seaborn

---

## Composition

Don't use a pie chart.

<!-- .slide: data-background-image="images/pie_chart.png" data-background-size="auto 75%" data-background-position="right 50% bottom 50%" -->

---

## Alternatives

 * Hierarchical data
   * Sunbursts (e.g., [snakeviz](https://jiffyclub.github.io/snakeviz/) )
   * Nested box area (e.g., [callgrind](images/callgrind.png) )
 * Stacked bar or area

---

## Comparison

 * Among Items
   * One Variable, Few Categories: Column, or  collection of bars
   * Two Variables: Variable Width Column Chart
   * Many variables: Embedded table or charts
 * Changing Over Time
   * Many Periods, non-cyclical: Line chart
   * Few Periods: Column or Line (depending on number of categories)

---

## Pandas

 * [pandas.pydata.org](http://pandas.pydata.org/)
 * Support for indexing, multi-indexing
 * Data structures
   * Series
   * DataFrame
   * Panel
 * Groupby, select, aggregation features
 * IO features
   * Reading/writing CSV, HDF5
   * Loading data from remote sources

---

## Today: Let's Try Things

Today we are going to build comparisons with our (virtual) hands.

 * A Bit More Pandas
   * Load a CSV file in the fast way
   * Make sure the dates are correctly read in
   * Aggregate by a characteristic
 * A Bit More Matplotlib
   * Patches and elements
   * "Projections"
   * Polar projections
 * Build a sunburst
 * Brainstorm and implement other cyclical visualizations
