
madvillain
**********

.. image:: https://gitlab.com/constrict0r/madvillain/badges/master/pipeline.svg
   :alt: pipeline

.. image:: https://travis-ci.com/constrict0r/madvillain.svg
   :alt: travis

.. image:: https://readthedocs.org/projects/madvillain/badge
   :alt: readthedocs

Ansible role to apply the ultimate madvillain configuration.

.. image:: https://gitlab.com/constrict0r/img/raw/master/madvillain/madvillain.png
   :alt: madvillain

Full documentation on `Readthedocs
<https://madvillain.readthedocs.io>`_.

Source code on:

`Github <https://github.com/constrict0r/madvillain>`_.

`Gitlab <https://gitlab.com/constrict0r/madvillain>`_.

`Part of: <https://gitlab.com/explore/projects?tag=doombots>`_

.. image:: https://gitlab.com/constrict0r/img/raw/master/madvillain/doombots.png
   :alt: doombots

**Ingredients**

.. image:: https://gitlab.com/constrict0r/img/raw/master/madvillain/ingredients.png
   :alt: ingredients


Contents
********

* `Description <#Description>`_
* `Usage <#Usage>`_
   * `Developer <#developer>`_
      * `Pytest <#pytest>`_
      * `Pytest with virtualenv <#pytest-with-virtualenv>`_
      * `Pytest on Emacs <#pytest-on-emacs>`_
      * `Tox <#tox>`_
      * `Tox on Emacs <#tox-on-emacs>`_
      * `Virtualenvs on Emacs <#virtualenvs-on-emacs>`_
      * `PDB on Emacs <#pdb-on-emacs>`_
      * `Poetry <#poetry>`_
      * `Platformio and Emacs <#platformio-and-emacs>`_
* `Variables <#Variables>`_
   * `expand <#expand>`_
   * `group <#group>`_
   * `packages <#packages>`_
   * `packages_js <#packages-js>`_
   * `packages_pip <#packages-pip>`_
   * `packages_purge <#packages-purge>`_
   * `password <#password>`_
   * `repositories <#repositories>`_
   * `services <#services>`_
   * `services_disable <#services-disable>`_
   * `system_skeleton <#system-skeleton>`_
   * `upgrade <#upgrade>`_
   * `users <#users>`_
   * `user_skeleton <#user-skeleton>`_
   * `user_tasks <#user-tasks>`_
   * `configuration <#configuration>`_
* `YAML <#YAML>`_
* `Attributes <#Attributes>`_
   * `item_name <#item-name>`_
   * `item_pass <#item-pass>`_
   * `item_groups <#item-groups>`_
   * `item_expand <#item-expand>`_
   * `item_path <#item-path>`_
* `Requirements <#Requirements>`_
* `Compatibility <#Compatibility>`_
* `License <#License>`_
* `Links <#Links>`_
* `UML <#UML>`_
   * `Deployment <#deployment>`_
* `Author <#Author>`_

Description
***********

Ansible role to apply the ultimate madvillain configuration.

This is capable of:

* Upgrade the system.

* Add `apt <https://wiki.debian.org/Apt>`_ repository sources.

* Update the apt cache.

* Uninstall apt packages.

* Install apt packages.

* Install `yarn <https://yarnpkg.com>`_ packages.

* Install `pip <https://pypi.org/project/pip/>`_ packages.

* Apply system-wide configuration using git.

* Stop services and disable them.

* Enable services and restart them.

* Create users.

* Add users to groups.

* Apply user-wide configuration using git.

* Run custom user tasks.

By default this role applies the following configuration:

* Installs the base software:

..

   * apt-transport-https

   * bzip2

   * ca-certificates

   * curl

   * sudo

   * unrar-free

   * unzip

   * vim

   * wget

   * xz-utils

* Install the desktop software:

..

   * audacity

   * easytag

   * ffmpeg

   * gedit

   * gimp

   * gnome

   * gparted

   * inkscape

   * kdenlive

   * keepassx

   * obs-studio

   * rhythmbox

   * vlc

* Installs the base developer software:

