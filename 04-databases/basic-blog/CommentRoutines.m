
fetch(n,data)
  n record
  k data
  i n="" q 0
  s record=$get(^comments(n))
  s data("description")=$piece(record,"~",1)
  s data("id_post")=$piece(record,"~",2)
  q 1

set(n,data)
  i n="" q 0
  s description=$piece(data,"~",1)
  s idPost=$piece(data,"~",2)
  s ^comments(n)=description_"~"_idPost
  q 1

remove(n)
  i n="" q 0
  k ^comments(n)
  q 1
