#!/bin/bash

#!/bin/bash

# NOTE ABOUT EXIT CODES (IMPORTANT)
#
# In shell scripting, commands do NOT return boolean values like true(1) or false(0).
# Instead, every command returns an "exit status" (also called exit code).
#
# Exit status meaning:
#   0     -> success (the condition was true / the command succeeded)
#   non-0 -> failure (the condition was false / the command failed)
#
# This is why it may feel "opposite" compared to other programming languages.
# Here, 0 does NOT mean false — it means "no error occurred".

# prints 0 because the test command succeeded (true condition)
[ hello = hello ]
echo $? # 0 = success

# prints 1 because the test command failed (false condition)
[ 1 = 0 ]
echo $? # non-zero = failure

# -eq is used for numeric comparison
# this test succeeds, so the exit code is 0
[ 1 -eq 1 ]
echo $? # 0 = success
