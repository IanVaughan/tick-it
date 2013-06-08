Tick It
=======

Command line application to interface with TickSpot

help :-

    tick

setup

    tick <config file>


list available projects to book to

    tick projects

Book some time to a project

    tick project hell 5     # book 5 hrs to the hell project
    tick p hell 5

select a project to be booking to

    tick project hell
    tick select hell # < nah
    tick p hell

can then just

    tick 5

or

    tick add 5


Time
----

- 5 or +5
- 5.8 fraction
- 5:20 time

All can have '-'' to detect time from project

- -5.2


We all make mistakes, whether its downloading this gem, or booking incorrect time :-

    tick undo


Settings/config/setup
------

`.tickconfig`

global and project

alias

aliases


Client.Project.Task bob

tick bob 5

Notes " notes "


Different day?

## todo

* Projects 

        (12-026) Project1 [##################################         ][65%][63.70h left]
        (12-026) Project2 [££££££££££££££££££                         ][25%][ 3.70h left]


* save multi tick config in file

        main:
          account:
            company:
            email:
            password: (encrypt)
          aliases:
            foo:
              name: foo
              id: 93737
              link: Client.Project.Task
    
* could not save password in config file, and if not found re-prompt on every action (masked of cource)
* this works nicely with local cache of data, only requiring password on adding time or refreshing local cache

