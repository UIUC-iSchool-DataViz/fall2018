---
title: Lecture 7
layout: lecture
---
<!-- .slide: class="titleslide" -->

# Data Visualization
<div style="height: 6.0em;"></div>
## Matthew Turk
## Fall 2018
## Lecture 7

---

## Warm-Up Activity

1. What is the visualization trying to show?
1. What are its methods?
1. What are the strengths / weaknesses?


 * https://www.vox.com/platform/amp/policy-and-politics/2018/9/28/17914308/kavanaugh-ford-question-dodge-hearing-chart

---

## This Week

 * Interactivity
 * Some more bqplot
 * Lab work

---

## Interactivity

This week, we'll talk about some basics principles of interactivity in
visualization.

What do you think of when you think of interactive visualizations?

---

## Interactivity: Parameters

<!-- .slide: data-background-image="images/brushlink_01.svg" data-background-size="80% auto" data-background-position="right 50% bottom 50%" -->

 * Point characteristics
 * Axis limits/bounds
 * Transform/scale

---

## Interactivity: Parameters

<!-- .slide: data-background-image="images/brushlink_01.svg" data-background-size="80% auto" data-background-position="right 50% bottom 50%" -->

 * Click-and-drag
 * Rectangle zoom
 * Adjustment

---

## Interactivity: Linking & Brushing

<!-- .slide: data-background-image="images/brushlink_02.svg" data-background-size="80% auto" data-background-position="right 50% bottom 50%" -->

---

## Interactivity: Linking & Brushing

<!-- .slide: data-background-image="images/brushlink_02.svg" data-background-size="80% auto" data-background-position="right 50% bottom 50%" -->

`filter( variable2 > variable1 )`

---

## Interactivity: Linking & Brushing

<!-- .slide: data-background-image="images/brushlink_03.svg" data-background-size="80% auto" data-background-position="right 50% bottom 50%" -->

`filter( variable2 > variable1 )`

---

## Interactivity: Linking & Brushing

<!-- .slide: data-background-image="images/brushlink_04.svg" data-background-size="80% auto" data-background-position="right 50% bottom 50%" -->

`filter( variable2 > variable1 )`

---

## Interactivity: Linking & Brushing

<!-- .slide: data-background-image="images/brushlink_05.svg" data-background-size="80% auto" data-background-position="right 50% bottom 50%" -->

---

## Interactivity: Linking & Brushing

<!-- .slide: data-background-image="images/brushlink_06.svg" data-background-size="80% auto" data-background-position="right 50% bottom 50%" -->

---

## Interactivity: Linking & Brushing

<!-- .slide: data-background-image="images/brushlink_07.svg" data-background-size="80% auto" data-background-position="right 50% bottom 50%" -->

---

<iframe width="1024" height="576"
src="https://www.youtube.com/embed/B7XoW2qiFUA" frameborder="0"
allow="autoplay; encrypted-media" allowfullscreen></iframe>

---

## Implementing This

Two main approaches to the selection process:

 * Concurrent filtering
 * Index-based selection

What are the pros and cons of each?

What are methods of showing "linked" and "brushed" data if you have:

 * Scatter plot
 * Histogram
 * Field / image plot

---

## More bqplot

Today, we return to bqplot to explore interactivity.

Recall that with bqplot, we construct a set of objects that are related:

 * Scales
 * Axes
 * Marks
 * Figures
 * Interactions

---

## Scales

We have dealt primarily with quantitative scales.  bqplot provides several
scales we can utilize:

 * `LogScale`
 * `LinearScale`
 * `DateScale`
 * `OrdinalScale`
 * `ColorScale`
 * A few more as well.

([documentation](https://bqplot.readthedocs.io/en/latest/_generate/bqplot.scales.Scale.html))

---

## Marks

bqplot has several different marks we can explore.  We will utilize a few more
today:

 * `HeatMap`
 * `GridHeatMap`
 * `Bars`
 * `Graph`

([documentation](https://bqplot.readthedocs.io/en/latest/_generate/bqplot.marks.Mark.html))

---

## bqplot interaction

As noted in the previous class, bqplot widgets are all based on ipywidgets.  This
means we use the same systems for describing the two.

We add an interaction to a given figure via the `interaction` keyword argument
to a figure.

---

## bqplot interactors

We will be able to use these different interaction methods:

 * `FastIntervalSelector`
 * `IndexSelector`
 * `BrushIntervalSelector` & `BrushSelector`
 * `MultiSelector` 
 * `LassoSelector`
 * `HandDraw`
 * `PanZoom`
 * `Tooltip`

---

## Last Week's Assignment

Your assignment from last week was:

 * Using traitlets, widgets and bqplot, build a notebook that:
   1. Uses the UFO datasets
   2. Allows changing the x and y fields on a scatter plot from the UFO dataset
   3. Displays tooltips when hovering over individual items
 * Build a second widget that displays binned, aggregate values where you can change:
   1. The field to "bin"
   2. The method of aggregation (sum, mean, min, max, count)
   3. The number of bins

---

## Today's Lab

 * No more than one computer per three people.
 * Starting with your notebook, we will progressively enhance.
 * Create heat maps of the sightings
 * Select based on states (do not use map marks yet)
 * Manually create "bins" for aggregation
 * Use different scales for dates, times, locations

---

## Assignment 4

 * Build a dashboard for the buildings data.
 * Left component:
    * Grid heat map
    * Rows are congressional district
    * Columns are the governmental department
    * Values are sum of total square footage for that set of criteria
 * Right component:
    * line plot
    * x is the year
    * y is total square footage *acquired* that year
 * These two should be *linked* so that you can select cells and that will
   update the square footage plot.
 * Things to think about:
    * Can you keep the x and y ranges static on the line plot?
    * Can you change the style?
