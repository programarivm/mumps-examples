
  d hello^MyMath.m

  r "Enter n: ",n,!

  s areaCircle=$$areaCircle^MyMath.m(n)
  w "areaCircle(",n,") = ",areaCircle,!

  s fibonacci=$$fibonacci^MyMath.m(n)
  w "fibonacci(",n,") = ",fibonacci,!

  s factorialByVal=$$factorialByVal^MyMath.m(n)
  w "factorialByVal(",n,") = ",factorialByVal,!

  s m=n
  do factorialByRef^MyMath.m(.n)
  w "factorialByRef(",m,") = ",n,!
