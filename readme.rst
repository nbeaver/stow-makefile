To use with a new stow directory rooted at ``$HOME``:

#. Make a stow directory.
#. ``cd`` to stow directory.
#. Copy or symlink `<Makefile>`_ to stow directory.
#. Add stow directories. For example, for the ``.stowrc``:
   #. ``mkdir stow``
   #. ``touch stow/.stowrc``
   #. ``make``

To use with existing stow directory rooted at ``$HOME``:

#. Copy or symlink Makefile to stow directory.
#. ``make``

To add a stow directory for ``bash``:

#. ``cd`` to stow directory.
#. ``mkdir bash``
#. ``mv ~/.bashrc ./bash/``
#. ``make``

To change the location of stow directory:

#. ``cd`` to stow directory.
#. ``make delete``
#. Move the stow directory.
#. ``cd`` to stow directory again.
#. ``make``
