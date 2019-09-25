  write "Enter n: "
  read n,!
  set result=$$factorial(n)
  write n,"! = ",result,!
  halt

factorial(n)
  if n=1 quit 1
  set k=1
  for i=1:1:n do
  . set k=k*i
  quit k
