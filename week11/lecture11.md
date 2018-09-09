---
title: Lecture 11
layout: lecture
include_vega: true
---

<!-- .slide: class="titleslide" -->

# Data Visualization
<div style="height: 6.0em;"></div>
## Matthew Turk
## Fall 2018
## Lecture 11

---

## Warm-Up Activity

 1. What is the visualization trying to show?
 1. What are its methods?
 1. What are the strengths / weaknesses?

https://vimeo.com/239582792

---

## Last Time

 * Maps
 * Idyll

---

## Today

 * Iterative Design
 * Assignment Update
 * Final Project

---

## Three Classes of Visualizations

1. Viz for Self
1. Viz for Peers
1. Viz for Others

---

## Iterative Design: Viz for Self

Let's talk about exploration.

What are characteristics of data that would influence how you visualize it?

---

## Iterative Design: Viz for Self

What do you want to get out of visualization for yourself?

 * Do you want to find meaning?
 * Do you want to understand how to guide further visualizations?
 * Is the story you want to tell already known to you?
 * What __shortcuts__ can you take?

---

## Iterative Design: Viz for Peers

When you change your focus to visualize for others, you have to make different
choices about representing the information.

What are some things you might change?

---

## Iterative Design: Viz for Peers

To design a visualization for your peers, you need to step back and think about
the common shared language you have with them.

 * What do they know?
 * What conventions will they assume?
 * Are they able to fill in the blanks of information?

---

## Iterative Design: Viz for Others

The hardest type of visualization is for those about whom you know __very
little__.

What common basis can we make for these visualizations?

What is our responsibility with visualizations such as these?

---

## Final Project

Your final project is due on April 30.

That is *three weeks*.

You will have three components:

1. Viz for Self (Due April 16)
1. Viz for Peers (Due April 23)
1. Viz for Others (Due April 30)

---

## Final Project: Part 1

This will be graded individually.  Due by class on Monday, submitted via
Moodle.  Submit in a Jupyter notebook.

 * Organize yourselves into groups of 4
 * Identify a dataset to explore.
   * This will be iterative!  You probably won't get one you like on the first
     try.
   * Check out sources like [data.world](https://data.world/),
     [data.illinois.gov](https://data.illinois.gov/),
     [data.gov](https://data.gov/),
     [developer.marvel.com](https://developer.marvel.com/),
     [IDB](https://databank.illinois.edu/), etc.
 * Explore the dataset in a Jupyter notebook.  **Do not delete any cells.**
 * Summarize the characteristics of the dataset in words: what does it
   represent, what are the fields/columns/rows, what data types are they, etc

---

## Final Project: Part 1 (cont)

Your datasets need to be submitted as well.  To do this, include this
information in your Jupyter notebook:

 * What is the "name" of the dataset?
 * Where did you obtain it?
 * Where can we obtain it?  (i.e., URL)
 * What is the license of the dataset?  What are we allowed to do with it?
 * How big is it in file size and in items?

---

## Final Project: Part 2

This will be graded per group.  Submit in a Jupyter notebook.

 * Using your dataset, generate visualizations that explore the data in a
   guided way.
 * Your first component was focused on exploring the data in an unguided way.
   This component is about visualizing the data in a guided way.
 * Construct visualizations that explore each aspect you identified, with
   discussion and descriptions.
 * If you can identify improvements to the visualizations that come from
   interactivity, implement that.
 * The visualizations should utilize visual language relevant for "Viz for
   Peers."
    * Each and every plot should contain all relevant information: appropriate
      units, labeling, etc
    * Annotate and narrate particular pieces of interest (if there are any)
    * Use standard visual representations and augment these if necessary

---

## Final Project: Part 3

You will submit this as your final project and will present it to the class.

You may submit one or more of the following items, but they *must* be in a
repository that is rendered as HTML.  More information will be coming shortly.

This component will include a "for others" visualization that is deeply
narrative with appropriate interactive (or static) content and shared on a
website.

Some possible ways to approach this:

 * Infographic
 * Idyll
 * Jupyter notebook
 * Raw HTML

---

## Assignment Three

You should have access to assignment three.  It is short.  It is due by
midnight next Monday night.

---

## Idyll Again

Let's return to Idyll.  Go to your Jupyter Hub environment.  Create a terminal.

```
source activate /home/shared/sp18-is590dv/conda_envs/is590dv-default/
yo idyll
```

This will autogenerate a project for you.  Go into that directory and type `npm
start`.

This will watch for changes and rebuild.  It tells you that you can connect to
it in a web browser but **this is a lie**.  You have to browse to the location
in your tree view and then go to the directory `build` and choose `index.html`
in the Jupyter main page.

---

## Breakout: Birth Names (Part 1)

Last week, we talked about how one would represent a birth name browser.

What did you come up with?

---

## Breakout: Birth Names (Part 2)

On the Jupyterhub, you have access to a `names` directory:

```
/home/shared/sp18-is590dv/data/names
```

This has a bunch of files, with the counts of birth names per year and
categorized by sex assigned at birth.

---

## Breakout: Birth Names (Part 3)

You are to break into groups and decide how to proceed.  We need to:

1. Explore the data
1. Generate an interactive visualization
1. See if we can get it into Idyll

---

## Idyll and Data

What are the barriers to using Idyll with really big, unfiltered data?
