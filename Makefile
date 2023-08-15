JOBS = $(subst -j,--make-jobs ,$(filter -j%, $(MAKEFLAGS)))
PYPY_DIR ?= pypy
RPYTHON  ?= $(PYPY_DIR)/rpython/bin/rpython $(JOBS)
RPYTHON_ARGS ?= # --lldebug

hippy-c: targethippy.py
	$(RPYTHON) -Ojit $(JOBS) $<
