
  d hello^MyMathRoutines

  r "Enter n: ",n,!

  s areaCircle=$$areaCircle^MyMathRoutines(n)
  w "areaCircle(",n,") = ",areaCircle,!

  s fibonacci=$$fibonacci^MyMathRoutines(n)
  w "fibonacci(",n,") = ",fibonacci,!

  s factorialByVal=$$factorialByVal^MyMathRoutines(n)
  w "factorialByVal(",n,") = ",factorialByVal,!

  s m=n
  do factorialByRef^MyMathRoutines(.n)
  w "factorialByRef(",m,") = ",n,!
