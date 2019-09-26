
; global array as a tree

  w "Genealogical tree:",!

; create global records

  s ^gtree(0)="Oliver"
  s ^gtree(0,0)="Jack"
  s ^gtree(0,1)="Amelia"
  s ^gtree(0,0,0)="Harry"
  s ^gtree(0,0,1)="Emily"
  s ^gtree(0,1,0)="Thomas"
  s ^gtree(0,1,1)="Jessica"
  s ^gtree(0,0,0,0)="Michael"
  s ^gtree(0,0,0,1)="Olivia"
  s ^gtree(0,0,1,0)="Robert"
  s ^gtree(0,0,1,1)="Mary"
  s ^gtree(0,1,0,0)="George"
  s ^gtree(0,1,0,1)="Susan"
  s ^gtree(0,1,1,0)="Charles"
  s ^gtree(0,1,1,1)="Elizabeth"
; ...
  s ^gtree(0,0,0,0,0,0)="Thomas"

; TODO: traverse the tree and display information
; ...

; retrieve a global record

  w "^gtree(0,1,1) is ",^gtree(0,1,1),!

; obtain data about a particular node
; 0, the node does not exist
; 1, the node exists, has no descendant
; 10, the node exists, has no data, has descendant
; 11, the node exists, has data, has descendant

  w "$data(^gtree(0,2)) is ",$data(^gtree(0,3)),!
  w "$data(^gtree(0,1,1,1)) is ",$data(^gtree(0,1,1,1)),!
  w "$data(^gtree(0,0,0,0,0)) is ",$data(^gtree(0,0,0,0,0)),!
  w "$data(^gtree(0)) is ",$data(^gtree(0)),!

; remove the global array
; 0, the node does not exist
; 0, the node does not exist
; 0, the node does not exist
; 0, the node does not exist

  w "Removing tree...",!

  k ^gtree

  w "$data(^gtree(0,2)) is ",$data(^gtree(0,3)),!
  w "$data(^gtree(0,1,1,1)) is ",$data(^gtree(0,1,1,1)),!
  w "$data(^gtree(0,0,0,0,0)) is ",$data(^gtree(0,0,0,0,0)),!
  w "$data(^gtree(0)) is ",$data(^gtree(0)),!
