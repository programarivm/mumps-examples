
fetch(id,data)
  n record
  k data
  i id="" q 0
  s lev1=""
  s lev2=""
  s lev3=""
  f  s lev1=$o(^posts(lev1)) q:lev1=""  d
  . f  s lev2=$o(^posts(lev1,lev2)) q:lev2=""  d
  . . f  s lev3=$o(^posts(lev1,lev2,lev3)) q:lev3=""  d
  . . . i lev1=id d
  . . . . s record=$get(^posts(lev1,lev2,lev3))
  . . . . s data("slug")=$piece(record,"~",1)
  . . . . s data("title")=$piece(record,"~",2)
  . . . . s data("description")=$piece(record,"~",3)
  . . . . q
  q

fetchByCategory(id,data)
  k data
  i id="" q 0
  s lev1=""
  s lev2=""
  s lev3=""
  f  s lev1=$o(^posts(lev1)) q:lev1=""  d
  . f  s lev2=$o(^posts(lev1,lev2)) q:lev2=""  d
  . . f  s lev3=$o(^posts(lev1,lev2,lev3)) q:lev3=""  d
  . . . i lev2=id d
  . . . . s data(lev1,lev2,lev3)=$get(^posts(lev1,lev2,lev3))
  q

fetchByUser(id,data)
  k data
  i id="" q 0
  s lev1=""
  s lev2=""
  s lev3=""
  f  s lev1=$o(^posts(lev1)) q:lev1=""  d
  . f  s lev2=$o(^posts(lev1,lev2)) q:lev2=""  d
  . . f  s lev3=$o(^posts(lev1,lev2,lev3)) q:lev3=""  d
  . . . i lev3=id d
  . . . . s data(lev1,lev2,lev3)=$get(^posts(lev1,lev2,lev3))
  q

set(id,idCategory,idUser,data)
  i id=""!idCategory=""!idUser="" q 0
  s slug=$piece(data,"~",1)
  s title=$piece(data,"~",2)
  s description=$piece(data,"~",3)
  s ^posts(id,idCategory,idUser)=slug_"~"_title_"~"_description
  q 1

remove(id)
  i id="" q 0
  k ^posts(id)
  q 1
