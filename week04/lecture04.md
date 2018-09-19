---
title: Lecture 4
layout: lecture
visible: true
---
<!-- .slide: class="titleslide" -->

# Data Visualization
<div style="height: 6.0em;"></div>
## Matthew Turk
## Fall 2018
## Lecture 4

---

## Warm-Up Activity

1. What is the visualization trying to show?
1. What are its methods?
1. What are the strengths / weaknesses?

https://www.nytimes.com/interactive/2018/09/19/upshot/facebook-county-friendships.html

---

## Today's Topics

 * Data Types in a Visualization
 * Distributions

---

## Data Types

When we are examining data, what can we look for?

 * Does this data describe a **geometric** object?
 * Are the data points **connected** to each other?
 * Can we describe data points with a fixed set of **categories**?
 * Is there a **quantity** associated with the data?
 * Are the datapoints **continuous** along one or more dimensions?

---

## Example: Geometric Object

| v1 | v2 | cat |
|:-|:-|-:-|
|8.5|-9| r |
|10|-8| r |
|11.5|-7| r |
|12.5|-5.5| r |
|13|-4| r |
| ... | ... | ... |
|-2.5|-6|b|
|-1.5|-7|b|
| ... | ... | ... | 
<!-- .element class="left" -->

---

## Example: Geometric Object

| v1 | v2 | cat |
|:-|:-|-:-|
|8.5|-9| r |
|10|-8| r |
|11.5|-7| r |
|12.5|-5.5| r |
|13|-4| r |
| ... | ... | ... |
|-2.5|-6|b|
|-1.5|-7|b|
| ... | ... | ... | 
<!-- .element class="left" -->

<!-- .slide: data-background-image="images/mushroom.svg" data-background-size="30% auto" data-background-position="right 20% bottom 50%" -->

---

## Examples: Quantity

We can encode the values associated with a data point by modifying how we
express it.  To do so, we need to be able to identify the different components
of representation, and how we can scale between them.

---

## Dimensions of Representation

Given a single datum on a visualization, we can control several different
components of its representation.

 * Position

<!-- .slide: data-background-image="images/dimensions_1.svg" data-background-size="auto 50%" data-background-position="right 20% bottom 50%"-->

---

## Dimensions of Representation

Given a single datum on a visualization, we can control several different
components of its representation.

 * Position
 * Color

<!-- .slide: data-background-image="images/dimensions_2.svg" data-background-size="auto 50%" data-background-position="right 20% bottom 50%"-->

---

## Dimensions of Representation

Given a single datum on a visualization, we can control several different
components of its representation.

 * Position
 * Color
 * Size

<!-- .slide: data-background-image="images/dimensions_3.svg" data-background-size="auto 50%" data-background-position="right 20% bottom 50%"-->

---

## Dimensions of Representation

Given a single datum on a visualization, we can control several different
components of its representation.

 * Position
 * Color
 * Size
 * Shape

<!-- .slide: data-background-image="images/dimensions_4.svg" data-background-size="auto 50%" data-background-position="right 20% bottom 50%"-->

---

## Dimensions of Representation

Given a single datum on a visualization, we can control several different
components of its representation.

 * Position
 * Color
 * Size
 * Shape
 * Relationship

<!-- .slide: data-background-image="images/dimensions_5.svg" data-background-size="auto 50%" data-background-position="right 20% bottom 50%"-->

---

<iframe width="1024" height="576"
src="https://www.youtube.com/embed/kY-pUxKQMUE" frameborder="0"
allow="autoplay; encrypted-media" allowfullscreen></iframe>

---

http://adsabs.harvard.edu/abs/2013ApJ...763...38S 

