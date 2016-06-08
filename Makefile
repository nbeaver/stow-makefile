stow_dirs = $(wildcard */)
stow: Makefile ${stow_dirs}
	stow --target ${HOME} --verbose ${stow_dirs}

restow: Makefile ${stow_dirs}
	stow --target ${HOME} --verbose --restow ${stow_dirs}

# Do this *before* moving to another directory.
delete: Makefile ${stow_dirs}
	stow --target ${HOME} --verbose --delete ${stow_dirs}
