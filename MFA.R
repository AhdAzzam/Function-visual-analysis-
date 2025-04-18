
#
library(ggplot2)
library(dplyr)
library(plotly)
library(rgl)
library(tidyr)

# definice the function f(x,y)
f <- function(x, y) {
  r <- sqrt(x^2 + y^2)
  sin(x^2 + y^2) * exp(-sqrt(x^2 + y^2))
}

# Create a grid of x and y values
x1 <- seq(-5, 5, length.out = 100)
y1 <- seq(-5, 5, length.out = 100)

# Compute the z values for the first function
z1 <- outer(x1, y1, Vectorize(f))

# Plot the 3D surface for the first function
p1 <- plot_ly(x = ~x1, y = ~y1, z = ~z1,scene="scene") %>%
  add_surface(colorscale = "viridis") %>%
  layout(
    scene = list(
      xaxis = list(title = "x1"),
      yaxis = list(title = "y1"),
      zaxis = list(title = "f(x, y)")
    )
  )

#View the graph
p1

#To creat a contour plot
f <- function(x, y) {
  r <- sqrt(x^2 + y^2)
  sin(x^2+y^2) * exp(-sqrt(x^2 + y^2))
}
x <- seq(-5, 5, by=0.1)
y <- seq(-5, 5, by=0.1)
z1 <- outer(x,y,Vectorize(f))
contour(x,y,z1,main="Contour Plot",xlab="x",ylab="y",col="red")


g <- function(x, y) {
  r <- sqrt(x^2 + y^2)
  cos(x^2 + y^2) * exp(-sqrt(x^2 + y^2))
}
x2 <- seq(-5, 5, length.out = 100)
y2 <- seq(-5, 5, length.out = 100)
# Compute the z values for the second function
z2 <- outer(x2, y2, Vectorize(g))

# Plot the 3D surface for the second function
p2 <- plot_ly(x = ~x2, y = ~y2, z = ~z2,scene="scene2") %>%
  add_surface(colorscale = "viridis")%>%
  layout(
    scene2 = list(
      xaxis = list(title = "x2"),
      yaxis = list(title = "y2"),
      zaxis = list(title = "g(x, y)")
    )
  )
p2


# Comparison with the Function g(x,y)
subplot(p1, p2, nrows = 1,margin = 0.75) %>%
  layout(
    scene = list(
      domain = list(x = c(0, 0.5)),
      xaxis = list(title = "x1"),
      yaxis = list(title = "y1"),
      zaxis = list(title = "f(x, y)")
    ),
    scene2 = list(
      domain = list(x = c(0.5, 1)),
      xaxis = list(title = "x2"),
      yaxis = list(title = "y2"),
      zaxis = list(title = "g(x, y)")
    )
  ) 

