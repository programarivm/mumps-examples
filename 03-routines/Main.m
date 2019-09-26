
  d hello^MyMath

  r "Enter n: ",n,!

  s areaCircle=$$areaCircle^MyMath(n)
  w "areaCircle(",n,") = ",areaCircle,!

  s fibonacci=$$fibonacci^MyMath(n)
  w "fibonacci(",n,") = ",fibonacci,!

  s factorialByVal=$$factorialByVal^MyMath(n)
  w "factorialByVal(",n,") = ",factorialByVal,!

  s m=n
  do factorialByRef^MyMath(.n)
  w "factorialByRef(",m,") = ",n,!
