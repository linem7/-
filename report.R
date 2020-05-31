## package
library(dplyr)
library(rmarkdown)

## Data
personalized_info <- read.csv(file = "info.csv",header = T,sep = ",")

## Loop
for (i in 38) { 
  kinder <- personalized_info$kinder[i]
  class <- personalized_info$class[i]
  name <- personalized_info$name[i]
  rmarkdown::render(input = "mail_merge_handout.Rmd", 
                    output_format = "html_document",
                    output_file = paste(kinder, class, name, "发展报告", ".html", sep = ''),
                    output_dir = "handouts/")
}

#下面的代码只是为了生成随机数，与本次无关
library(MASS)
mean <- c(3.76,4.34)
sigma <- matrix(c(1.468, 0.661,
                  0.661, 0.734), 2, 2)
mydata <- mvrnorm(1872, mean, sigma)
mydata <- as.data.frame(mydata)
new_data <- data.frame(x = 1, y = 1)
names(mydata) <- c("x", "y")
range_x <- max(mydata$x)/5
range_y <- max(mydata$y)/5
mydata <- mydata %>%
  mutate(new_x = x/range_x, new_y = y/range_y)
summary(mydata)
ggplot(mydata, aes(new_x, new_y)) + geom_point(alpha = 1/5)
nrow(mydata)
