stow_dirs = $(wildcard */)
.PHONY : stow
stow :
	stow --target $(HOME) --verbose $(stow_dirs)

.PHONY : stow-verbose
# verbosity goes from 0 to 4
VERBOSITY=1
stow-verbose :
	stow --verbose $(VERBOSITY) --target $(HOME) --verbose $(stow_dirs)

.PHONY : dry-run
dry-run :
	stow --no --target $(HOME) --verbose $(stow_dirs)

.PHONY : restow
restow :
	stow --target $(HOME) --verbose --restow $(stow_dirs)

# Do this *before* moving to another directory.
.PHONY : delete
delete :
	stow --target $(HOME) --verbose --delete $(stow_dirs)