..

   * bats

   * emacs

   * git

   * libtext-csv-perl

   * make

   * meld

   * retext

   * ssh-askpass

   * texlive-latex-base

   * texlive-latex-extra

   * tree

* Installs the python developer software:

..

   * Via apt:

   ..

      * direnv

      * python3

      * python3-pip

      * python3-pytest

      * python3-venv

      * python3-virtualenv

      * tox

   * Via pip:

   ..

      * ansible-lint

      * autopep8

      * flake8

      * jedi

      * poetry

      * sphinx

      * sphinx_rtd_theme

      * rope

      * yapf

* Installs the microcontroller developer software:

..

   * Via apt:

   ..

      * clang

      * fritzing

      * fritzing-data

      * fritzing-parts

      * python3

      * python3-pip

   * Via pip:

   ..

      * platformio

* Installs the madvillain software:

..

   * docker

   * docker.io

   * docker-compose

   * qemu-kvm

   * virt-manager

* Configures the base software:

..

   * vim

   ..

      * Creates a *.vimrc* configuration file on each user home
         directory.

      * Enable syntax highlight.

      * Set two spaces instead of tabs.

* Configures the desktop software:

..

   * emacs

   ..

      * Creates a *.emacs.d* configuration folder on each user home
         directory.

      * Enable line numbers.

      * Set themes folder.

      * Set wintermute theme.

      * Use spaces instead of tabs.

* Configures the base developer software:

..

   * emacs

   ..

      * Creates a *.emacs.d* configuration folder on each user home
         directory.

      * Enable line numbers.

      * Set themes folder.

      * Set wintermute theme.

      * Use spaces instead of tabs.

* Configures the python developer software:

..

   * direnv

   ..

      * Enable *direnv* command on *~/.bashrc* file.

   * emacs

   ..

      * Set `elpy <https://is.gd/tPU9gM>`_ plugin.

      * Set `tox.el <https://is.gd/hUqDMw>`_ plugin.

      * Set keybindings:

      ..

         * C-c C-c: Evaluates the current script.

         * C-RET (Enter): Evaluates the curren statement (current
            line plus the
               following nested line).

         * C-c C-z: Switches between your script and the interactive
            shell.

         * C-c C-d: Displays documentation for the thing under cursor
            (function or module). The documentation will pop in a
            different buffer, can be closed with *q*.

         * C-c C-t: Run pytest tests.

         * M-x tox-current-test: Run tox tests for current test.

         * M-x tox-current-class: Run tox tests for current class.

         * M-x pdb: Run PDB on a new window.

         * C-x: Set breakpoint on current line.

   * `poetry <https://poetry.eustace.io/>`_

   ..

      * Add poetry path to the *~/.profile* file to maintain
         dependecies aisolated.

   * `python3-virtualenv <https://virtualenv.pypa.io/en/latest/>`_

   ..

      * Enable elpy virtual enviroments on the *~/.bashrc* file.

* Configures the microcontroller developer software:

..

   * emacs

   ..

      * Set `platformio plugin <https://is.gd/8HIcsb>`_ plugin.

      * Set keybindings:

      ..

         * C-c i b: Build the project without auto-uploading.

         * C-c i c: Clean compiled objects.

         * C-c i u: Build and upload.

   * groups - Adds users to the groups:

      * dialout.

   * udev - Adds the rules file
      */etc/udev/rules.d/99-platformio-udev.rules*.

* Configures the madvillain software:

..

   * *~/.bashrc*

   ..

      * Adds the **changes** bash alias to quickly visualize
         repositories that were modified.

      * Adds the **runit** bash alias to quickly run an Ansible
         playbook.

      * Adds the **gic** bash alias to quickly make a git commit and
         push (lazy lazy villain).

      * Adds the **fixit** bash alias to quickly set monitors
         display.

   * gdm3

      * Disables the Wayland protocol.

   * gnome

   ..

      * Sets the dock to include the launchers:

      ..

         * emacs

         * firefox.

         * libre-office writer.

         * nautilus

         * rhythmbox

         * terminal.

   * nautilus

   ..

      * Adds the following folder bookmarks:

      ..

         * little-lab

         * repos

   * virt

   ..

      * Adds each user to the following groups:

      ..

         * libvirt

         * libvirt-qemu

         * kvm

