---
title: Lecture 3
layout: lecture
---
<!-- .slide: class="titleslide" -->

# Data Visualization
<div style="height: 6.0em;"></div>
## Matthew Turk
## Fall 2018
## Lecture 3

---

## Warm-Up Activity

1. What is the visualization trying to show?
1. What are its methods?
1. What are the strengths / weaknesses?

https://projects.fivethirtyeight.com/mortality-rates-united-states/

---

## Today's Topics

 * How does drawing work?
 * Operational Palette: Mutations
   * Histograms and aggregations
   * Splitting
 * Elements of a visualization

---

## Drawing

How do we draw an image?

---

<iframe width="1024" height="576"
src="https://www.youtube.com/embed/qfDxiVpgjiM" frameborder="0"
allow="autoplay; encrypted-media" allowfullscreen></iframe>

---

## Let's draw a line.

<!-- .slide: data-background-image="images/line.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw a line.

<!-- .slide: data-background-image="images/line.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

```
start = (x0, y0)
end   = (x1, y1)
width = 1.0
```
<!-- .element: class="left_abs" style="width: 50%"-->

---

## Let's draw a line.

Convert to an 8x8 image.

<!-- .slide: data-background-image="images/line_grid.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw a line.

Convert to an 8x8 image.

<!-- .slide: data-background-image="images/line_grid_fill.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw a line.

Convert to an 16x16 image.

<!-- .slide: data-background-image="images/line_grid_fine2.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw a line.

Convert to an 16x16 image.

<!-- .slide: data-background-image="images/line_grid_fine2_fill.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw a line.

Convert to an 32x32 image.

<!-- .slide: data-background-image="images/line_grid_fine4.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw a line.

Convert to an 32x32 image.

<!-- .slide: data-background-image="images/line_grid_fine4_fill.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Representations

We will concern ourselves with understanding two representations of an image:
the **raster** representation and the **vector** representation.

---

## Representations: raster

 * Each pixel is represented as a color
 * Common file formats such as GIF, JPG, PNG
 * Compression can be lossy (JPG) or lossless (PNG)

In a raster image, you describe precisely what to display.

---

## Representations: vector

 * Each component is defined as a "drawing" component, or some action to be
   taken by the rendering engine.  This can include paths, patterns,
   shapes, and text.  Components have properties associated with them.
 * Common file formats are SVG, PDF, EPS
 * The display does not exist until it is "rendered."
 * Options for compression include (lossless) text compression, although
   the rendering engine can simplify display

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

<!-- .slide: data-background-image="images/single_circle.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

```
center = (x0, y0)
radius = 1.0
```
<!-- .element: class="left_abs" style="width: 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="images/dots.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="images/dots_grid.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="images/dots_grid_fill.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="images/dots_grid_fine2.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="images/dots_grid_fine2_fill.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="images/dots_grid_fine4.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

---

## Let's draw many circles.

<!-- .slide: data-background-image="images/dots_grid_fine4_fill.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

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

## Text

Modern fonts are composed of glyphs defined by functional forms of their shape.
Font rendering engines such as freetype2 can generate bitmaps for fonts
rendered at specific resolutions.

In raster image file formats, fonts do not need to be embedded: the rasterized,
rendered version is the one that is transmitted to the viewer.

In vector file formats, fonts can either be embedded (in whole or in part) or
fallback fonts available to the rendering engine can be used.

---

<img src="images/font_A.png">

<img src="images/font_O.png">

<img src="images/font_T.png">

<img src="images/font_X.png">

---

## Discussion Time

In your groups: can you come up with a few situations in which a raster
representation is "obviously" better and a few in which a vector representation
is "obviously" better?

Some things to consider: 

 * Where is it being displayed?
 * How is the image being transmitted, and what concerns are there?
 * What is in the image?

---

## Visualization Palette

This week we will discuss "mutation" of data.

---

## Mutation Operations

 * Mathematical operations, such as injective operations.
   * Logarithmic versus linear representations
   *  Arithmetic or multiplicative relationships
   *  Manifold remapping
 * Smoothing (reduction; not injective)
 * Histograms (reduction; not injective)

Smoothing will be an extensive topic for next week.

---

## Binning and Histograms

<!-- .slide: data-background-image="images/circles.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

<div style="width: 50%">
We can aggregate data points according to their position along defined
dimensions.
</div>

---

## Binning and Histograms

<!-- .slide: data-background-image="images/circles_grid.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

<div style="width: 50%">
We can aggregate data points according to their position along defined
dimensions.
</div>


---

## Binning and Histograms

<!-- .slide: data-background-image="images/circles_grid_filled.svg" data-background-size="auto 75%" data-background-position="right 10% bottom 50%"-->

* $\Sigma 1$ (count)
* $\Sigma v_i$ (sum)
* $\frac{\Sigma v_i }{ \Sigma 1}$ (average)
* $\frac{\Sigma v_i w_i}{\Sigma w_i}$ (weighted average)

---

## Splitting Operations

We can split or group collections of data based on some characteristic.

<!-- .slide: data-background-image="images/split.svg" data-background-size="65% auto" data-background-position="top 5.0em center"-->

---

## Splitting Operations

We can split or group collections of data based on some characteristic.

<!-- .slide: data-background-image="images/split_finished.svg" data-background-size="65% auto" data-background-position="top 5.0em center"-->


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

