---
title: Lecture 13
layout: lecture
include_vega: true
---

<!-- .slide: class="titleslide" -->

# Data Visualization
<div style="height: 6.0em;"></div>
## Matthew Turk
## Fall 2018
## Lecture 13

---

## Warm-Up Activity

 1. What is the visualization trying to show?
 1. What are its methods?
 1. What are the strengths / weaknesses?

http://scienceofhiv.org/

---

## Today

 * Final Project Update
 * Really big data
 * Data Scavenger Hunt

---

## Next Week

 * Next week, you will present.
 * Each group will have up to 10 minutes.
 * You should present your final product first, whatever form it takes.
 * Walk us back through to the beginning, and why you chose the dataset.

---

## Really Big Data

How do we deal with data that is too large to fit into memory?

 * Can we cycle our operations?
 * Can we use tools to cycle operations?

---

## Operations

Some operations we can manually cycle through, storing only reductions in
memory rather than the full dataset.

Clear candidates:

 * Mean
 * Extrema
 * Histograms and "binning"

Is this the same as incremental updates to a dataset?

(What about the median?)

---

## Tools

 * yt
 * dask
 * domain-specific tools

---

## Data Scavenger Hunt

 * Count off into groups
 * We will work on one dataset at a time
   * Load the dataset into an editor or notebook
   * Prototype a visualization of that dataset by hand
   * Develop a visualization
   * Keep track of iterations on the visualization
 * Two datasets:
   * WDI
   * Names
 * Thirty minutes for each dataset, ten minutes of presentation after

