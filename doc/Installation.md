# Lavanda

Lavanda is a ruby library, for testing in multimachine contest.
Lavanda require and use twopence from https://github.com/openSUSE/twopence

The library is published in rubygem.org


## How install and use Lavanda:

For the official version:
`gem install Lavanda`

or for the devel version: 

`git clone https://github.com/MalloZup/Lavanda.git; cd Lavanda`
`gem build Lavanda.gemspec`
`gem install Lavanda*`

## How to use Lavanda


In  a `hello.rb` file

`require twopence`
`require lavanda`

## How to install and what is twopence :

https://github.com/openSUSE/twopence

For OpenSUSE/SUSE systems : 

`zypper addrepo http://download.opensuse.org/repositories/devel:tools/openSUSE_Leap_42.1/devel:tools.repo`

`zypper refresh`

`zypper install twopence`

