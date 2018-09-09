---
title: Lecture 2
layout: lecture
---
<!-- .slide: class="titleslide" -->

# Data Visualization
<div style="height: 6.0em;"></div>
## Matthew Turk
## Fall 2018
## Lecture 2

---
## Warm-Up Activity

1. What is the visualization trying to show?
1. What are its methods?
1. What are the strengths / weaknesses?
1. (Bonus) Where is the outright error?


https://www.axios.com/the-latest-on-harveys-energy-toll-2479055875.html

---

## Today's Topics

 * JupyterHub
 * Data Formats
 * Operational Palette
 * Notebook walkthrough
   * Data structures: lists, dicts, sets
   * Iteration
   * Plotting
   * Numpy and indexing

---

<!-- .slide: data-background-image="images/viz_diagram.svg" data-background-size="contain"-->

---

<!-- .slide: class="two-floating-elements" -->

## Files, Data, and Organization

* Text
  * ASCII (raw)
  * CSV / TSV
  * JSON
* Binary
  * HDF5
  * PNG/BMP/GIF/JPG/etc
  * Excel
  * Arrow
* Query-based
  * SQL
  * JSON/REST

<div class="right" markdown=1>

![](diagrams/row_col.svg)

</div>

---

## Organization

| | Column 1 | Column 2 | Column 3 | Column 4 |
|-|-|-|-|-|
|Row 1|11|21|31|41|
|Row 2|12|22|32|42|
|Row 3|13|23|33|43|

Internally, this data is stored linearly, with one value immediately following
another.  We can do this in two methods:

||||||||||||
|:-|-|-|-|-|-|-|-|-|-|-|-|-|
| Row | 11 | 21 | 31 | 41 | 12 | 22 | 32 | 42 | 13 | 23 | 33 | 43 |
| Column | 11 | 12 | 13 | 21 | 22 | 23 | 31 | 32 | 33 | 41 | 42 | 43 |
<!-- .element: class="fragment" -->

---

### Organization: Row

||||||||||
|-|-|-|-|-|-|-|-|-|-|-|
| 11 <!--.element: class="table-hl" -->| <!--.element: class="table-hl" -->21 | 31 | 41 | 12 | 22 | 32 | 42 | 13 | 23 | 33 | 43 |

In row-oriented storage, successive _fields_ for a single _record_ are
adjacent.

<div style="height: 2.0em;"></div>

### Organization: Column

||||||||||
|-|-|-|-|-|-|-|-|-|-|-|
| 11 <!--.element: class="table-hl" -->| 12 | 13 | <!-- .element: class="table-hl" --> 21 | 22 | 23 | 31 | 32 | 33 | 41 | 42 | 43 |

In column-oriented storage, successive _records_ for a single _field_ are
adjacent.

---

## CSV (Comma-separated values)

| Column 1 | Column 2 | Column 3 | Column 4 | Column 5 |
|-|-|-|-|-|
| . | . | . | . | . |
| . | . | . | . | . |
| . | . | . | . | . |
| . | . | . | . | . |

<div style="height: 2.0em;"></div>

 * Lowest-common denominator format
 * Flexible delimiters
 * Ad hoc comments and headers
 * Row-oriented
 * Row-size can vary: no implicit indexing

---

```
...
390,1.83970e-003,-4.53930e-004,1.21520e-002
395,4.61530e-003,-1.04640e-003,3.11100e-002
400,9.62640e-003,-2.16890e-003,6.23710e-002
405,1.89790e-002,-4.43040e-003,1.31610e-001
410,3.08030e-002,-7.20480e-003,2.27500e-001
415,4.24590e-002,-1.25790e-002,3.58970e-001
420,5.16620e-002,-1.66510e-002,5.23960e-001
425,5.28370e-002,-2.12400e-002,6.85860e-001
...
```

---

```

390,1.83970e-003,-4.53930e-004,1.21520e-002
```

If we assume ASCII encoding, this becomes:

| | | |
|-|-|-|
|"390" <!-- .element: class="table-hl" --> |51 |57 |48 |
<!-- .element: style="margin-left: 0.2em;" -->

Breaking this further down, we encode each character:

||||||||||
|-|-|-|-|-|-|-|-|-|
|51 <!-- .element: class="table-hl" --> | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 1 |
|57 <!-- .element: class="table-hl" --> | 0 | 0 | 1 | 1 | 1 | 0 | 0 | 1 |
|48 <!-- .element: class="table-hl" --> | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
<!-- .element: style="margin-left: 0.2em;" -->

---
```

390,1.83970e-003,-4.53930e-004,1.21520e-002
```

This is then translated into a floating point number:

