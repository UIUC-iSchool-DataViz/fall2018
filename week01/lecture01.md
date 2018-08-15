---
title: Lecture 1
layout: lecture
---
<!-- .slide: class="titleslide" -->

# Data Visualization
<div style="height: 6.0em;"></div>
## Matthew Turk
## Fall 2018

---
<!-- .slide: class="vertical_center" -->
## Basics

10AM-12:50PM Wednesdays, 2101 Everitt Elec & Comp Engr Lab

Matthew Turk - `mjturk@illinois.edu`
Office Hours: Friday 2-4, LIS 222

TA Si Chen - `sichen12@illinois.edu`

https://uiuc-ischool-dataviz.github.io/fall2018/

---

## Timed activity!

On a piece of paper:

* What are the most memorable movies you saw over the last year?
* Do you prefer cats or dogs?
* How would you quantify your experience in visualization?
* What would you guess the square footage of this building is?
* People per row in this class.

notes:
This is our first introduction...

---

Break into groups based on your numbers, and visualize the results by whatever method you choose: by hand, by computer, or otherwise.

Affix to or inscribe upon your sheet of paper.

---

 * goo.gl/5nHcDM
 * goo.gl/RPDr3K

---

## Syllabus

 * Week 1 (Jan 22): Introduction, syllabus, examples, and some basics
 * Week 2 (Jan 29): Operational palette, structured python, and files
 * Week 3 (Feb 5): Quantitative plots, plot components
 * Week 4 (Feb 12): Histograms and distributions
 * Week 5 (Feb 19): R and ggplot
 * Week 6 (Feb 26): Images: color, colormaps
 * Week 7 (Mar 5): Comparisons between datasets

---

## Syllabus

 * Week 8 (Mar 12): Comparisons between different datasets
 * Week 9 (Mar 26): Network visualization
 * Week 10 (Apr 2): Principles of interactive visualization
 * Week 11 (Apr 9): Interactive visualization with Python
 * Week 12 (Apr 16): Scientific visualization
 * Week 13 (Apr 23): Advanced topics
 * Week 14 (Apr 30): Group presentations

---

# Overview - Themes
1. What are the components of an effective visualization of quantitative data?
1. What tools and ecosystems are available for visualizing data?
1. What systems can be put in place to generate visualizations rapidly and with high-fidelity representation?


---

# Overview - Goals

* Students will be able to communicate information and data through visual representation
* Students will be able to examine a visualization and understand how it can be improved upon
* Students will have facility with the commonplace tools used for visualization, and a deeper understanding of where those tools have shortcomings

---

## Structure of Class

 * Topic introduction and lecture (60-90 minutes)
 * Hands-on, collaborative coding
 * Wrap-up

---

## Grading

 * 70% Weekly assigmments in prose or code form
 * 30% Final project

---

## Assignments

 * Weekly, assigned in class, collected following class
 * Prose assignments: deconstruction or analysis of a visualization or a dataset.
 * Coding assignments: Jupyter notebooks following step by step through
   collection and processing of data and the visualization of that data

---

## Plagiarism

 * Plagiarism is about copying ideas.
 * Cite all code you utilize from elsewhere.


---

## Our tools

 * Python, with some R and Javascript along the way
 * Jupyter and Jupyter notebooks on a Jupyterhub, with nbgrader
 * The occasional usage of a shell such as bash
 * Once in a while some git, and GitHub
 * Slack

---

![](images/jh_arch.svg)

---

