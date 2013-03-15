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



Projects :-

(12-026) Mobile: Free Access Offers [##################################         ][65%][63.70h left]
(12-026) Mobile: Free Access Offers [££££££££££££££££££                         ][25%][ 3.70h left]




$ thor
Tasks:
  thor help [TASK]     # Describe available tasks or one specific task
  thor install NAME    # Install an optionally named Thor file into your system tasks
  thor installed       # List the installed Thor modules and tasks
  thor list [SEARCH]   # List the available thor tasks (--substring means .*SEARCH)
  thor uninstall NAME  # Uninstall a named Thor module
  thor update NAME     # Update a Thor file from its original location
  thor version         # Show Thor version


Rename app 'thor' to `tick`?

Readitlater/pocket page that has sub-tasks



https://globalpersonals.tickspot.com/api/projects?email=ivaughan@globalpersonals.co.uk&password=


# # https://github.com/bricooke/tickspot-ruby
# # require 'tickspot'

search for local .tickconfig in current dir, then recervise search up

save multi tick config in file

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

could not save password in config file, and if not found re-prompt on every action (masked of cource)
this works nicely with local cache of data, only requiring password on adding time or refreshing local cache