||||||||||
|-|-|-|-|-|-|-|-|-|
|390.0 <!-- .element: class="table-hl" --> | 0 | 0 | 0 | 0 | 0 | 96 | 120 | 64 |
<!-- .element: style="margin-left: 0.2em;" -->

---
```

390,1.83970e-003,-4.53930e-004,1.21520e-002
```

|||||||||||||
|-|-|-|-|-|-|-|-|-|-|-|-|
| "1.83970e-03" <!-- .element: class="table-hl" -->| 49 | 46 | 56 | 51 | 57 | 55 | 48 | 101 | 45 | 48 | 51 |
<!-- .element: style="margin-left: 0.2em;"-->

And this is translated into a floating pointer number as well:

||||||||||
|-|-|-|-|-|-|-|-|-|
|1.83970e-003 <!-- .element: class="table-hl" -->  | 2 | 166 | 103 | 213 | 66 | 36 | 94 | 63 |
<!-- .element: style="margin-left: 0.2em;"-->

---

## JSON

| | | |
|:-|:-|:-|
| Record 1 | Record 2 | Record 3 |

<div style="height: 2.0em;"></div>

 * Row-oriented
 * Potentially-unknown subcomponent sizes (lists of lists)
 * Common response to REST APIs
 * Multiple types
   * String
   * Number
   * Object (JSON)
   * Array (list)
   * Boolean
   * null

---

```
[
 ...
 {"Agency Name":"University of Illinois",
  "Address":"501 E Daniel",
  "City":"Champaign",
  "Zip code":61820,
  "Year Acquired":1992,
  "Year Constructed":1935,
  "Square Footage":21845,
  "Total Floors":5
 }, 
 ...
]
```

<div style="height: 2.0em;"></div>

 * `[` and `]` indicate an array
 * `{` and `}` indicate a JSON object (or mapping)
 * `"` indicates a string
 * Numbers are, well, numbers.

---

## HDF5

| | | |
|:-|:-|:-|
| Column 1 | Column 2 | Column 3 |

<div style="height: 2.0em;"></div>

 * Columnar, chunked store
 * Flexible data types in-memory and on-disk
 * Hyperslab and boolean indexing
 * Fine-grained key/val metadata
 * Groups & hierarchies
 * Extensible types:
   * Numeric
   * Fixed-length strings
   * Variable strings

---

## Doing Stuff with Data

Now that we understand a few ways that data can be stored, let's do some things
to it.

---

<div class="left">
![](images/palette.svg)<!-- .element: style="height: 20em;" -->
</div>

<div class="right" style="font-size: 150%;">
<div style="height: 4.0em;"></div>
You have a palette of operations to apply.
</div>

---

## Filtering Operations

 * Relationships:
   * Equality, inequality
   * Quantitative value (less than, greater than)
   * Intersection, disjoint
 * Subsampling
   * Regular sampling
   * Randomized sampling
   * Nyquist frequency
 * Related data queries
   * Queries on other columns at fixed row location
   * External membership queries

|||||||||||||
|-|-|-|-|-|-|-|-|-|-|-|-|
|&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" -->|
|&nbsp;<!-- .element: class="table-hl" --> |&nbsp; |&nbsp; |&nbsp; |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" --> |&nbsp; |&nbsp;<!-- .element: class="table-hl" --> |&nbsp; |&nbsp; |&nbsp;<!-- .element: class="table-hl" --> |&nbsp;<!-- .element: class="table-hl" -->|

---

## Relationships Examples

 * Equality
   * Identity
   * Quantitative values
 * Ordering or quantitative
   * Less than (or equal)
   * Greater than (or equal)
   * "Comes before" and "Comes after"
 * Set-based operations
   * "Is a member"
   * "Is not a member"
   * "Shares members"
   * "Shares no members"

---

## Examples

### Equality

```
value == "hello"
value == 10
```

### Ordering and Quantitative

```
value < 30
value > July 1, 2010
```

### Set-Based

```
value in ("red", "blue")
value not in (3.141, 2.7)
```

---

## Sampling

We can choose a subset of points and use those to explore our data.  This is
not without its possible faults, however.

---

<!-- .slide: data-background-image="images/sampling_fig1.png" data-background-size="contain" -->

---

<!-- .slide: data-background-image="images/sampling_fig2.png" data-background-size="contain" -->

---

<!-- .slide: data-background-image="images/sampling_fig3.png" data-background-size="contain" -->

---

<!-- .slide: data-background-image="images/sampling_fig4.png" data-background-size="contain" -->

---

<!-- .slide: data-background-image="images/sampling_fig5.png" data-background-size="contain" -->

---

<!-- .slide: data-background-image="images/sampling_fig6.png" data-background-size="contain" -->

---

## Summary

 * Next week, we will cover mutations, histograms, and the elements of a
visualization.
 * Next week you will receive your first coding assignment.
