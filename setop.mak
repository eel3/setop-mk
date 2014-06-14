# set operation macro library
# worked on Ubuntu 8.04.4 LTS (server) GNU Make 3.81-3build1

# $(call setop-and,A,B) - A and B
setop-and   = $(filter $2,$1)

# $(call setop-or,A,B) - A or B
setop-or    = $(sort $1 $2)

# $(call setop-and-not,A,B) - A and !B (relative complement)
setop-and-not   = $(filter-out $2,$1)

# $(call setop-xor,A,B) - A xor B
setop-xor1  = $(filter-out $(call setop-and,$1,$2),$(call setop-or,$1,$2))
setop-xor2  = $(sort $(call setop-and-not,$1,$2) $(call setop-and-not,$2,$1))
