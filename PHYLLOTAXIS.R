# 09/09/2020 - Wednesday

### DataCamp Project
### PHYLLOTAXIS: DRAW FLOWERS USING MATHEMATICS


#### 1. Patterns in nature
# Set plot images to a nice size
options(repr.plot.width = 4, repr.plot.height = 4)

# Load the ggplot2 package
library(ggplot2)


#2. Drawing points in a circle
# Create circle data to plot
t <- seq(0, 2*pi, length.out = 50)
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Make a scatter plot of points in a circle
p <- ggplot(df, aes(x, y))
p + geom_point()


#3. Make it harmonious with the Golden Angle
# Define the number of points
points <- 500

# Define the Golden Angle
angle <- pi*(3 - sqrt(5))

t <- (1:points) * angle
x <- sin(t)
y <-cos(t)
df <- data.frame(t, x, y)

# Make a scatter plot of points in a spiral
p <- ggplot(df, aes(x*t, y*t))
p + geom_point()



#4. Remove everything unnecessary
df <- data.frame(t, x, y)

# Make a scatter plot of points in a spiral and remove some plot components
p <- ggplot(df, aes(x*t, y*t))
p + geom_point() + theme(panel.background = element_rect(fill="white"), 
                         panel.grid = element_blank(), 
                         axis.ticks = element_blank(), 
                         axis.title = element_blank(), 
                         axis.text = element_blank(), 
)


#5. A bit of makeup: size, color and transparency
# Change the code from Task 4 to modify the 
# size, transparency, and color of the points
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(colour = "darkgreen", 
               size = 8, 
               alpha = 0.5) +
  theme(panel.grid = element_blank(), 
        axis.ticks = element_blank(), 
        title = element_blank(), 
        text = element_blank(), 
        panel.background = element_rect(fill="white"))



# 6. Play with aesthetics: the dandelion
#R plot symbols on Google
# Copy the code from Task 5 and modify the 
# color, size, and shape of the points
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size=t), 
               size = 8, alpha = 0.5,
               shape = 8) +
  theme(panel.grid = element_blank(), 
        axis.ticks = element_blank(), 
        axis.title = element_blank(), 
        axis.text = element_blank(), 
        legend.position="none",
        panel.background = element_rect(fill="white"))


#7. Put all it together: the sunflower
# Copy the code from Task 6 and modify the color and
# shape of the points, and the background color
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size = t), colour = "yellow", alpha = 0.5, shape = 17)+
  theme(panel.grid = element_blank(), axis.ticks = element_blank(), 
        title = element_blank(), text = element_blank(), 
        panel.background = element_rect(fill="darkmagenta"), 
        legend.position="none")



#8. What if you modify the angle?
# Change the value of the angle
angle <- 2
points <- 1000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Copy the plotting code from Task 7
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size = t), 
               colour = "yellow", 
               alpha = 0.5, 
               shape = 17)+
  theme(panel.grid = element_blank(), 
        axis.ticks = element_blank(), 
        title = element_blank(), 
        text = element_blank(), 
        panel.background = element_rect(fill="darkmagenta"), 
        legend.position="none")



#9. All together now: imaginary flowers
# Change the values of angle and points
angle <- 13*pi/180
points <- 2000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size = t), 
               colour = "magenta4", 
               alpha = 0.1, 
               shape = 1)+
  theme(panel.grid = element_blank(), axis.ticks = element_blank(), 
        title = element_blank(), text = element_blank(), 
        panel.background = element_rect(fill="white"), 
        legend.position="none")
