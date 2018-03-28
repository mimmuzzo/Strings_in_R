library(stringr)


#1

print("\"")
cat("\"")
cat("DSO\n545")
cat("DSO\t545")

#2

cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")

#3

?str_locate  

?str_sub

#4

str_locate(string="great", pattern="a")
str_locate("fantastic","a")
str_locate_all("fantastic","a")

str_locate_all(c("fantastic", "great", "super"), "a")

#5

str_sub("testing", start=c(1,4,1), end=c(3,7,4))

#6

input = c("abc", "defg")
str_sub(input,c(2,3))

#7

emails <- readRDS("email.rds")
emails[1]
cat(emails[1])


str_locate(emails[1],"\n\n")

#8

head=str_sub(emails[1],start=1, end=842)
body=str_sub(emails[1],start=843)

cat(head)
cat(body)

head_and_body=str_sub(emails[1], start=c(1,843), end=c(842))
cat(head_and_body)

#10

sep=str_locate(emails,"\n\n")
head=str_sub(emails[1],start=sep[1,], end=sep[,1])
body=str_sub(emails[1],start=sep[,2])





