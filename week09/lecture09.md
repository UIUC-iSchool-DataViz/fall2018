---
title: Lecture 9
layout: lecture
include_vega: true
---

<!-- .slide: class="titleslide" -->

# Data Visualization
<div style="height: 6.0em;"></div>
## Matthew Turk
## Spring 2018
## Lecture 9

---

## Warm-Up Activity

 1. What is the visualization trying to show?
 1. What are its methods?
 1. What are the strengths / weaknesses?


 * Image on following slide is from https://wapo.st/2HVLqUw

---

<!-- .slide: data-background-image="https://pbs.twimg.com/media/DY5aB0MVQAIoCPY.jpg" data-background-size="auto 90%" -->

---

## "Previously on _Data Viz_..."

 * Basics of widgets and traitlets
 * Some `bqplot`
 * Network graphs

---

## Today

 * Evaluating Visualization Systems
 * Assignment 3
 * Interactivity
 * More `bqplot`
 * Markdown (leading up to Idyll)

---

## Evaluating Visualization Engines

 * Costs
 * Functionality
 * Aesthetics


---

## Choices

 * Can I get ahold of this software?
 * Do I install it, or do I use it on a server?
 * What's the user interface like?
 * Is it declarative or is it procedural?

---

## License: Software

 * What can you do with the software?
 * Can you study the software?
 * Who can you share it with?
 * Who can you give your derivative works to?

---

## License: Software

 * Copyleft: share and share-alike
 * Non-copyleft: share, but don't necessarily need to share-alike
 * https://choosealicense.com/

---

## License: Data

 * What can you do with the data?
 * How do you credit that data?
 * Can the data be redistributed, remixed, modified?
 * http://opendefinition.org/guide/data/
 * https://theodi.org/guides/publishers-guide-open-data-licensing

---

## Accessibility

 * Is the software installed locally on your machine?
 * Is it hosted at a local or remote instance?
 * Who owns the visualizations, and how is access to them controlled?

---

## Interface

How do you interact with the software?

 * Declarative: how do you want the plot to look?
 * Procedural: what are the steps to make the plot look that way?

---

## Example Declarative

```python
Chart(df).mark_bar().encode(
    X('precipitation', bin=True),
    Y('count(*):Q')
)
```

(From [Altair Docs](https://altair-viz.github.io/tutorials/exploring-weather.html))

<!-- .slide: data-background-image="images/altair_example01.png" data-background-size="30% auto" data-background-position="right 20% bottom 20%" -->

---

## Evaluation: Costs

The "cost" of software is not exclusively the number of dollars you place on
the counter when you get a big cardboard box with marketing blurbs on the side.

Think about cost in several ways:

 * Monetary cost for *you* to use the software
 * Monetary cost for *someone else* to view your creations
 * Temporal cost of setting up
 * Cognitive cost for learning and using the system
 * Transmission cost for sharing your creations

---

## Evaluation: Aesthetics

Visualization is trendy.

When you construct something, think about the different ways it will be
interpreted:

 * How will the viewer understand the story of the data?
 * What will the _message_ of the visualization be?
 * Does the visualization say something about you and your handling of the data
   or utilization of tools?

---

## Assignment 3

Your assignment is to pick three of the following possibilities and write up a
set of comparisons for constructing the *same* visualization.

 * Matplotlib
 * Bokeh
 * Plotly
 * D3 / Vega / Vega-lite / Altair
 * bqplot
 * R / RStudio

These comparisons should be:

 * What is the license for the software?
 * What is the focus of the software?
 * Does it have interactivity, and how easy is it?
 * What are the pros and cons of using it?

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

## bqplot interaction

As noted in a previous class, bqplot widgets are all based on ipywidgets.  This
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

## Markdown

Next week, we will be discussing vega-lite in detail, as well as idyll.

We will be using markdown.  You can think of it as standard text that we mark
"up" to provide indications of formatting:

 * To **bold**, use `**two asterisks**`
 * You can _italicize_ with `_underscores_`
 * Try out making bullet lists with `*` on each line
 * Links are fun: `[link text](http://example.com/)`
