
fetchByComment(idComment,data)
  n record
  k data
  i idComment="" q 0
  s lev1=""
  s lev2=""
  f  s lev1=$o(^comments(lev1)) q:lev1=""  d
  . f  s lev2=$o(^comments(lev1,lev2)) q:lev2=""  d
  . . i lev1=idComment d
  . . . s record=$get(^comments(idComment,lev2))
  . . . s data("description")=$piece(record,"~",1)
  . . . q
  q

set(idComment,idPost,data)
  i idComment=""!idPost="" q 0
  s description=$piece(data,"~",1)
  s ^comments(idComment,idPost)=description
  q 1

remove(n)
  i n="" q 0
  k ^comments(n)
  q 1
