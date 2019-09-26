
; create users

  s ok=$$set^UserRoutines(1,"alice~password~alice-jones@no-reply.com~Alice Jones")
  i ok=1 d
  . w "User successfully created!",!,!
  e  d
  . w "Whoops! The user could not be created.",!,!

  s ok=$$set^UserRoutines(2,"bob~password~bob-smith@no-reply.com~Bob Smith")
  i ok=1 d
  . w "User successfully created!",!,!
  e  d
  . w "Whoops! The user could not be created.",!,!

; fetch a user

  s ok=$$fetch^UserRoutines(1,.data)
  i ok=1 d
  . w "User successfully fetched!",!
  . w "Username: ",data("username"),!
  . w "Email: ",data("email"),!
  . w "Full name: ",data("fullname"),!,!
  e  d
  . w "Whoops! The user could not be fetched.",!,!

; update a user

  s ok=$$set^UserRoutines(1,"amelia~password~amelia-roberts@no-reply.com~Amelia Roberts")
  i ok=1 d
  . w !,"User successfully updated!",!,!
  e  d
  . w !,"Whoops! The user could not be updated.",!,!

; fetch a user

  s ok=$$fetch^UserRoutines(1,.data)
  i ok=1 d
  . w "User successfully fetched!",!
  . w "Username: ",data("username"),!
  . w "Email: ",data("email"),!
  . w "Full name: ",data("fullname"),!,!
  e  d
  . w "Whoops! The user could not be fetched.",!,!

; delete a user

  s ok=$$remove^UserRoutines(2)
  i ok=1 d
  . w "User successfully deleted!",!,!
  e  d
  . w "Whoops! The user could not be deleted.",!,!

; fetch a user

  s ok=$$fetch^UserRoutines(2,.data)
  i ok=1 d
  . w "User successfully fetched!",!
  . w "Username: ",data("username"),!
  . w "Email: ",data("email"),!
  . w "Full name: ",data("fullname"),!
  e  d
  . w "Whoops! The user could not be fetched.",!
