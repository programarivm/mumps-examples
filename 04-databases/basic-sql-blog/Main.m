
  zlink "routines/Comment"
  zlink "routines/Database"
  zlink "routines/Post"
  zlink "routines/User"

; create users

  s ok=$$set^User(1,"alice~password~alice-jones@no-reply.com~Alice Jones")
  s ok=$$set^User(2,"bob~password~bob-smith@no-reply.com~Bob Smith")

; create posts

  s ok=$$set^Post(1,1,"lorem-ipsum~Lorem ipsum~Lorem ipsum dolor sit amet, consectetuer adipiscing elit.")
  s ok=$$set^Post(2,1,"donec-pede-justo~Donec pede justo~Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.")
  s ok=$$set^Post(3,2,"curabitur-ullamcorper-ultricies~Curabitur ullamcorper ultricies~ Curabitur ullamcorper ultricies nisi.")
  s ok=$$set^Post(4,2,"donec-vitae-sapien~Donec vitae sapien~Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.")

; create comments

  s ok=$$set^Comment(1,1,"This is awesome! Thank you.")
  s ok=$$set^Comment(2,2,"Thank you so much for sharing this.")

; fetch posts by post

  do fetch^Post(1,.data)
  w "Post fetched:",!
  w "slug: ",data("slug"),!
  w "title: ",data("title"),!
  w "description: ",data("description"),!

  do fetch^Post(2,.data)
  w !,"Post fetched:",!
  w "slug: ",data("slug"),!
  w "title: ",data("title"),!
  w "description: ",data("description"),!

; fetch posts by user

  do fetchByUser^Post(1,.data)
  w !,"Posts fetched by user:",!
  w data(1),!
  w data(2),!

; fetch comments

  do fetch^Comment(1,.data)
  w !,"Comment fetched:",!
  w "description: ",data("description"),!

  do fetch^Comment(2,.data)
  w !,"Comment fetched:",!
  w "description: ",data("description"),!

; drop database

  s ok=$$drop^Database()
  i ok=1 d
  . w !,"Database successfully dropped!",!
  e  d
  . w "Whoops! The database could not be dropped.",!
