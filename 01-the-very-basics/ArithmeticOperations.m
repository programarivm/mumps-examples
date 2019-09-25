
; the following two are the first lines of a story

  set apples=7
  set pears=8
  set oranges=9
  set total=apples+pears+oranges

  write "There were ",apples," apples, ",pears," pears and ",oranges," oranges,",!
  write "a total of ",total," fruits in a basket.",!

; now let's just concatenate a few strings

  set a="Then, "
  set b="something happened:"

  write a_b,!

; let's concatenate strings with numbers too

  set x=1
  set y=2
  set z=0

  set d=x_" apple"
  set e=", "_y_" pears"
  set f=" and "_z_" oranges were eaten!"

  write d_e_f,!

; here are the last lines of this story

  set total=total-x-y-z
  set average=total/3

  write "Now there are ",total," fruits in the basket,",!
  write "the average fruit value is ",average,".",!
