# MUMPS Examples

**MUMPS** ("Massachusetts General Hospital Utility Multi-Programming System"), or **M**, is a general-purpose computer programming language originally designed in 1966 for the healthcare industry. Its differentiating feature is its "built-in" database, enabling high-level access to disk storage using simple symbolic program variables and subscripted arrays; similar to the variables used by most languages to access main memory. [Read more...](https://en.wikipedia.org/wiki/MUMPS)

The implementations currently available are:

- [Intersystems (Caché)](http://www.intersystems.com/)
- [FIS (GT.M)](http://www.fisglobal.com/products-technologyplatforms-gtm)
- [MUMPS Database and Language by Ray Newman](http://sourceforge.net/projects/mumps/)
- [Open Mumps](http://www.cs.uni.edu/~okane/)

The examples in this tutorial are run with both GPL Mumps and GT.M.

## Prerequisites

### GPL Mumps

- [The Mumps Programming Language](https://www.cs.uni.edu/~okane/)
- [Mumps Language Users' Guide](https://www.cs.uni.edu/~okane/source/MUMPS-MDH/ReadMe.pdf)
- [Mumps Language Quick Introduction & Tutorial](https://www.cs.uni.edu/~okane/source/MUMPS-MDH/MumpsTutorial.pdf)

### GT.M

- [MUMPS Technology Portal](http://mumps.cz/)

---

## Quick Setup

### GPL Mumps

To install the open source distribution of the Mumps interpreter:

    cd /usr/local/src
    wget https://www.cs.uni.edu/~okane/source/MUMPS-MDH/mumps-18.02.src.tar.gz
    tar -zxvf mumps-18.02.src.tar.gz
    cd mumpsc
    ./ConfigureNative.script
    ./BuildMumpsWithGlobalsInSingleUserNative.script

The resulting interpreter is located in `/usr/bin/mumps`.

    mumps

    Mumps 17.30; Built: 16:05:53 Sep 23 2019
    Float: double; DBMS: Native Stand Alone; Hardware math: yes; Int: int; Float digits: 6; Cache: 33; Block: 2048; FP Bits: N/A
    http://threadsafebooks.com/
    Enter HALT to exit

    > write "Hello world"
    Hello world
    > halt
    EOF - goodbye ...

To uninstall GPL Mumps:

    cd /usr/local/src/mumpsc
    make uninstall
    rm -f /usr/bin/mumps*

### GT.M

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

### GPL Mumps

Use the Open Mumps interpreter:

    mumps HelloWorld.m

### GT.M

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

## 3. Databases

### [`GenealogicalTree.m`](https://github.com/programarivm/mumps-examples/blob/master/02-user-defined-functions/GenealogicalTree.m)

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
---

### Contributions

Would you help make this tutorial better? Contributions are welcome.

- Feel free to send a pull request
- Drop an email at info@programarivm.com with the subject "Open MUMPS by Example"
- Leave me a comment on [Twitter](https://twitter.com/programarivm)
- Say hello on [Google+](https://plus.google.com/+Programarivm)

Many thanks.
