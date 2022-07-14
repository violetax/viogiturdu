/^void/s/[[:blank:]]*(/(/
s/()/(void)/
s/{[[:blank:]]*/{/
/^[^\(void\|char\|int\)]/s/\([[:blank:]]{16}\){/\n\1{/
/^[^\(void\|char\|int\)]/s/\([[:blank:]]{12}\){/\n\1{/
/^[^\(void\|char\|int\)]/s/\([[:blank:]]{8}\){/\n\1{/
/^[^\(void\|char\|int\)]/s/\([[:blank:]]{4}\){/\n\1{/
/^[^\(void\|char\|int\)]/s/[[:blank:]]{1,3}/\n{/
/^\(void\|char\|int\)/s/[[:blank:]]\+{/\n{/
s/}[[:blank:]]*/\n/
s/*$//
s?[[:blank:]]*//.*??
s/write(1,\&c,1)/write(1, \&c, 1)/
/^[[:space:]]*$/{n;/^[[:space:]]*$/d;}