* Creates the following home directory layout:

..

   ::

      home/
      ├── little-lab
      ├── repos
      ├── .emacs.d
      │   ├── config
      │   │   ├── base.el
      │   │   ├── org.el
      │   │   └── python.el
      │   ├── init.el
      │   └── themes
      │       └── wintermute-theme.el
      └── .vimrc

* Modifies the following files:

..

   ::

      home/
      ├── .bashrc
      ├── .config/gtk-3.0/bookmarks
      └── .profile


Usage
*****

* To install and execute:

..

   ::

      ansible-galaxy install constrict0r.madvillain
      ansible localhost -m include_role -a name=constrict0r.madvillain -K

* Passing variables:

..

   ::

      ansible localhost -m include_role -a name=constrict0r.madvillain -K \
          -e "{packages: [gedit, rolldice]}"

* To include the role on a playbook:

..

   ::

      - hosts: servers
        roles:
            - {role: constrict0r.madvillain}

* To include the role as dependency on another role:

..

   ::

      dependencies:
        - role: constrict0r.madvillain
          packages: [gedit, rolldice]

* To use the role from tasks:

..

   ::

      - name: Execute role task.
        import_role:
          name: constrict0r.madvillain
        vars:
          packages: [gedit, rolldice]

* To run tests:

..

   ::

      cd madvillain
      chmod +x testme.sh
      ./testme.sh

   On some tests you may need to use *sudo* to succeed.


Developer
=========


Pytest
------

In order to run tests with pytest, execute the following steps:

* Inside your project’s root folder, create a *tests* directory:

..

   ::

      cd my-project
      mkdir tests

* Add your test file inside the *tests* folder, be sure to prefix it
   with the text *test_*, for example *test_my_test.py*.

..

   ::

      touch tests/test_my_test.py

* Inside the test file add some test functions, each function name
   must be prefixed with the text *test_*:

..

   ::

      def tests_ok():
          print('ok')

* Call pytest using the command:

..

   ::

      python3 -m pytest tests/


Pytest with virtualenv
----------------------

If you want to use a *virtualenv* for running your tests, from a
terminal:

* Activate the virtual enviroment:

..

   ::

      source bin/activate

* Then run the tests:

..

   ::

      python3 -m pytest tests/


Pytest on Emacs
---------------

On emacs, you can use the following keybindings:

* C-c C-c: Execute current script.

* C-c C-t: Execute pytest tests.

* M-x tox-run-current-test: Execute current tox test.

* M-x tox-run-current-class: Execute current tox test suite.

For more keybinding available see the `elpy documentation
<https://elpy.readthedocs.io/en/latest/>`_.


Tox
---

In order to run tox, execute the following steps:

* Create a folder named *tests*.

* Add your tests to the created folder.

* On the root directory of your project, create a *tox.ini* file with
   the following contents:

..

   ::

      [tox]
      skipsdist = True
      envlist = py{35}

      [testenv]
      deps =
        pytest
      commands =
        python3 -m pytest tests

* Finally call tox:

..

   ::

      tox


Tox on Emacs
------------

To run tox form emacs, step over the name of a test function and
execute the keybindings:

::

   M-x tox-current-test RET


Virtualenvs on Emacs
--------------------

To make emacs automatically load a virtual enviroment when a file
inside a project is edited, follow the steps:

* Create a virtual enviroment inside *·/.virtualenvs*, for example
   name it *my_virtualenv*:

..

   ::

      python3 -m venv ~/.virtualenvs/my_virtualenv

* Add a file named *.dir-locals.el* on the root directory of your
   project with the following content:

..

   ::

      ;; Directory Local Variables

      ;; Activate 'my_virtualenv' virtual enviroment from emacs.
      ((nil . ((pyvenv-workon . "my_virtualenv"))))

Now if you open a file of your project the virtual enviroment
*my_virtualenv* will be enabled automatically.


