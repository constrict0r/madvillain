Description
--------------------------------------------------------------

Ansible role to apply the ultimate madvillain configuration.

This is capable of:

- Upgrade the system.

- Add `apt <https://wiki.debian.org/Apt>`_ repository sources.

- Update the apt cache.

- Uninstall apt packages.

- Install apt packages.

- Install `yarn <https://yarnpkg.com>`_ packages.

- Install `pip <https://pypi.org/project/pip/>`_ packages.

- Apply system-wide configuration using git.

- Stop services and disable them.

- Enable services and restart them.

- Create users.

- Add users to groups.

- Apply user-wide configuration using git.

- Run custom user tasks.

By default this role applies the following configuration:

- Installs the base software:

 .. include:: part/package/base.inc

- Install the desktop software:

 .. include:: part/package/desktop.inc

- Installs the base developer software:

 .. include:: part/package/dev_base.inc

- Installs the python developer software:

 .. include:: part/package/dev_python.inc

- Installs the microcontroller developer software:

 .. include:: part/package/dev_micro.inc

- Installs the madvillain software:

 .. include:: part/package/madvillain.inc

- Configures the base software:

 .. include:: part/configured/base.inc

- Configures the desktop software:

 .. include:: part/configured/desktop.inc

- Configures the base developer software:

 .. include:: part/configured/dev_base.inc

- Configures the python developer software:

 .. include:: part/configured/dev_python.inc

- Configures the microcontroller developer software:

 .. include:: part/configured/dev_micro.inc

- Configures the madvillain software:

 .. include:: part/configured/madvillain.inc

- Creates the following home directory layout:

 .. code-block:: bash

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

- Modifies the following files:

 .. code-block:: bash

  home/
  ├── .bashrc
  ├── .config/gtk-3.0/bookmarks
  └── .profile