=============================================
Makefile for using GNU stow more conveniently
=============================================

-------------------------------------------------
Use with a new stow directory rooted at ``$HOME``
-------------------------------------------------

#. Make a stow directory, e.g. ``~/stow-files/``.
#. ``cd ~/stow-files/``
#. Copy or symlink `<Makefile>`_ to stow directory.
#. Add stow directories. For example, for a ``.vimrc``:

   #. ``mkdir vim-config`` (do this in the stow directory)
   #. ``touch vim-config/.vimrc`` (make a blank ``vimrc`` file)
   #. ``make`` (symlink ``vim-config/.vimrc`` to ``~/.vimrc``)

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

----------------------------------------------------
Use with existing stow directory rooted at ``$HOME``
----------------------------------------------------

#. Copy or symlink `<Makefile>`_ to stow directory.
#. ``make``

---------------------------------
Add a stow directory for ``bash``
---------------------------------

#. ``cd`` to stow directory.
#. ``mkdir bash``
#. ``mv ~/.bashrc ./bash/``
#. ``make``

-------------------------------------
Change the location of stow directory
-------------------------------------

#. ``cd`` to stow directory.
#. ``make delete``
#. Move the stow directory.
#. ``cd`` to stow directory again.
#. ``make``
