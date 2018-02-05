---
title: Lecture 3
layout: lecture
---
<!-- .slide: class="titleslide" -->

# Data Visualization
<div style="height: 6.0em;"></div>
## Matthew Turk
## Spring 2018
## Lecture 2

---

## Today's Topics

 * Operational Palette: Mutations
   * Histograms and aggregations
   * Splitting
 * Elements of a visualization

---

## Mutation Operations

 * Mathematical operations, such as injective operations.
   * Logarithmic versus linear representations
   *  Arithmetic or multiplicative relationships
   *  Manifold remapping
 * Smoothing (reduction; not injective)
 * Histograms (reduction; not injective)

---

## Binning and Histograms

<!-- .slide: data-background-image="diagrams/circles.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

<div style="width: 50%">
We can aggregate data points according to their position along defined
dimensions.
</div>

---

## Binning and Histograms

<!-- .slide: data-background-image="diagrams/circles_grid.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

<div style="width: 50%">
We can aggregate data points according to their position along defined
dimensions.
</div>


---

## Binning and Histograms

<!-- .slide: data-background-image="diagrams/circles_grid_filled.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

* $\Sigma 1$ (count)
* $\Sigma v_i$ (sum)
* $\frac{\Sigma v_i }{ \Sigma 1}$ (average)
* $\frac{\Sigma v_i w_i}{\Sigma w_i}$ (weighted average)

---

## Splitting Operations

We can split or group collections of data based on some characteristic.

<!-- .slide: data-background-image="diagrams/split.svg" data-background-size="65% auto" data-background-position="top 5.0em center"-->

---

## Splitting Operations

We can split or group collections of data based on some characteristic.

<!-- .slide: data-background-image="diagrams/split_finished.svg" data-background-size="65% auto" data-background-position="top 5.0em center"-->


---

## Python Basics

A review, from last week:

 * Variables
   * Strings, numbers, mutability
   * Assignments and comparisons
 * Data Structures
   * Lists
   * Dictionaries
 * Flow control
   * for / while
   * if / elif / else
   * functions
 * Packages
   * `matplotlib`
   * `numpy`
   * `pandas`

---

## Variables

```python
my_name = "Matt"

n_students = 7
n_students += 1

n_students_orig = n_students
n_students += 3
```

---

## Data Structures

```
c = []
c.append(2)
c.append('hi there')

d = {}
d[1] = 'b'
d['hello'] = 10
```

---

## Flow Control

```python
for obj in [1, 2, 3]:
    print(obj)

a = []
while len(a) < 5:
  a.append(input("Hello!"))
```

---

## Drawing

How do we draw an image?

---

<iframe width="1024" height="576"
src="https://www.youtube.com/embed/qfDxiVpgjiM" frameborder="0"
allow="autoplay; encrypted-media" allowfullscreen></iframe>

---

## Let's draw a line.

<!-- .slide: data-background-image="diagrams/line.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw a line.

<!-- .slide: data-background-image="diagrams/line.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

```
start = (x0, y0)
end   = (x1, y1)
width = 1.0
```
<!-- .element: class="left_abs" style="width: 50%"-->

---

## Let's draw a line.

<!-- .slide: data-background-image="diagrams/line_grid.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw a line.

<!-- .slide: data-background-image="diagrams/line_grid_fill.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw a line.

<!-- .slide: data-background-image="diagrams/line_grid_fine2.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw a line.

<!-- .slide: data-background-image="diagrams/line_grid_fine2_fill.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw a line.

<!-- .slide: data-background-image="diagrams/line_grid_fine4.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw a line.

<!-- .slide: data-background-image="diagrams/line_grid_fine4_fill.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Raster Representation

| | | | | |
|-:|-|-|-|-|
| | 1 Line | 2 Lines | 30 Lines | 1000 Lines |
|`600x600` | 45kb | 45kb | 45kb | 45kb |
|`1200x1200` | 180kb | 180kb | 180kb | 180kb |
|`2400x2400` | 720kb | 720kb | 720kb | 720kb |

(uncompressed, 1-bit images)

---

## Vector Representation

| | | | | |
|-:|-|-|-|-|
| | 1 Line | 2 Lines | 30 Lines | 1000 Lines |
|`600x600` | 5 bytes | 10 bytes | 150 bytes | 5000 bytes |
|`1200x1200` | 5 bytes | 10 bytes | 150 bytes | 5000 bytes |
|`2400x2400` | 5 bytes | 10 bytes | 150 bytes | 5000 bytes |

(uncompressed, single precision)

---

## Let's draw a circle.

<!-- .slide: data-background-image="diagrams/single_circle.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

```
center = (x0, y0)
radius = 1.0
```
<!-- .element: class="left_abs" style="width: 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="diagrams/dots.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="diagrams/dots_grid.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="diagrams/dots_grid_fill.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="diagrams/dots_grid_fine2.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="diagrams/dots_grid_fine2_fill.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="diagrams/dots_grid_fine4.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="diagrams/dots_grid_fine4_fill.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

---

## Raster Representation

| | | | | |
|-:|-|-|-|-|
| | 1 Circle | 2 Circles | 30 Circles | 1000 Circles |
|`600x600` | 45kb | 45kb | 45kb | 45kb |
|`1200x1200` | 180kb | 180kb | 180kb | 180kb |
|`2400x2400` | 720kb | 720kb | 720kb | 720kb |

(uncompressed, 1-bit images)

---

## Vector Representation

| | | | | |
|-:|-|-|-|-|
| | 1 Circle | 2 Circles | 1000 Circles | 1e6 Circles |
|`600x600` | 3 bytes | 6 bytes | 3000 bytes | 3 Mb |
|`1200x1200` | 3 bytes | 6 bytes | 3000 bytes | 3 Mb |
|`2400x2400` | 3 bytes | 6 bytes | 3000 bytes | 3 Mb |

(uncompressed, single precision)

---