([This
plot](http://iopscience.iop.org/article/10.1088/0004-637X/763/1/38/meta#apj455166f4)
might be a bit too busy.)

<!-- .slide: data-background-image="images/skory_et_al.png" data-background-size="auto 75%" data-background-position="right 20% bottom 50%" -->

---

## Continuous Data

Data organized in a continuous fashion along one or more dimensions can enable
additional operations.

<!-- .slide: data-background-image="images/cube.png" data-background-size="auto 50%" data-background-position="right 20% bottom 50%"-->

---

## Continuous Data

Data organized in a continuous fashion along one or more dimensions can enable
additional operations.

<!-- .slide: data-background-image="images/cube_z_slice.png" data-background-size="auto 50%" data-background-position="right 20% bottom 50%"-->


---

## Distributions

Given a point or set of points, how do we make them into a "continuous"
distribution?

<!-- .slide: data-background-image="images/binning_1.svg" data-background-size="75% auto" data-background-position="bottom 30% center"-->

---

## Distributions

Given a point or set of points, how do we make them into a "continuous"
distribution?

<!-- .slide: data-background-image="images/binning_2.svg" data-background-size="75% auto" data-background-position="bottom 30% center" -->

---

## Distributions

Given a point or set of points, how do we make them into a "continuous"
distribution?

Uniform-width bins allow us to compute:

```python
bin_id = floor( (value - left_edge ) / bin_width)
```

<!-- .slide: data-background-image="images/binning_2.svg" data-background-size="75% auto" data-background-position="bottom 30% center" -->

---
## Distributions

Given a point or set of points, how do we make them into a "continuous"
distribution?

Non-uniform bins require searching.

<!-- .slide: data-background-image="images/binning_3.svg" data-background-size="75% auto" data-background-position="bottom 30% center" -->

---

## Binning and Histograms

<!-- .slide: data-background-image="../week03/images/circles_grid_filled.svg" data-background-size="auto 75%" data-background-position="right 20% bottom 50%"-->

* $\Sigma 1$ (count)
* $\Sigma v_i$ (sum)
* $\frac{\Sigma v_i }{ \Sigma 1}$ (average)
* $\frac{\Sigma v_i w_i}{\Sigma w_i}$ (weighted average)

---

## Summation

Useful for describing total quantity measured.

 * Inches of rain.
 * Total time of recorded UFO sitings in the area.
 * How many votes were cast?

---

## Arithmetic Average

Useful for describing average or mean quantity.

* Average rainfall in the area.
* Average time of UFO sighting.
* Who was the average candidate?

---

## Weighted Average

Useful for describing mean, but not strict arithmetic mean.

* Average rainfall, weighted by how humid it was that day.
* What was the most commonly seen UFO type, as a function of the time it was
  seen?
* What's the mean age of a voter, as a function of the total years of
  experience in the election?

---

## Scales and Scaling

Displaying a quantity requires assigning to it a given representation.
A common mechanism for doing this is to vary the color of a particular region
or set of display units with respect to the quantity expressed in those units.

In mathematical notation, we first "normalize" our data value by assigning to a
range:

$g(v) \rightarrow v' \in [0, 1]$

and then, given a color mapping function, assign to this a given color:

$f(v') \rightarrow (R, G, B)$

---

## Scales and Scaling

Group discussion:

  * How is this similar to or different from our discussions of "binning" and
    histogramming?
  * What are some functions we can use for $g(v)$?
  * What are some considerations we need to take into account for variable
    bins?

---

## Histograms and Binning

Group work:

Write a function -- in plain language at first, and then in python -- that
takes a set of values, a series of bin "edges," and returns to you the integer
IDs of the bins that each belongs to.

---

## Assignment 2

Using one of the tools that we have discussed (matplotlib or vega-lite),
construct a visualization of the Illinois Building Inventory that communicates
the following information:

 * Relationship between the year acquired and the year constructed
 * Total square footage as a function of congressional district
 * Average square footage per floor as a function of congressional district
 * Square footage for the five most common departments as a function of year

Each component will be worth 5 points and *must* be a completely communicative
visualization -- including labels and a one paragraph writeup of successes and
shortcomings in your approach.  Submit a notebook or a set of JSON gists to
Moodle.  All source code must be in these files.
