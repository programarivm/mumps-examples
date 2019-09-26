
fetch(n,data)
  n record
  k data
  i n="" q 0
  s record=$get(^users(n))
  s data("username")=$piece(record,"~",1)
  s data("password")=$piece(record,"~",2)
  s data("email")=$piece(record,"~",3)
  s data("fullname")=$piece(record,"~",4)
  q 1

set(n,data)
  i n="" q 0
  s username=$piece(data,"~",1)
  s password=$piece(data,"~",2)
  s email=$piece(data,"~",3)
  s fullname=$piece(data,"~",4)
  s ^users(n)=username_"~"_password_"~"_email_"~"_fullname
  q 1

remove(n)
  i n="" q 0
  k ^users(n)
  q 1