PDB on Emacs
------------

In order to run `pdb <https://docs.python.org/3/library/pdb.html>`_
from emacs when using a virtual enviroment, execute the steps:

* Create your virtual enviroment:

..

   ::

      python3 -m venv ~/.virtualenvs/my_virtualenv

* Copy **pdb3** from the system path to the newly created virtual
   enviroment:

..

   ::

      cp /usr/bin/pdb3 ~/.virtualenvs/my_virtualenv/bin/pdb

* Edit the file *~/.virtualenvs/my_virtualenv/bin/pdb* and change the
   first line from:

..

   ::

      #! /usr/bin/python3.5

* To:

..

   ::

      #! /home/username/.virtualenvs/my_virtualenv/bin/python3

* If you are developing a python package, inside emacs and on first
   editing, install your package running:

..

   ::

      M-x shell RET
      python setup.py install RET

* You can now use the following keybindings:

..

   ::

      - M-x pdb: Run PDB on a new window.
      - C-x: Set breakpoint on current line.
      - c: Run up to the breakpoint.
      - n: Next line.
      - s: Explore (search) functions on current line.
      - p: Watch a variable.
      - w: Print out the stack.
      - u: Go up on the stack.
      - d: Go down on the stack.


Poetry
------

In order to use `poetry <https://poetry.eustace.io/>`_ you will need a
**pyproject.toml** file similar to the following:

::

   [tool.poetry]
   name = "my-project"
   version = "0.1.0"
   description = "My description"
   authors = ["username <username@protonmail.com>"]
   license="MIT"

   readme = ""
   homepage="https://gitlab.com/username/my-project"
   repository="https://gitlab.com/username/my-project"
   documentation="https://project.readthedocs.io"

   keywords = ["devel", "tools"]
   classifiers = [
       'Topic :: Software Development :: Devel Tools',
       'License :: OSI Approved :: MIT License',
   ]

   [tool.poetry.dev-dependencies]
   pytest = "^3.10"
   tox = "^3.14"

   [tool.poetry.dependencies]
   click = "^7.0"
   python = "^3.7"

   [tool.poetry.scripts]
   my-project = "my_project.cli:main"

   [tool.tox]
   legacy_tox_ini= """
   [tox]
   skipsdist = True
   envlist = py{37}

   [testenv]
   deps =
     poetry
     pytest
   commands =
     poetry install
     pytest
   """
   [build-system]
   requires = ["poetry>=0.12"]
   build-backend = "poetry.masonry.api"

And then run **poetry** as a **python3** module:

::

   python3 -m poetry install


Platformio and Emacs
--------------------

To use Emacs to handle Platformio projects, follow the next steps:

Create your project directory and enter on it:

::

   mkdir ~/your-project
   cd ~/your-project

Obtain your board ID, you can use platformio to search for your board
IDE, for example, to show the boards that are compatible with the
ESP8266 microcontroller, use the following command:

::

   pio boards wemos

   # Shows something like:
   Platform: espressif8266
   -----------------------------------------------------------------------------
   ID                  MCU           Frequency  Flash   RAM    Name
   -----------------------------------------------------------------------------
   d1                  ESP8266       80Mhz     4096kB  80kB   WeMos D1(Retired)
   d1_mini             ESP8266       80Mhz     4096kB  80kB   WeMos D1 R2 & mini

For arduino you can use:

::

   pio boards arduino

   # Shows something like:
   Platform: atmelavr
   -----------------------------------------------------------------------------
   ID                  MCU           Frequency  Flash   RAM    Name
   -----------------------------------------------------------------------------
   nanoatmega328new    ATMEGA328P    16MHz      30KB    2KB     Arduino Nano
   pro16MHzatmega328   ATMEGA328P    16MHz      30KB    2KB     Arduino Pro
   robotControl        ATMEGA32U4    16MHz      28KB    2.50KB  Arduino Robot
   uno                 ATMEGA328P    16MHz      31.50KB 2KB     Arduino Uno

You can also choose your board ID by using the `platformio boards
<https://is.gd/D01WDa>`_ or the `Embedded Boards
<https://platformio.org/boards>`_ Explorer command.

