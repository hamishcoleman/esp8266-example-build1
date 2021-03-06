include user.cfg
-include common.mf
-include esp82xx/main.mf

% :
	$(warning This is the empty rule. Something went wrong.)
	@true

ifndef TARGET
$(info Modules were not checked out... use git clone --recursive in the future. Pulling now.)
$(shell git submodule update --init --recursive 2>/dev/null)
endif

#SRCS += (replae this with C and S source files here)

# Example for a custom rule.
# Most of the build is handled in main.mf
.PHONY : showvars
showvars:
	$(foreach v, $(.VARIABLES), $(info $(v) = $($(v))))
	true

build-deps:
	sudo apt-get install -y \
	    binutils-xtensa-lx106 gcc-xtensa-lx106 esptool
