
  zlink "routines/Database"
  zlink "routines/User"

; create users

  s ok=$$set^User(1,"alice~password~alice-jones@no-reply.com~Alice Jones")
  i ok=1 d
  . w "User created:",!
  . zwrite ^users(1)
  e  d
  . w "Whoops! The user could not be created.",!

  s ok=$$set^User(2,"bob~password~bob-smith@no-reply.com~Bob Smith")
  i ok=1 d
  . w !,"User created:",!
  . zwrite ^users(2)
  e  d
  . w !,"Whoops! The user could not be created.",!

; fetch a user

  s id=1
  s ok=$$fetch^User(id,.data)
  i ok=1 d
  . w !,"User fetched (",id,"):",!
  . zwrite data
  e  d
  . w !,"Whoops! The user could not be fetched.",!

; update a user

  s id=1
  s ok=$$set^User(id,"amelia~password~amelia-roberts@no-reply.com~Amelia Roberts")
  i ok=1 d
  . w !,"User updated (",id,"):",!
  . zwrite ^users(1)
  e  d
  . w !,"Whoops! The user could not be updated.",!

; fetch a user

  s id=1
  s ok=$$fetch^User(id,.data)
  i ok=1 d
  . w !,"User fetched (",id,"):",!
  . zwrite data
  e  d
  . w !,"Whoops! The user could not be fetched.",!

; delete a user

  s id=2
  s ok=$$remove^User(id)
  i ok=1 d
  . w !,"User deleted (",id,")",!
  e  d
  . w !,"Whoops! The user could not be deleted.",!

; fetch a user

  s id=2
  s ok=$$fetch^User(id,.data)
  i ok=1 d
  . w !,"User fetched (",id,"):",!
  . zwrite data
  e  d
  . w !,"Whoops! The user could not be fetched.",!

; drop database

  s ok=$$drop^Database()
  i ok=1 d
  . w !,"Database successfully dropped!",!
  e  d
  . w !,"Whoops! The database could not be dropped.",!
