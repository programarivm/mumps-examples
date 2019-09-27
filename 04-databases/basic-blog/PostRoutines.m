
fetchByPost(idPost,data)
  n record
  k data
  i idPost="" q 0
  s lev1=""
  s lev2=""
  f  s lev1=$o(^posts(lev1)) q:lev1=""  d
  . f  s lev2=$o(^posts(lev1,lev2)) q:lev2=""  d
  . . i lev1=idPost d
  . . . s record=$get(^posts(idPost,lev2))
  . . . s data("slug")=$piece(record,"~",1)
  . . . s data("title")=$piece(record,"~",2)
  . . . s data("description")=$piece(record,"~",3)
  . . . q
  q

fetchByUser(idUser,data)
  k data
  i idUser="" q 0
  s lev1=""
  s lev2=""
  s count=1
  f  s lev1=$o(^posts(lev1)) q:lev1=""  d
  . f  s lev2=$o(^posts(lev1,lev2)) q:lev2=""  d
  . . i lev2=idUser d
  . . . s data(count)=$get(^posts(lev1,idUser))
  . . . s count=count+1
  q

set(idPost,idUser,data)
  i idPost=""!idUser="" q 0
  s slug=$piece(data,"~",1)
  s title=$piece(data,"~",2)
  s description=$piece(data,"~",3)
  s ^posts(idPost,idUser)=slug_"~"_title_"~"_description
  q 1

remove(n)
  i n="" q 0
  k ^posts(n)
  q 1
