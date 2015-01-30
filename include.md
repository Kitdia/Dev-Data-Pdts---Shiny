---
title: "Readme and Documentation"
author: "Kitdia"
date: "Saturday, January 31, 2015"
output: html_document
---

##About

For this shiny app, the main aim is to allow user to explore and investigate exponential distribution compared with the Central Limit Theorem. 

The exponential distribution will be simulated with rexp(n, lambda) function in R, where lambda is the rate parameter. Distribution of averages of 40 exponentials, with selected lambda value and number of simulation, will be investigated by default.

User will get to select the lambda value of the exponential distribution to be simulated. Number of simulation will also be defined by user.

Results will be illustrated via simulation and a plot with the following observable characteristics will be created:
.      Distribution of the simulated data through form of a histogram
.	There will be a red line on the histogram which reflects the value of the theoretical mean (user selected lambda value)
.	Rug is added to the bottom of the histogram

##User's Role

User will have to select the following values for
.	Lambda
.	Number of simulations

Once done, user is to click the 'submit' button to create the simulated histogram

##Location

This shiny app is located at: http://kitdia.shinyapps.io/shiny2 