Once you have your board ID, generate the project via the platformio
init **–ide command**, for example using the *d1_mini* board ID:

::

   platformio init --ide emacs --board d1_mini

Or for the Arduino Uno:

::

   platformio init --ide emacs --board uno

The **init** command will create the project structure, a
*platformio.ini* file will be created on the project’s root directory,
edit this *platformio.ini* to specify the serial port that your
microcontroller is using on your computer, it could be something like
*/dev/ttyUSB0*, */dev/ttyACM0* or similar, for the ESP8266 add:

::

   [env:d1_mini]
   platform = espressif8266
   board = d1_mini
   framework = arduino
   upload_port = /dev/ttyUSB0

For the Arduino Uno add:

::

   [env:uno]
   platform = atmelavr
   board = uno
   framework = arduino
   upload_port = /dev/ttyACM0

In order to activate the **platformio** commands on Emacs, you will
need to add a *.projectile* file on the root directory of your project
(as Emacs uses `projectile <https://github.com/bbatsov/projectile>`_
as its only requirement), create an empty *.projectile* file on root
directory:

::

   touch .projectile

Next, create the file *src/Blink.ino* with the following content and
save it:

::

   /*
   ESP8266 Blink
   Blink the blue LED on the ESP8266 module.
   */

   #define LED 2 // Define blinking LED pin.

   void setup() {
     pinMode(LED, OUTPUT); // Initialize the LED pin as an output.
   }
   // The loop function runs over and over again forever.
   void loop() {
     digitalWrite(LED, LOW); // Turn LED on (Note that LOW is the voltage level).
     delay(1000); // Wait for a second
     digitalWrite(LED, HIGH); // Turn LED off by making the voltage HIGH.
     delay(1000); // Wait for two seconds.
   }

Open the *src/Blink.ino* file with Emacs, if you are opening a *.ino*
file for the very first time, you probably have to close Emacs and
open it again to refresh the changes made by the package manager.

When Editing on Emacs, you can use the following keybindings:

* C-c i b: Build the project without auto-uploading.

* C-c i c: Clean compiled objects.

* C-c i u: Build and upload.

For more available keybindings, see the `official documentation
<https://is.gd/8HIcsb>`_.


Variables
*********

The following variables are supported:


expand
======

Boolean value indicating if load items from file paths or URLs or just
treat files and URLs as plain text.

If set to *true* this role will attempt to load items from the
especified paths and URLs.

If set to *false* each file path or URL found on packages will be
treated as plain text.

This variable is set to *false* by default.

::

   ansible localhost -m include_role -a name=constrict0r.madvillain \
       -e "expand=true configuration='/home/username/my-config.yml' titles='packages'"

If you wish to override the value of this variable, specify an
*item_path* and an *item_expand* attributes when passing the item, the
*item_path* attribute can be used with URLs too:

::

   ansible localhost -m include_role -a name=constrict0r.madvillain \
       -e "{expand: false,
           packages: [ \
               item_path: '/home/username/my-config.yml', \
               item_expand: false \
           ], titles: 'packages'}"

To prevent any unexpected behaviour, it is recommended to always
specify this variable when calling this role.


group
=====

List of groups to add all users into. Each non-empty username will be
added to the groups specified on this variable.

This list can be modified by passing an *groups* array when including
the role on a playbook or via *–extra-vars* from a terminal.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{group: [disk, sudo]}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         group:
           - disk
           - sudo

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{group: [disk, sudo]}"


packages
========

List of packages to install via apt.

This list can be modified by passing a *packages* array when including
the role on a playbook or via *–extra-vars* from a terminal.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{packages: [gedit, rolldice]}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         packages:
           - gedit
           - rolldice

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{packages: [gedit, rolldice]}"


packages_js
===========

List of packages to install via yarn.

This list can be modified by passing a *packages_js* array when
including the role on a playbook or via *–extra-vars* from a terminal.

