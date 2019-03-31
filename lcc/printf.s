export main
segment text
function main type=void function(void) sclass=auto scope=GLOBAL flags=0 ref=0.000000 ncalls=1
blockbeg off=0
blockend off=0
 2. ADDRGP4 2
1' ARGP4 #2 4 4
4. ADDRGP4 printf
3' CALLI4 #4 {int function}
 1:
maxoff=0
import printf
segment lit
global 2 type=array 13 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Hello world!\000"
progend
