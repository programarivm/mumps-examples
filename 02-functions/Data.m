  s gtree(1)="Oliver"
  s gtree(1,1)="James"
  s gtree(1,1,1)="Harry"
  s gtree(1,1,2)="Emily"
  s gtree(1,2)="Amelia"
  s gtree(1,2,1)="Thomas"
  s gtree(1,2,2)="Jessica"
; ...
  s gtree(1,1,1,1,1)="Robert"

  w "Genealogical tree:",!

  zwrite gtree

; obtain data about a particular node
; 0, the node does not exist
; 1, the node exists, has no descendant
; 10, the node exists, has no data, has descendant
; 11, the node exists, has data, has descendant

  w !,"Data about a few nodes: ",!

  w "$d(gtree(""foo"")) is ",$d(gtree("foo")),!
  w "$d(gtree(1,1,1,1,1)) is ",$d(gtree(1,1,1,1,1)),!
  w "$d(gtree(1,1,1,1)) is ",$d(gtree(1,1,1,1)),!
  w "$d(gtree(1)) is ",$d(gtree(1)),!
