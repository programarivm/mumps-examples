
  zlink "routines/Category"
  zlink "routines/Comment"
  zlink "routines/Database"
  zlink "routines/Post"
  zlink "routines/User"

; create users

  s ok=$$set^User(1,"alice~password~alice-jones@no-reply.com~Alice Jones")
  s ok=$$set^User(2,"bob~password~bob-smith@no-reply.com~Bob Smith")

; create categories

  s ok=$$set^Category(1,"foo~Foo")
  s ok=$$set^Category(2,"bar~Bar")
  s ok=$$set^Category(3,"foobar~Foobar")

; create posts
;
; s ok=$$set^Post(1, ...
;                 ⮡ post id
; s ok=$$set^Post(1,1, ...
;                   ⮡ category id
; s ok=$$set^Post(1,1,1 ...
;                     ⮡ user id

  s ok=$$set^Post(1,1,1,"lorem-ipsum~Lorem ipsum~Lorem ipsum dolor sit amet, consectetuer adipiscing elit.")
  s ok=$$set^Post(2,1,1,"donec-pede-justo~Donec pede justo~Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.")
  s ok=$$set^Post(3,3,2,"curabitur-ullamcorper-ultricies~Curabitur ullamcorper ultricies~Curabitur ullamcorper ultricies nisi.")
  s ok=$$set^Post(4,3,2,"donec-vitae-sapien~Donec vitae sapien~Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.")

; create comments

  s ok=$$set^Comment(1,1,"This is awesome! Thank you.")
  s ok=$$set^Comment(2,2,"Thank you so much for sharing this.")

; write redords

  write "Users: ",!
  zwrite ^users

  write !,"Categories: ",!
  zwrite ^categories

  write !,"Posts: ",!
  zwrite ^posts

  write !,"Comments: ",!
  zwrite ^comments

; fetch a category

  s id=3
  do fetch^Category(id,.data)
  w !,"Category fetched (",id,"):",!
  zwrite data

; fetch a post

  s id=1
  do fetch^Post(id,.data)
  w !,"Post fetched (",id,"):",!
  zwrite data

; fetch posts by category

  s id=3
  do fetchByCategory^Post(id,.data)
  w !,"Posts fetched by category (",id,"):",!
  zwrite data

; fetch posts by user

  s id=1
  do fetchByUser^Post(id,.data)
  w !,"Posts fetched by user (",id,"):",!
  zwrite data

; fetch a comment

  s id=1
  do fetch^Comment(id,.data)
  w !,"Comment fetched (",id,"):",!
  zwrite data

; drop database

  s ok=$$drop^Database()
  i ok=1 d
  . w !,"Database successfully dropped!",!
  e  d
  . w "Whoops! The database could not be dropped.",!
