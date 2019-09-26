  r "Enter n: ",n,!
  s result=$$factorial(n)
  w n,"! = ",result,!
  h

factorial(n)
  i n=1 q 1
  s k=1
  f i=1:1:n d
  . s k=k*i
  q k
