# Mathematical Function Analysis

## Overview
This project investigates the behavior of a two-variable function:

\[
f(x,y) = \sin(x^2 + y^2) \cdot e^{-\sqrt{x^2 + y^2}}
\]

The goal is to analyze how the oscillatory nature of the sine function interacts with the exponential decay as the distance from the origin increases. The analysis combines both mathematical reasoning and visualizations in R, using surface plots and contour plots.

In addition, the project compares \(f(x,y)\) with a related cosine-based function:

\[
g(x,y) = \cos(x^2 + y^2) \cdot e^{-\sqrt{x^2 + y^2}}
\]

This comparison highlights the differences in oscillatory behavior that arise from using sine versus cosine.

---

## Key Concepts

### Function Structure
- **Oscillation**: Introduced by the sine (or cosine) term.  
- **Decay**: Introduced by the exponential factor \(e^{-\sqrt{x^2+y^2}}\), which ensures the function values diminish as \(x,y \to \infty\).  

Since both functions depend only on \(r = \sqrt{x^2+y^2}\), they exhibit **radial symmetry**:

\[
f(r) = \sin(r^2)\, e^{-r}, \quad g(r) = \cos(r^2)\, e^{-r}.
\]

---

## Visualizations
1. **3D Surface Plot** – Shows how the function oscillates and decays in three dimensions.  
2. **Contour Plot** – Displays level curves in the \((x,y)\)-plane, emphasizing radial oscillations and decay.  
3. **Comparison with \(g(x,y)\)** – Side-by-side visualization reveals the phase shift between sine and cosine.  

---

## Project Structure
- **Mathematical_Function_Analysis.Rmd** – Main R Markdown file with code, analysis, and visualizations.  
- **custom.css** – Styling rules for the rendered HTML report.  
- **README.md** – Project overview and usage instructions.  

---

## Prerequisites
To run the project locally, install R and the following packages:

```r
install.packages(c("ggplot2", "dplyr", "plotly", "rgl", "tidyr"))
