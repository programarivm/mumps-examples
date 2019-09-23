# Open MUMPS by Example

Open source implemantation of the M programming language. 

## Prerequisites

- [The Mumps Programming Language](https://www.cs.uni.edu/~okane/)

## Quick Setup

Download the [Mumps interpreter](https://www.cs.uni.edu/~okane/source/MUMPS-MDH/mumps-18.02.src.tar.gz) and run the following commands:

    tar -zxvf mumps-18.02.src.tar.gz
    cd mumpsc
    sudo ./ConfigureNative.script
    sudo ./BuildMumpsWithGlobalsInSingleUserNative.script

The resulting interpreter is located in `/usr/bin/mumps`.

    $ mumps

    Mumps 17.30; Built: 16:05:53 Sep 23 2019
    Float: double; DBMS: Native Stand Alone; Hardware math: yes; Int: int; Float digits: 6; Cache: 33; Block: 2048; FP Bits: N/A
    http://threadsafebooks.com/
    Enter HALT to exit

    > write "Hello world"
    Hello world
    > halt
    EOF - goodbye ...

## 1. The Very Basics

    $ mumps 01-the-very-basics/hello-world.mps
    Hello world

---

### Contributions

Would you help make this tutorial better? Contributions are welcome.

- Feel free to send a pull request
- Drop an email at info@programarivm.com with the subject "Open MUMPS by Example"
- Leave me a comment on [Twitter](https://twitter.com/programarivm)
- Say hello on [Google+](https://plus.google.com/+Programarivm)

Many thanks.
