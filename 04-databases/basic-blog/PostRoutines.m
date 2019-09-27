
fetch(n,data)
  n record
  k data
  i n="" q 0
  s record=$get(^posts(n))
  s data("slug")=$piece(record,"~",1)
  s data("title")=$piece(record,"~",2)
  s data("description")=$piece(record,"~",3)
  s data("id_user")=$piece(record,"~",4)
  q 1

set(n,data)
  i n="" q 0
  s slug=$piece(data,"~",1)
  s title=$piece(data,"~",2)
  s description=$piece(data,"~",3)
  s idUser=$piece(data,"~",4)
  s ^posts(n)=slug_"~"_title_"~"_description_"~"_idUser
  q 1

remove(n)
  i n="" q 0
  k ^posts(n)
  q 1
