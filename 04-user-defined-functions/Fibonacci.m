  read "Enter n: ",n,!
  set result=$$fibonacci(n)
  write "F(",n,") = ",result,!
  halt

fibonacci(n)
  set f(1)=1
  set f(2)=1
  for i=3:1:n do
  . set f(i)=f(i-1)+f(i-2)
  quit f(n)
