
fetch(id,data)
  n record
  k data
  i id="" q 0
  s lev1=""
  s lev2=""
  f  s lev1=$o(^comments(lev1)) q:lev1=""  d
  . f  s lev2=$o(^comments(lev1,lev2)) q:lev2=""  d
  . . i lev1=id d
  . . . s record=$get(^comments(id,lev2))
  . . . s data("description")=$piece(record,"~",1)
  . . . q
  q

set(id,idPost,data)
  i id=""!idPost="" q 0
  s description=$piece(data,"~",1)
  s ^comments(id,idPost)=description
  q 1

remove(id)
  i id="" q 0
  k ^comments(id)
  q 1