## Jupyterhub Guidelines

 * [jupyterhub.ischool.illinois.edu](https://jupyterhub.ischool.illinois.edu/)
 * Please store your notebooks on- and off-site
 * Submissions will be via `nbgrader`
 * Data will be available at `/home/shared/spr18-is590dv/data/`
 * Previous lectures will be in `/home/shared/spr18-is590dv/spring2018/`
 * You will have access to conda, etc, but I may rebuild images to add packages.

---

## Assignment Flow

![](images/assignment_flow.png)

 1. Instructor "releases" an assignment
 1. Assignment appears in student "Assignments" tab
 1. Students "fetch" assignment, which copies it to their work directory
 1. When done, students "submit" assignment, which copies it to the
    instructor’s inbox
 1. Grades and feedback will be posted on Moodle.

---

## Slack

 * Team is at `lis590dv-spr2018.slack.com`
   * `#general` : General announcements
   * `#assignments` : Help with assignments
   * `#help` : General help with Python, Javascript, visualization, etc
   * `#lectures` : During lectures, post links, comments, questions here
 * Use the `@` sign appropriately: `@[person]`, `@here`, `@channel`
 * Conduct will be held to same standards as any educational venue.
 * Web client, standalone client and mobile devices can access this team.
 * At the end of the semester, the team will be discontinued.

---

## Github

 * Course repo is at [UIUC-iSchool-DataViz/spring2018](https://github.com/UIUC-iSchool-DataViz/spring2018/)
 * Automatically built to [uiuc-ischool-dataviz.github.io/spring2018/](https://uiuc-ischool-dataviz.github.io/spring2018/)
 * Lecture notes will be placed there, and available in your JupyterHub
   instances in `shared/sp18-is590dv/spring2018`
 * Copy the notebooks to your directory before using them.

---

## This week

 * Why do we visualize?
 * What types of data do we visualize?
 * How do we visualize?

---

# Why?

(Or rather, why _wouldn't_ we visualize?)

---

<iframe width="1024" height="576"
src="https://www.youtube.com/embed/In72QAQJ1tY?rel=0" frameborder="0"
allow="encrypted-media" allowfullscreen></iframe>

---

<!-- .slide: data-background-image="images/fov.svg" data-background-size="contain" -->

---

![](https://upload.wikimedia.org/wikipedia/commons/2/27/AcuityHumanEye.svg)

By Vanessa Ezekowitz [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0), via Wikimedia Commons

---

## I need a volunteer!

---

*Read these numbers:*

| | |
|:-|-:|
| 2007-01-01 | 14233.2 |
| 2007-04-01 | 14422.3 |
| 2007-07-01 | 14569.7 |
| 2007-10-01 | 14685.3 |
| 2008-01-01 | 14668.4 |
| 2008-04-01 | 14813.0 |
| 2008-07-01 | 14843.0 |
| 2008-10-01 | 14549.9 |
| 2009-01-01 | 14383.9 |

---

![](images/fredgraph.png)

---

| | |
|:-|:-|
| 2729 | |
| 2714-2719 | (Known) |
| 2699 | |
| 2613 | |
| 2583 | |
| 2562 | |
| 2530 | |
| 2501 | |
| 2490 | |
| 2470 | |
| 2400 | |
| 2322-2329 | (Known) |

Data from "The Stone Sky" by N.K. Jemisin

---

![](images/timeline1.png)
![](images/timeline2.png)
![](images/timeline3.png)

---

# Types of Viz:

* Visualization for Self
* Visualization for Peers
* Visualization for Others

---

# Tenet 1:

"Visualizing data" is not a strict subset of "making an image."

---

 * Collection of the data
 * Organization of that data
 * Representation of that data

---

# Tenet 2:

We tell lies to visualize, but we _must_ be honest.

---

<!-- .slide: data-background-image="images/hearts_battery.svg" data-background-size="contain" -->

---

<!-- .slide: data-background-image="images/battery.svg" data-background-size="contain" -->

<div style="height: 10em;"></div>

 1. Sensors read the current "fill" of the battery
    * Analog / digital conversion
    * Normalized with respect to expected "full"
 1. This is then scaled to a percentage
 1. The battery image is filled from left to right
 1. The image is then rasterized and displayed

---

<!-- .slide: data-background-image="images/hearts_bw.svg" data-background-size="contain" -->

 * Some fixed maximum amount of damage
 * Each time damage is taken, decrement
 * Each time damage is reversed, increment
 * Display number of hearts as appropriate

---

2 out of 3 "points"

<!-- .slide: data-background-image="images/hearts_color.svg" data-background-size="contain" -->

---

<!-- .slide: data-background-image="images/hearts_color.svg" data-background-size="contain" -->

![](images/doom_status.png)

---

<!-- .slide: data-background-image="images/stitch_bg.png" data-background-size="contain"-->

---

<!-- .slide: data-background-image="images/stitch_nobg.png" data-background-size="contain"-->

---

<!-- .slide: data-background-image="images/stitch_nobg_tilted.png" data-background-size="contain"-->

---

<iframe width="1024" height="576"
src="https://www.youtube.com/embed/D-uBv6jB7r0" frameborder="0"
allow="autoplay; encrypted-media" allowfullscreen></iframe>

---

## Honesty

Our choices must be:

 * Deliberate
 * Informed
 * Motivated
 * Justifiable

---

## Election Maps

Mark Newman of the University of Michigan has created visualizations of the
election maps from several of the most recent elections.  For more information
and context, see his page http://www-personal.umich.edu/~mejn/election/2008/ .

 * [Map 1](http://www-personal.umich.edu/~mejn/election/2008/statemapredbluer1024.png)
 * [Map 2](http://www-personal.umich.edu/~mejn/election/2008/statepopredblue1024.png)
 * [Map 3](http://www-personal.umich.edu/~mejn/election/2008/countymapredbluer1024.png)
 * [Map 4](http://www-personal.umich.edu/~mejn/election/2008/countymappurpler1024.png)
 * [Map 5](http://www-personal.umich.edu/~mejn/election/2008/countycartpurple1024.png)

---

## This week: Wrap-up

 1. We visualize to change how we understand things.
 1. We visualize data for ourselves, for our peers, and for others.
 1. Visualization is a series of steps that we take to produce a different
    representation of data.

---

## Assignment 1

 * Identify three visualizations in pop culture -- *not* academic literature.
   This could be, for instance, from:
   * Movies / TV / Music videos
   * Everyday life
   * Advertisements
 * Describe each one in detail
   * Where did the data come from?
   * Is the data quantitative, qualitative, categorical, etc?
   * How was the data processed before being displayed?
   * What method was used to display that data?
 * Replicate the visualization with different, but similarly “shaped,” data
   * By hand is acceptable
   * Computational methods should include source code

---
