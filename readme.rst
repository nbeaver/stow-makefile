=============================================
Makefile for using GNU stow more conveniently
=============================================

-------------------------------------------------
Use with a new stow directory rooted at ``$HOME``
-------------------------------------------------

#. Make a new stow directory::

    mkdir ~/stow-files

#. Copy or symlink `<Makefile>`_ to stow directory::

    wget https://raw.githubusercontent.com/nbeaver/stow-makefile/master/Makefile
    cp ./Makefile ~/stow-files/

#. Enter the stow directory::

    cd ~/stow-files/

#. Make a package directory, e.g. ``vim-config``::

    mkdir vim-config

#. Add a package file, e.g. an empty ``.vimrc``::

    touch vim-config/.vimrc

#. Run ``make`` to symlink ``vim-config/.vimrc`` to ``~/.vimrc``::

    make

If ``~/.vimrc`` does not exist yet,
the output will looks like this::

    stow --target /home/username --verbose vim-config/
    LINK: .vimrc => stow-files/vim-config/.vimrc

If ``~/.vimrc`` already exists,
the output will looks like this::

    stow --target /home/username --verbose vim-config/
    WARNING! stowing vim-config would cause conflicts:
      * existing target is neither a link nor a directory: .vimrc
    All operations aborted.

Just overwrite the empty ``.vimrc`` with the real one
if you want to keep it in stow::

    mv ~/.vimrc ./vim-config/.vimrc
    make

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
