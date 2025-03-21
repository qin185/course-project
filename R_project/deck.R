# 原子型向量练习
die <- c(1, 2, 3, 4, 5, 6)
die
is.vector(die)
type_1 <-c (2, 4, 6, 8)
type_1
type_2 <- c(-1L, 2L, 4L)
type_2
type_3 <- c("hello", "world")
type_3
type_4 <- c(T, F, T, T)
type_4
type_5 <- c(1+1i, 1+2i, 2+2i)
type_5
raw(3)

names(die) <- c("one", "two", "three", "four", "five", "six")
attributes(die)
die
die+1
dim(die) <- c(2,3)
die

m <- matrix(die, nrow = 2)
m
m <- matrix(die, nrow = 2, byrow = TRUE)
m

# 生成一副扑克牌
deck <- data.frame(
  face = c("king","queen", "jack", "ten", "nine","eight","seven","six",
           "five","four","three","two","ace","king","queen", "jack", "ten",
           "nine","eight","seven","six","five","four","three","two","ace",
           "king","queen", "jack", "ten", "nine","eight","seven","six","five",
           "four","three","two","ace","king","queen", "jack", "ten", "nine",
           "eight","seven","six","five","four","three","two","ace"),
  suit = c("spades","spades","spades", "spades", "spades","spades",
           "spades","spades", "spades", "spades","spades","spades","spades",
           "clubs","clubs","clubs","clubs","clubs","clubs","clubs","clubs",
           "clubs","clubs","clubs","clubs","clubs","diamonds", "diamonds",
           "diamonds", "diamonds", "diamonds", "diamonds","diamonds","diamonds",
           "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "hearts",
           "hearts", "hearts", "hearts", "hearts", "hearts", "hearts", "hearts",
           "hearts", "hearts", "hearts", "hearts", "hearts"),
value = c(13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8,
7, 6, 5, 4, 3, 2, 1, 13,12,11,10, 9, 8, 7, 6, 5, 4, 3, 2,1,13,12,11,
10, 9, 8, 7, 6, 5, 4, 3, 2,1)
)

# 用更简洁的语法生成扑克牌
faces <- c("king", "queen", "jack", "ten", "nine", "eight", "seven", "six", 
           "five", "four", "three", "two", "ace")
suits <- c("spades", "clubs", "diamonds", "hearts")
values <- c(13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1)

deck <- data.frame(
  face = rep(faces, 4),
  suit = rep(suits, each = 13),
  value = rep(values, 4)
)

# 选取扑克牌中的第一张牌
deck[1, ]
deck[-c(2:nrow(deck)), ]
deck[1, ]
deck[1, c("face", "suit", "value")]

deal <- function(deck) {
  return(deck[1, ])
}
deal(deck)

# 洗牌
shuffle <- function(deck) {
  shuffled_deck <- deck[sample(nrow(deck)), ]  # 随机打乱行
  return(shuffled_deck)
}
shuffle(deck)
