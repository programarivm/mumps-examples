  read "Enter n: ",n,!
  write n,"! = "
  do factorial(.n)
  write n,!
  halt

factorial(n)
  if n=1 quit
  set k=1
  for i=1:1:n do
  . set k=k*i
  set n=k
  quit
