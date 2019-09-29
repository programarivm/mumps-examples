
areaCircle(r)
  q 3.1415926535898*r*r

factorialByRef(n)
  i n=1 q
  s k=1
  f i=1:1:n d
  . s k=k*i
  s n=k
  q

factorialByVal(n)
  i n=1 q 1
  s k=1
  f i=1:1:n d
  . s k=k*i
  q k

fibonacci(n)
  s f(1)=1,f(2)=1
  f i=3:1:n d
  . s f(i)=f(i-1)+f(i-2)
  q f(n)

hello()
  w "Hello!",!
  q
