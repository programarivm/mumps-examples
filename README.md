# MUMPS Examples

**MUMPS** ("Massachusetts General Hospital Utility Multi-Programming System"), or **M**, is a general-purpose computer programming language originally designed in 1966 for the healthcare industry. Its differentiating feature is its "built-in" database, enabling high-level access to disk storage using simple symbolic program variables and subscripted arrays; similar to the variables used by most languages to access main memory. [Read more...](https://en.wikipedia.org/wiki/MUMPS)

The implementations currently available are:

- [Intersystems (Caché)](http://www.intersystems.com/)
- [FIS (GT.M)](http://www.fisglobal.com/products-technologyplatforms-gtm)
- [MUMPS Database and Language by Ray Newman](http://sourceforge.net/projects/mumps/)
- [Open Mumps](http://www.cs.uni.edu/~okane/)

The examples in this tutorial are run with GT.M.

## Prerequisites

- [GT.M Administration and Operations Guide](http://mumps.cz/gtm/books/ao/UNIX_manual/ao_UNIX_screen.pdf)
- [The GT.M Programmer's Guide](http://www.mumps.cz/gtm/books/pg/UNIX_manual/webhelp/content/preface.html)
- [GT.M Message and Recovery Procedures Manual](http://www.mupip.pl/books/mr/manual/titlepage.html)
- [MUMPS Technology Portal](http://mumps.cz/)

### Additional Documentation

- [Sourceforge](http://mumps.sourceforge.net/)

### GPL Mumps

- [The Mumps Programming Language](https://www.cs.uni.edu/~okane/)
- [Mumps Language Users' Guide](https://www.cs.uni.edu/~okane/source/MUMPS-MDH/ReadMe.pdf)
- [Mumps Language Quick Introduction & Tutorial](https://www.cs.uni.edu/~okane/source/MUMPS-MDH/MumpsTutorial.pdf)

---

## Quick Setup

To install GT.M on Debian based OS:

    apt-get install fis-gtm

Set up the environment variables:

    source /usr/lib/x86_64-linux-gnu/fis-gtm/V6.3-003A_x86_64/gtmprofile

Open the GT.M prompt:

    gtm

    GTM>write "Hello world"
    Hello world
    GTM>halt

To uninstall GT.M:

    apt-get purge fis-gtm

---

## Run the Examples

Copy the example of your choice into `$gtmdir/$gtmver/r`:

    cp -r <your-folder>/mumps-examples/04-databases/basic-sql-blog/* $gtmdir/$gtmver/r

Or alternatively create a symbolic link:

    ln -s <your-folder>/mumps-examples/04-databases/basic-sql-blog/*  ~/.fis-gtm/V6.3-003A_x86_64/r

Then run the example:

    mumps -run ^Main

---

## 1. The Very Basics

### [`HelloWorld.m`](https://github.com/programarivm/mumps-examples/blob/master/01-the-very-basics/HelloWorld.m)

    Hello world

### [`HelloWorldInLoop.m`](https://github.com/programarivm/mumps-examples/blob/master/01-the-very-basics/HelloWorldInLoop.m)

    Hello world
    Hello world
    Hello world
    Hello world
    Hello world
    Hello world
    Hello world
    Hello world
    Hello world
    Hello world

### [`HelloWorldInAnotherLoop.m`](https://github.com/programarivm/mumps-examples/blob/master/01-the-very-basics/HelloWorldInAnotherLoop.m)

    Hello world
    Hello world
    Hello world
    Hello world
    Hello world
    Hello world
    Hello world
    Hello world
    Hello world
    Hello world

### [`HelloWorldInNestedLoop.m`](https://github.com/programarivm/mumps-examples/blob/master/01-the-very-basics/HelloWorldInNestedLoop.m)

    1:1 Hello world
    1:2 Hello world
    1:3 Hello world
    1:4 Hello world
    1:5 Hello world
    2:1 Hello world
    2:2 Hello world
    2:3 Hello world
    2:4 Hello world
    2:5 Hello world

### [`ArithmeticOperations.m`](https://github.com/programarivm/mumps-examples/blob/master/01-the-very-basics/ArithmeticOperations.m)

    There were 7 apples, 8 pears and 9 oranges,
    a total of 24 fruits in a basket.
    Then, something happened:
    1 apple, 2 pears and 0 oranges were eaten!
    Now there are 21 fruits in the basket,
    the average fruit value is 7.

### [`Arrays.m`](https://github.com/programarivm/mumps-examples/blob/master/01-the-very-basics/Arrays.m)

    Approaching the solar system:
    Mercury
    Venus
    Earth
    Mars
    Jupiter
    Saturn
    Uranus
    Neptune
    Pluto

    September 2019:
    26 27 28 29 30 31 1
    2 3 4 5 6 7 8
    9 10 11 12 13 14 15
    16 17 18 19 20 21 22
    23 24 25 26 27 28 29
    30 1 2 3 4 5 6

    Genealogical tree:
    Harry and Emily had Jack

    Associative array:
    Have you ever been to London?

### [`ArraysShortened.m`](https://github.com/programarivm/mumps-examples/blob/master/01-the-very-basics/ArraysShortened.m)

> The output obtained is the same as that in [`Arrays.m`](https://github.com/programarivm/mumps-examples/blob/master/01-the-very-basics/Arrays.m)

## 2. User Defined Functions

### [`FactorialByReference.m`](https://github.com/programarivm/mumps-examples/blob/master/02-user-defined-functions/FactorialByReference.m)

    Enter n: 5
    5! = 120

### [`FactorialByValue.m`](https://github.com/programarivm/mumps-examples/blob/master/02-user-defined-functions/FactorialByValue.m)

    Enter n: 5
    5! = 120

### [`Fibonacci.m`](https://github.com/programarivm/mumps-examples/blob/master/02-user-defined-functions/Fibonacci.m)

    Enter n: 9
    F(9) = 34

## 3. Routines

### [`Main.m`](https://github.com/programarivm/mumps-examples/blob/master/03-routines/Main.m)

    Hello!
    Enter n: 9

    areaCircle(9) = 254.469
    fibonacci(9) = 34
    factorialByVal(9) = 362880
    factorialByRef(9) = 362880

> For further details also visit [MyMathRoutines.m](https://github.com/programarivm/mumps-examples/blob/master/03-routines/MyMathRoutines.m)

## 4. Databases

### [`GenealogicalTree.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/GenealogicalTree.m)

    Genealogical tree:
    ^gtree(0,1,1) is Jessica
    $data(^gtree(0,2)) is 0
    $data(^gtree(0,1,1,1)) is 1
    $data(^gtree(0,0,0,0,0)) is 10
    $data(^gtree(0)) is 11

    Removing tree...
    $data(^gtree(0,2)) is 0
    $data(^gtree(0,1,1,1)) is 0
    $data(^gtree(0,0,0,0,0)) is 0
    $data(^gtree(0)) is 0

### [`basic-sql-crud/Main.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/basic-sql-crud/Main.m)

    User successfully created!
    User successfully created!

    User successfully fetched!
    username: alice
    email: alice-jones@no-reply.com
    fullname: Alice Jones

    User successfully updated!

    User successfully fetched!
    username: amelia
    email: amelia-roberts@no-reply.com
    fullname: Amelia Roberts

    User successfully deleted!

    User successfully fetched!
    username:
    email:
    fullname:

    Database successfully dropped!

For further details also visit:

- [`Database.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/basic-sql-crud/routines/Database.m)
- [`User.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/basic-sql-crud/routines/User.m)

### [`basic-sql-blog/Main.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/basic-sql-blog/Main.m)

    Category fetched (3):
    description: Foobar

    Post fetched (1):
    slug: lorem-ipsum
    title: Lorem ipsum
    description: Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

    Post fetched by category (3):
    (3,3,2) = curabitur-ullamcorper-ultricies~Curabitur ullamcorper ultricies~Curabitur ullamcorper ultricies nisi.
    (4,3,2) = donec-vitae-sapien~Donec vitae sapien~Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.

    Post fetched by category (1):
    (1,1,1) = lorem-ipsum~Lorem ipsum~Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
    (2,1,1) = donec-pede-justo~Donec pede justo~Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.

    Comment fetched (1):
    description: This is awesome! Thank you.

    Database successfully dropped!

For further details also visit:

- [`Category.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/basic-sql-blog/routines/Category.m)
- [`Comment.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/basic-sql-blog/routines/Comment.m)
- [`Database.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/basic-sql-blog/routines/Database.m)
- [`Post.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/basic-sql-blog/routines/Post.m)
- [`User.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/basic-sql-blog/routines/User.m)

---

### Contributions

Would you help make this tutorial better? Contributions are welcome.

- Feel free to send a pull request
- Drop an email at info@programarivm.com with the subject "Open MUMPS by Example"
- Leave me a comment on [Twitter](https://twitter.com/programarivm)
- Say hello on [Google+](https://plus.google.com/+Programarivm)

Many thanks.
