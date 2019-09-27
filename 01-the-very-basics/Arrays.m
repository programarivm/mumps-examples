
; unidimensional array

  write "Approaching the solar system:",!

  set planets(1)="Mercury"
  set planets(2)="Venus"
  set planets(3)="Earth"
  set planets(4)="Mars"
  set planets(5)="Jupiter"
  set planets(6)="Saturn"
  set planets(7)="Uranus"
  set planets(8)="Neptune"
  set planets(9)="Pluto"

  for i=1:1:9 do
  . write planets(i),!

; multidimensional array

  set september(1,1)=26
  set september(1,2)=27
  set september(1,3)=28
  set september(1,4)=29
  set september(1,5)=30
  set september(1,6)=31
  set september(1,7)=1
  set september(2,1)=2
  set september(2,2)=3
  set september(2,3)=4
  set september(2,4)=5
  set september(2,5)=6
  set september(2,6)=7
  set september(2,7)=8
  set september(3,1)=9
  set september(3,2)=10
  set september(3,3)=11
  set september(3,4)=12
  set september(3,5)=13
  set september(3,6)=14
  set september(3,7)=15
  set september(4,1)=16
  set september(4,2)=17
  set september(4,3)=18
  set september(4,4)=19
  set september(4,5)=20
  set september(4,6)=21
  set september(4,7)=22
  set september(5,1)=23
  set september(5,2)=24
  set september(5,3)=25
  set september(5,4)=26
  set september(5,5)=27
  set september(5,6)=28
  set september(5,7)=29
  set september(6,1)=30
  set september(6,2)=1
  set september(6,3)=2
  set september(6,4)=3
  set september(6,5)=4
  set september(6,6)=5
  set september(6,7)=6

  write !,"September 2019:",!

  for i=1:1:6 do
  . for j=1:1:7 do
  . . write september(i,j)," "
  . . if j=7 write "",!

; array as a tree

  write !,"Genealogical tree:",!

  set gtree(1)="Oliver"
  set gtree(1,1)="Jack"
  set gtree(1,1,1)="Harry"
  set gtree(1,1,2)="Emily"
  set gtree(1,2)="Amelia"
  set gtree(1,2,1)="Thomas"
  set gtree(1,2,2)="Jessica"

  write gtree(1,1,1)," and ",gtree(1,1,2)," had ",gtree(1,1),!

; associative array

  write !,"Associative array:",!

  set cities("UK",1)="London"
  set cities("UK",2)="Birmingham"
  set cities("Canada",1)="Toronto"
  set cities("Canada",2)="Montreal"

  write "Have you ever been to ",cities("UK",1),"?",!
