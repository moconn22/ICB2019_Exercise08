setwd("Desktop/Sophomore_Year/bc/examples/exercises/ICB2019_Exercise08/")
scores=read.table("../ICB2019_Exercise08/UWvMSU_1-22-13.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)


mat <- matrix(data = NA, nrow = 51, ncol = 3)
mat[1,]=0
for (points in 1:nrow(scores)) {
  mat[points+1,1] <- scores$time[points]
  if (scores$team[points]=="UW"){
    mat [points+1,2] <-mat[points,2] +scores$score[points]
    mat [points+1,3] <-mat[points,3]
  }else {
    mat[points+1,3]<- mat[points,3] +scores$score[points]
    mat[points+1,2]<- mat[points,2]
  }
}
plot(mat$)

#2
GuessANumber <- function( low, high ) {
  print( sprintf("Guess a number between 1 and 100 until you get it right", 1, 100 ) );
  X <- 1:100;
  number <- sample( X, 1 );
  repeat {
    input <- as.numeric(readline());
    if (input > number) {
      print("lower"); }
    else if (input < number) {
      print("higher");}
    else {
      print("Correct!");
      break; }
  }
}
#how to make it to where there is only 10 tries, also is this right where it is only 1-100
