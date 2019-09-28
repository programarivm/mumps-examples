
  zlink "routines/Database"
  zlink "routines/User"

; create users

  s ok=$$set^User(1,"alice~password~alice-jones@no-reply.com~Alice Jones")
  i ok=1 d
  . w "User successfully created!",!
  e  d
  . w "Whoops! The user could not be created.",!

  s ok=$$set^User(2,"bob~password~bob-smith@no-reply.com~Bob Smith")
  i ok=1 d
  . w "User successfully created!",!
  e  d
  . w "Whoops! The user could not be created.",!

; fetch a user

  s ok=$$fetch^User(1,.data)
  i ok=1 d
  . w !,"User successfully fetched!",!
  . w "username: ",data("username"),!
  . w "email: ",data("email"),!
  . w "fullname: ",data("fullname"),!
  e  d
  . w "Whoops! The user could not be fetched.",!

; update a user

  s ok=$$set^User(1,"amelia~password~amelia-roberts@no-reply.com~Amelia Roberts")
  i ok=1 d
  . w !,"User successfully updated!",!
  e  d
  . w !,"Whoops! The user could not be updated.",!

; fetch a user

  s ok=$$fetch^User(1,.data)
  i ok=1 d
  . w !,"User successfully fetched!",!
  . w "username: ",data("username"),!
  . w "email: ",data("email"),!
  . w "fullname: ",data("fullname"),!
  e  d
  . w "Whoops! The user could not be fetched.",!

; delete a user

  s ok=$$remove^User(2)
  i ok=1 d
  . w !,"User successfully deleted!",!
  e  d
  . w !,"Whoops! The user could not be deleted.",!

; fetch a user

  s ok=$$fetch^User(2,.data)
  i ok=1 d
  . w !,"User successfully fetched!",!
  . w "username: ",data("username"),!
  . w "email: ",data("email"),!
  . w "fullname: ",data("fullname"),!
  e  d
  . w "Whoops! The user could not be fetched.",!

; drop database

  s ok=$$drop^Database()
  i ok=1 d
  . w !,"Database successfully dropped!",!
  e  d
  . w !,"Whoops! The database could not be dropped.",!
