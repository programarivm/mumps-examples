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

    cd /usr/lib/x86_64-linux-gnu/fis-gtm/V6.3-003A_x86_64
    source gtmprofile

Open the GT.M prompt:

    gtm

    GTM>write "Hello world"
    Hello world
    GTM>halt

To uninstall GT.M:

    apt-get purge fis-gtm

---

## Run the Examples

Copy the examples into your `~/.fis-gtm/V6.3-003A_x86_64/r` folder and run:

    mumps -run ^HelloWorld

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

> For further details also visit [MyMath.m](https://github.com/programarivm/mumps-examples/blob/master/03-routines/MyMath.m)

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

### [`Crud.m`](https://github.com/programarivm/mumps-examples/blob/master/04-databases/Crud.m)

    User successfully created!

    User successfully created!

    User successfully fetched!
    Username: alice
    Email: alice-jones@no-reply.com
    Full name: Alice Jones


    User successfully updated!

    User successfully fetched!
    Username: amelia
    Email: amelia-roberts@no-reply.com
    Full name: Amelia Roberts

    User successfully deleted!

    User successfully fetched!
    Username:
    Email:
    Full name:

  > For further details also visit [UserRoutines.m](https://github.com/programarivm/mumps-examples/blob/master/04-databases/UserRoutines.m)

---

### Contributions

Would you help make this tutorial better? Contributions are welcome.

- Feel free to send a pull request
- Drop an email at info@programarivm.com with the subject "Open MUMPS by Example"
- Leave me a comment on [Twitter](https://twitter.com/programarivm)
- Say hello on [Google+](https://plus.google.com/+Programarivm)

Many thanks.
