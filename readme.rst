=============================================
Makefile for using GNU stow more conveniently
=============================================

-------------------------------------------------
Use with a new stow directory rooted at ``$HOME``
-------------------------------------------------

#. Make a new stow directory::

    mkdir ~/stow-packages

#. Enter the stow directory::

    cd ~/stow-packages/

#. Get `<Makefile>`_ into stow directory::

    wget 'https://raw.githubusercontent.com/nbeaver/stow-makefile/master/Makefile'

#. Make a package directory, e.g. ``vim-config``::

    mkdir vim-config

#. Add a package file, e.g. an empty ``.vimrc``::

    touch vim-config/.vimrc

#. Run ``make`` to symlink ``vim-config/.vimrc`` to ``~/.vimrc``::

    make

If ``~/.vimrc`` does not exist yet,
the output will looks like this::

    $ stow --target /home/username --verbose vim-config/
    LINK: .vimrc => stow-packages/vim-config/.vimrc

You can check that ``stow`` was successful::

    $ file ~/.vimrc
    /home/username/.vimrc: symbolic link to stow-packages/vim-config/.vimrc

If ``~/.vimrc`` already exists,
the output will looks like this::

    $ stow --target /home/username --verbose vim-config/
    WARNING! stowing vim-config would cause conflicts:
      * existing target is neither a link nor a directory: .vimrc
    All operations aborted.

In that case, if you want to keep the existing ``.vimrc``,
overwrite the empty ``.vimrc`` existing one and then stow it::

    $ mv ~/.vimrc ./vim-config/.vimrc
    $ make

Otherwise, remove the existing one
and stow the empty one::

    $ rm ~/.vimrc
    $ make

----------------------------------------------------
Use with existing stow directory rooted at ``$HOME``
----------------------------------------------------

#. Copy or symlink `<Makefile>`_ to stow directory.
#. ``make``

---------------------------------
Change location of stow directory
---------------------------------

#. ``cd`` to stow directory.
#. ``make delete``
#. Move the stow directory to new location.
#. ``cd`` to new location of stow directory.
#. ``make``
