
; This is the exact same functionality as in Arrays.m.
; The only difference: commands are shortened to a single letter.

; unidimensional array

  w "Approaching the solar system:",!

  s planets(1)="Mercury"
  s planets(2)="Venus"
  s planets(3)="Earth"
  s planets(4)="Mars"
  s planets(5)="Jupiter"
  s planets(6)="Saturn"
  s planets(7)="Uranus"
  s planets(8)="Neptune"
  s planets(9)="Pluto"

  f i=1:1:9 d
  . w planets(i),!

; multidimensional array

  s september(1,1)=26
  s september(1,2)=27
  s september(1,3)=28
  s september(1,4)=29
  s september(1,5)=30
  s september(1,6)=31
  s september(1,7)=1
  s september(2,1)=2
  s september(2,2)=3
  s september(2,3)=4
  s september(2,4)=5
  s september(2,5)=6
  s september(2,6)=7
  s september(2,7)=8
  s september(3,1)=9
  s september(3,2)=10
  s september(3,3)=11
  s september(3,4)=12
  s september(3,5)=13
  s september(3,6)=14
  s september(3,7)=15
  s september(4,1)=16
  s september(4,2)=17
  s september(4,3)=18
  s september(4,4)=19
  s september(4,5)=20
  s september(4,6)=21
  s september(4,7)=22
  s september(5,1)=23
  s september(5,2)=24
  s september(5,3)=25
  s september(5,4)=26
  s september(5,5)=27
  s september(5,6)=28
  s september(5,7)=29
  s september(6,1)=30
  s september(6,2)=1
  s september(6,3)=2
  s september(6,4)=3
  s september(6,5)=4
  s september(6,6)=5
  s september(6,7)=6

  w !,"September 2019:",!

  f i=1:1:6 d
  . f j=1:1:7 d
  . . w september(i,j)," "
  . . i j=7 w "",!

; array as a tree

  w !,"Genealogical tree:",!

  s gtree(1)="Oliver"
  s gtree(1,1)="Jack"
  s gtree(1,1,1)="Harry"
  s gtree(1,1,2)="Emily"
  s gtree(1,2)="Amelia"
  s gtree(1,2,1)="Thomas"
  s gtree(1,2,2)="Jessica"

  w gtree(1,1,1)," and ",gtree(1,1,2)," had ",gtree(1,1),!

; associative array

  w !,"Associative array:",!

  s cities("UK",1)="Londn"
  s cities("UK",2)="Birmingham"
  s cities("Canada",1)="Toronto"
  s cities("Canada",2)="Montreal"

  w "Have you ever been to ",cities("UK",1),"?",!