If you want to install a specific package version, then specify *name*
and *version* attributes for the package.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{packages_js: [node-red, {name: requests, version: 2.22.0}]}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         packages_js:
           - node-red
           - name: requests
             version: 2.22.0

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{packages_js: [node-red, {name: requests, version: 2.22.0}]}"


packages_pip
============

List of packages to install via pip.

This list can be modified by passing a *packages_pip* array when
including the role on a playbook or via *–extra-vars* from a terminal.

If you want to install a specific package version, append the version
to the package name.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{packages_pip: ['bottle==0.12.17', 'whisper']}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         packages_pip:
           - bottle==0.12.17
           - whisper

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{packages_pip: ['bottle==0.12.17', 'whisper']}"


packages_purge
==============

List of packages to purge using apt.

This list can be modified by passing a *packages_purge* array when
including the role on a playbook or via *–extra-vars* from a terminal.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{packages_purge: [gedit, rolldice]}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         packages_purge:
           - gedit
           - rolldice

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{packages_purge: [gedit, rolldice]}"


password
========

If an user do not specifies the *password* attribute, this password
will be setted for that user.

This password will only be setted for new users and do not affects
existent users.

This variable defaults to 1234.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{password: 4321}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         password: 4321

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "password=4321"


repositories
============

List of repositories to add to the apt sources.

This list can be modified by passing a *repositories* array when
including the role on a playbook or via *–extra-vars* from a terminal.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{repositories: [{ \
            name: multimedia, \
            repo: 'deb http://www.debian-multimedia.org sid main' \
        }]}}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         repositories:
           - name: multimedia
             repo: deb http://www.debian-multimedia.org sid main

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{repositories: [{ \
            name: multimedia, \
            repo: 'deb http://www.debian-multimedia.org sid main' \
        }]}}"


services
========

List of services to enable and start.

This list can be modified by passing a *services* array when including
the role on a playbook or via *–extra-vars* from a terminal.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{services: [mosquitto, nginx]}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         services:
           - mosquitto
           - nginx

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{services: [mosquitto, nginx]}"


services_disable
================

List of services to stop and disable.

This list can be modified by passing a *services_disable* array when
including the role on a playbook or via *–extra-vars* from a terminal.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{services_disable: [mosquitto, nginx]}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         services_disable:
           - mosquitto
           - nginx

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{services_disable: [mosquitto, nginx]}"


system_skeleton
===============

URL or list of URLs pointing to git skeleton repositories containing
layouts of directories and configuration files.

Each URL on system_skeleton will be checked to see if it points to a
valid git repository, and if it does, the git repository is cloned.

