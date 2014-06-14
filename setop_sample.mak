# sample code of set operation macro library
# worked on Ubuntu 8.04.4 LTS (server) GNU Make 3.81-3build1

include setop.mak

MAXVAL ?= 30
SET_A  := $(shell seq 3 3 $(MAXVAL))
SET_B  := $(shell seq 5 5 $(MAXVAL))

.PHONY: all
all:
	# set A    : $(SET_A)
	# set B    : $(SET_B)
	# A and B  : $(call setop-and,$(SET_A),$(SET_B))
	# A or B   : $(call setop-or,$(SET_A),$(SET_B))
	# A and !B : $(call setop-and-not,$(SET_A),$(SET_B))
	# A xor B  : $(call setop-xor1,$(SET_A),$(SET_B))
	# A xor B  : $(call setop-xor2,$(SET_A),$(SET_B))
