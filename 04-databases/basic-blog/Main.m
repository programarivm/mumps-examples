
; create users

  s ok=$$set^UserRoutines(1,"alice~password~alice-jones@no-reply.com~Alice Jones")
  s ok=$$set^UserRoutines(2,"bob~password~bob-smith@no-reply.com~Bob Smith")

; create posts

  s ok=$$set^PostRoutines(1,1,"lorem-ipsum~Lorem ipsum~Lorem ipsum dolor sit amet, consectetuer adipiscing elit.")
  s ok=$$set^PostRoutines(2,1,"donec-pede-justo~Donec pede justo~Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.")
  s ok=$$set^PostRoutines(3,2,"curabitur-ullamcorper-ultricies~Curabitur ullamcorper ultricies~ Curabitur ullamcorper ultricies nisi.")
  s ok=$$set^PostRoutines(4,2,"donec-vitae-sapien~Donec vitae sapien~Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.")

; create comments

  s ok=$$set^CommentRoutines(1,1,"This is awesome! Thank you.")
  s ok=$$set^CommentRoutines(2,2,"Thank you so much for sharing this.")

; fetch posts by post

  do fetch^PostRoutines(1,.data)
  w "Post fetched:",!
  w "slug: ",data("slug"),!
  w "title: ",data("title"),!
  w "description: ",data("description"),!

  do fetch^PostRoutines(2,.data)
  w !,"Post fetched:",!
  w "slug: ",data("slug"),!
  w "title: ",data("title"),!
  w "description: ",data("description"),!

; fetch posts by user

  do fetchByUser^PostRoutines(1,.data)
  w !,"Posts fetched by user:",!
  w data(1),!
  w data(2),!

; fetch comments

  do fetch^CommentRoutines(1,.data)
  w !,"Comment fetched:",!
  w "description: ",data("description"),!

  do fetch^CommentRoutines(2,.data)
  w !,"Comment fetched:",!
  w "description: ",data("description"),!

; drop database

  s ok=$$drop^DatabaseRoutines()
  i ok=1 d
  . w !,"Database successfully dropped!",!
  e  d
  . w "Whoops! The database could not be dropped.",!
