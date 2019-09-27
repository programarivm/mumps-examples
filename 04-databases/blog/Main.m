
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

; create posts

  s ok=$$set^PostRoutines(1,"lorem-ipsum~Lorem ipsum~Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.~1")
  i ok=1 d
  . w "Post successfully created!",!,!
  e  d
  . w "Whoops! The post could not be created.",!,!

  s ok=$$set^PostRoutines(2,"excepteur-sint-occaecat~Excepteur sint occaecat~Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.~2")
  i ok=1 d
  . w "Post successfully created!",!,!
  e  d
  . w "Whoops! The post could not be created.",!,!

; create comments

  s ok=$$set^CommentRoutines(1,"This is awesome. Thank you.~1")
  i ok=1 d
  . w "Comment successfully created!",!,!
  e  d
  . w "Whoops! The comment could not be created.",!,!

  s ok=$$set^CommentRoutines(2,".Thank you so much for sharing this.~2")
  i ok=1 d
  . w "Comment successfully created!",!,!
  e  d
  . w "Whoops! The comment could not be created.",!,!

; drop database

  d drop^DatabaseRoutines