# cputemp
Linux CPU temperature display command line interface tool.
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/hyperium/hyper/master/LICENSE) ![cputemp](https://github.com/wiremoons/cputemp/workflows/cputemp/badge.svg?branch=master) 

# cputemp

A command line (CLI) utility program to display a Linux computers CPU 
temperature called: 'cputemp'.

The program is written in [Ada](https://www.adacore.com/about-ada).

The program currently only works on Linux based systems as it uses the `/proc` 
file system to obtain the current CPU temperature.


## Programs Purpose

A similar program was written other languages to check up on the current 
temperature of a couple of Raspberry Pi 4B computers. 

I already had a similar tool written in C called 
[rpi-temp](https://github.com/wiremoons/rpi-temp). 
This however only works with the Raspbian version of Linux, so did not work 
when running the my Raspberry Pi on Ubuntu 64bit ARM Linux. So I 
re-created a tool that worked with any Debian based Linux, such as Debian, 
Ubuntu, and Raspbian. It also works with other non Raspberry Pi computers too,
as long as they are using Linux as their operating system (OS). 

I re-wrote the program using [Ada](https://www.adacore.com/about-ada) as way to 
learn the language, while re-creating a familar tool.


## Using the Program

When run, the command outputs the following information, that shows the 
hostname it ran on, and the currect CPU temperature in degrees centigrade 
(ie Celsius):
```
'pavimoons' CPU => 45.0 °C
```

The tool is often used with `ssh` to cycle through the different computers and 
output each of their current CPU temperatures to screen. This is done by first 
create a bash shall alias, and saving it in the `~/.bash_aliases` file. 
The alias I use is below:

```bash
alias alltemps='ssh -q simon@pi4server.local ~/GenIsys-Pi4/assets/cputemp && ssh -q simon@pi4moons.local ~/GenIsys-Pi4/assets/cputemp && ssh -q simon@pi4mobi.local ~/GenIsys-Pi4/assets/cputemp'
```

When the above bash alias is run with the command `alltemps` the output is 
as follows:

```
'pi4server' CPU => 39.4 °C
'pi4moons' CPU => 38.0 °C
'pi4mobi' CPU => 38.9 °C
'pihole' CPU => 36.5 °C
```

The tool also has a brief help output obtained with the command: `cputemp -h` 
or `cputemp --help`:

```
Program displays the current CPU temperature (Linux only).
Usage: cputemp [switches]

 -h, --help    Show command line usage for application
 -v, --version Show version details

Exit following display of help message.
```

As indicated by the above help screen output, the version information for the 
program can also be checked with the command: `cputemp -v` or `cputemp --version`:

```
'cputemp' is version: '1.0.0' running on: 'Ubuntu 20.04.1 LTS' with 12 CPU cores.
Compiled on: 2020-10-03 @ 16:07:15.
Copyright (c) 2020 Simon Rowe.

Ada source built as 'release' using GNU GNAT complier version: '9.3.0'.

For licenses and further information visit:
 - https://github.com/wiremoons/cputemp/

All is well.
```


## Building 'cputemp'

Ada supports many operating systems and hardware platforms, but this particular 
program will only work on a Linux based system as it uses the `/proc` file 
system to obtain the current CPU temperature.

To build 'cputemp' from source on a Linux based system, the following steps 
can be used:

1. Install an Ada compiler and supporting libraries. More information on installing 
Ada can be found here: [Get Ada](http://www.getadanow.com/).
2. Once Ada is installed on your system, you can clone this GitHub repo with 
the `git` command: `git clone https://github.com/wiremoons/cputemp.git`
3. Then in the cloned code directory for `cputemp` use `gprbuild` to build a 
release version of `cputemp` with the command: `gprbuild -XBUILD=release`. 
Other `gprbuild` build commands include a debug build: `gprbuild -XBUILD=debug`. 
Alternatively, the new (in beta) [Alire](https://alire.ada.dev/) package manager 
should also support the install and build as well.
4. The compiled binary of `cputemp` can now be found in the `./bin` sub 
directory. Just copy it somewhere in your path, and it should work when run.

**NOTE:** The build is statically compiled - so the program should run when moved 
to a similar CPU based Linux system, without the Ada standard libaries being 
installed as addtional dependencies.

## License

The application is provided under the MIT open source license. A copy of the 
MIT license file is [here](./LICENSE).

