# Mathematical Function Analysis

Overview
This project explores the behavior of a two-variable function \(f\left(x,y\right)=\textrm{sin}\left(x^{2}+y^{2}\right)\cdot e^{-\sqrt{x^{2}+y^{2}}}\) through mathematical analysis and visualization using R. The goal is to study how the sine and exponential functions interact in two dimensions and to visualize their combined behavior through 3D surface plots and contour plots.

Additionally, the project compares this function with a related cosine-based function g(x,y)=\cos(x^2+y^2)\cdot e^{-\sqrt{x^2 + y^2}} , providing a visual and mathematical comparison of the two.
Key Concepts
Mathematical Function
The primary function analyzed in this project is:
f(x, y) = \sin(x^2 + y^2) \cdot e^{-\sqrt{x^2 + y^2}}
This function consists of two key components:

Oscillation: The sine function introduces periodic oscillations.
Decay: The exponential function causes the values to decay as 𝑥 and 𝑦 move away from the origin.

Key Visualizations
3D Surface Plot: This plot shows the behavior of the function in three dimensions, revealing how the function oscillates and decays as the distance from the origin increases.

Contour Plot: This plot shows contour lines of the function, helping to visualize the function’s behavior in the 𝑥,y-plane.

Comparison with a Related Function: The function g(x,y)=\cos(x^2+y^2)\cdot e^{-\sqrt{x^2 + y^2}}  is compared with 𝑓(𝑥,𝑦) to highlight the differences in their oscillatory behavior due to the sine and cosine functions.


Project Structure
This repository contains the following key components:

Mathematical_Function_Analysis.Rmd: The R Markdown file with detailed code for the function analysis and visualizations.

custom.css: Custom styling for the output HTML report.

README.md: This file providing an overview of the project.


Prerequisites
To run this project locally, you'll need to have R and the following R packages installed:

ggplot2

dplyr

plotly

rgl

tidyr

You can install these packages by running the following R commands:

install.packages(c("ggplot2", "dplyr", "plotly", "rgl", "tidyr"))

Conclusion
This project demonstrates how mathematical functions, particularly those combining oscillation and decay, can be visualized effectively using modern computational tools. By comparing the behavior of f(x,y) with a similar cosine-based function, the project provides insight into the subtle differences that arise from the choice of sine versus cosine.

The use of R and Plotly for interactive 3D visualizations enables a deeper understanding of the function's behavior, making it easier to explore its nuances in both the theory and the visual representation.
