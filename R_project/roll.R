# 设置一个掷骰子的函数
roll <- function(){
  die <- 1:6
  dice <-sample(die,size = 2,replace = TRUE)
  sum(dice)
}
rolls <- replicate(10000,roll())
rolls<- as.data.frame(rolls)
library(ggplot2)
ggplot(rolls, aes(x = rolls)) +
  geom_histogram(binwidth = 1, color = "black", fill = "lightblue") +
  labs(title = "掷两个骰子 10000 次的结果分布",
       x = "点数总和",
       y = "频数")

# 掷6的概率为3/8的骰子
roll3 <- function() {
  die <- 1:6
  prob <- c(rep(1/8, 5), 3/8)
  dice <- sample(die, size = 2, replace = TRUE, prob = prob)
  sum(dice)
}
roll3s <- replicate(10000,roll3())
roll3s<- as.data.frame(roll3s)
ggplot(roll3s, aes(x = roll3s)) +
  geom_histogram(binwidth = 1, color = "black", fill = "lightpink") +
  labs(title = "掷两个骰子 10000 次的结果分布",
       x = "点数总和",
       y = "频数")
