#My first Rscript
x <- 1:50
plot(x)

plot(x, sin(x), typ = "l", col="blue")
plot(x = x, y = sin(x), typ = "l", col = "red", lwd="3")


log(10,base=2)