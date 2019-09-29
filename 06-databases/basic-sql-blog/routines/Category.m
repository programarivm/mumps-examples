
fetch(id,data)
  n record
  k data
  i id="" q 0
  s record=$get(^categories(id))
  s data("slug")=$piece(record,"~",1)
  s data("description")=$piece(record,"~",2)
  q

set(id,data)
  i id="" q 0
  s slug=$piece(data,"~",1)
  s description=$piece(data,"~",2)
  s ^categories(id)=slug_"~"_description
  q 1

remove(id)
  i id="" q 0
  k ^categories(id)
  q 1