The contents of each cloned repository will then be copied to the root
of the filesystem as a simple method to apply system-wide
configuration.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{system_skeleton: [https://gitlab.com/huertico/server]}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         system_skeleton:
           - https://gitlab.com/huertico/server
           - https://gitlab.com/huertico/client

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{system_skeleton: [https://gitlab.com/huertico/server]}"


upgrade
=======

Boolean variable that defines if a system full upgrade is performed or
not.

If set to *true* a full system upgrade is executed.

This variable is set to *true* by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "upgrade=false"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         upgrade: false

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "upgrade=false"


users
=====

List of users to be created. Each non-empty username listed on users
will be created.

This list can be modified by passing an *users* array when including
the role on a playbook or via *–extra-vars* from a terminal.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{users: [mary, jhon]}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         users:
           - mary
           - jhon

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{users: [mary, jhon]}"


user_skeleton
=============

URL or list of URLs pointing to git skeleton repositories containing
layouts of directories and configuration files.

Each URL on system_skeleton will be checked to see if it points to a
valid git repository, and if it does, the git repository is cloned.

The contents of each cloned repository will then be copied to each
user home directory.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{user_skeleton: [https://gitlab.com/constrict0r/home]}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         user_skeleton:
           - https://gitlab.com/constrict0r/home

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{user_skeleton: [https://gitlab.com/constrict0r/home]}"


user_tasks
==========

Absolute file path or URL to a *.yml* file containing ansible tasks to
execute.

Each file or URL on this variable will be checked to see if it exists
and if it does, the task is executed.

This variable is empty by default.

::

   # Including from terminal.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "{user_tasks: [https://is.gd/vVCfKI]}"

   # Including on a playbook.
   - hosts: servers
     roles:
       - role: constrict0r.madvillain
         user_tasks:
           - https://is.gd/vVCfKI

   # To a playbook from terminal.
   ansible-playbook -i tests/inventory tests/test-playbook.yml -K -e \
       "{user_tasks: [https://is.gd/vVCfKI]}"


configuration
=============

Absolute file path or URL to a *.yml* file that contains all or some
of the variables supported by this role.

It is recommended to use a *.yml* or *.yaml* extension for the
**configuration** file.

This variable is empty by default.

::

   # Using file path.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "configuration=/home/username/my-config.yml"

   # Using URL.
   ansible localhost -m include_role -a name=constrict0r.madvillain -K -e \
       "configuration=https://my-url/my-config.yml"

To see how to write  a configuration file see the *YAML* file format
section.


YAML
****

When passing configuration files to this role as parameters, it’s
recommended to add a *.yml* or *.yaml* extension to the each file.

It is also recommended to add three dashes at the top of each file:

::

   ---

You can include in the file the variables required for your tasks:

::

   ---
   packages:
     - [gedit, rolldice]

If you want this role to load list of items from files and URLs you
can set the **expand** variable to *true*:

::

   ---
   packages: /home/username/my-config.yml

   expand: true

If the expand variable is *false*, any file path or URL found will be
treated like plain text.


Attributes
**********

On the item level you can use attributes to configure how this role
handles the items data.

The attributes supported by this role are:


item_name
=========

Name of the item to load or create.

::

   ---
   packages:
     - item_name: my-item-name


item_pass
=========

Password for the item to load or create.

::

   ---
   packages:
     - item_pass: my-item-pass


item_groups
===========

List of groups to add users into.

::

   ---
   packages:
     - item_name: my-username
       item_groups: [disk, sudo]


item_expand
===========

Boolean value indicating if treat this item as a file path or URL or
just treat it as plain text.

::

   ---
   packages:
     - item_expand: true
       item_path: /home/username/my-config.yml


item_path
=========

Absolute file path or URL to a *.yml* file.

::

   ---
   packages:
     - item_path: /home/username/my-config.yml

This attribute also works with URLs.


Requirements
************

* `Ansible <https://www.ansible.com>`_ >= 2.8.

* `Jinja2 <https://palletsprojects.com/p/jinja/>`_.

* `Pip <https://pypi.org/project/pip/>`_.

* `Python <https://www.python.org/>`_.

* `PyYAML <https://pyyaml.org/>`_.

* `Requests <https://2.python-requests.org/en/master/>`_.

If you want to run the tests, you will also need:

* `Docker <https://www.docker.com/>`_.

* `Molecule <https://molecule.readthedocs.io/>`_.

* `Setuptools <https://pypi.org/project/setuptools/>`_.


Compatibility
*************

* `Debian Buster <https://wiki.debian.org/DebianBuster>`_.

* `Ubuntu Xenial <http://releases.ubuntu.com/16.04/>`_.


License
*******

MIT. See the LICENSE file for more details.


Links
*****

* `Github <https://github.com/constrict0r/madvillain>`_.

* `Gitlab <https://gitlab.com/constrict0r/madvillain>`_.

* `Gitlab CI <https://gitlab.com/constrict0r/madvillain/pipelines>`_.

* `Readthedocs <https://madvillain.readthedocs.io>`_.

* `Travis CI <https://travis-ci.com/constrict0r/madvillain>`_.


UML
***


Deployment
==========

The full project structure is shown below:

.. image:: https://gitlab.com/constrict0r/img/raw/master/madvillain/deployment.png
   :alt: deployment


Author
******

.. image:: https://gitlab.com/constrict0r/img/raw/master/madvillain/author.png
   :alt: author

The Travelling Vaudeville Villain.

Enjoy!!!

.. image:: https://gitlab.com/constrict0r/img/raw/master/madvillain/enjoy.png
   :alt: enjoy

