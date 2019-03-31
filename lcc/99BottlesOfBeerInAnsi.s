export main
segment text
function main type=int function(void) sclass=auto scope=GLOBAL flags=0 ref=0.000000 ncalls=4
blockbeg off=0
local beers type=int sclass=register scope=LOCAL flags=0 offset=0 ref=21.000000
blockend off=4
 2. ADDRLP4 beers
3. CNSTI4 99
1' ASGNI4 #2 #3 4 4
 2:
 2. ADDRGP4 6
1' ARGP4 #2 4 4
4. ADDRGP4 puts
3' CALLI4 #4 {int function}
 3:
 2. ADDRLP4 count=2 beers
1' INDIRI4 count=2 #2
5. CNSTI4 1
4. SUBI4 #1 #5
3' ASGNI4 #2 #4 4 4
6' ARGI4 #1 4 4
8. ADDRGP4 chug
7' CALLV #8 {void function(int)}
 3. ADDRLP4 beers
2. INDIRI4 #3
4. CNSTI4 0
1' NEI4 #2 #4 2
 2. ADDRGP4 7
1' ARGP4 #2 4 4
4. ADDRGP4 puts
3' CALLI4 #4 {int function}
 2. CNSTI4 0
1' ARGI4 #2 4 4
4. ADDRGP4 exit
3' CALLI4 #4 {int function}
 2. CNSTI4 0
1' RETI4 #2
 1:
maxoff=4
export chug
function chug type=void function(int) sclass=auto scope=GLOBAL flags=0 ref=10.000000 ncalls=6
caller beers type=int sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
callee beers type=int sclass=register scope=PARAM flags=0 offset=0 ref=5.500000
blockbeg off=0
local s type=pointer to char sclass=register scope=LOCAL flags=0 offset=0 ref=5.000000
local howmany type=array 8 of char sclass=auto scope=LOCAL flags=addressed offset=4 ref=2.000000
local 10 type=pointer to char sclass=register scope=LOCAL flags=generated offset=12 ref=3.000000
local 20 type=pointer to char sclass=register scope=LOCAL flags=generated offset=16 ref=3.000000
blockend off=20
 2. ADDRFP4 beers
4. ADDRFP4 beers
3. INDIRI4 #4
1' ASGNI4 #2 #3 4 4
 3. ADDRFP4 beers
2. INDIRI4 #3
4. CNSTI4 1
1' EQI4 #2 #4 11
6. ADDRLP4 10
7. ADDRGP4 9
5' ASGNP4 #6 #7 4 4
9. ADDRGP4 12
8' JUMPV #9
11:
12. ADDRLP4 10
13. ADDRGP4 6
11' ASGNP4 #12 #13 4 4
12:
16. ADDRLP4 s
18. ADDRLP4 10
17. INDIRP4 #18
15' ASGNP4 #16 #17 4 4
20. ADDRGP4 13
19' ARGP4 #20 4 4
23. ADDRFP4 beers
22. INDIRI4 #23
21' ARGI4 #22 4 4
26. ADDRLP4 s
25. INDIRP4 #26
24' ARGP4 #25 4 4
28. ADDRGP4 printf
27' CALLI4 #28 {int function}
 2. ADDRGP4 14
1' ARGP4 #2 4 4
5. ADDRFP4 beers
4. INDIRI4 #5
3' ARGI4 #4 4 4
8. ADDRLP4 s
7. INDIRP4 #8
6' ARGP4 #7 4 4
10. ADDRGP4 printf
9' CALLI4 #10 {int function}
 2. ADDRGP4 15
1' ARGP4 #2 4 4
4. ADDRGP4 printf
3' CALLI4 #4 {int function}
 2. ADDRFP4 count=2 beers
4. INDIRI4 #2
5. CNSTI4 1
3. SUBI4 count=2 #4 #5
1' ASGNI4 #2 #3 4 4
7. CNSTI4 0
6' EQI4 #3 #7 16
 2. ADDRLP4 howmany
1' ARGP4 #2 4 4
4. ADDRGP4 18
3' ARGP4 #4 4 4
7. ADDRFP4 beers
6. INDIRI4 #7
5' ARGI4 #6 4 4
9. ADDRGP4 sprintf
8' CALLI4 #9 {int function}
 2. ADDRGP4 17
1' JUMPV #2
 16:
 2. ADDRLP4 howmany
1' ARGP4 #2 4 4
4. ADDRGP4 19
3' ARGP4 #4 4 4
6. ADDRGP4 strcpy
5' CALLI4 #6 {int function}
 17:
 3. ADDRFP4 beers
2. INDIRI4 #3
4. CNSTI4 1
1' EQI4 #2 #4 21
6. ADDRLP4 20
7. ADDRGP4 9
5' ASGNP4 #6 #7 4 4
9. ADDRGP4 22
8' JUMPV #9
21:
12. ADDRLP4 20
13. ADDRGP4 6
11' ASGNP4 #12 #13 4 4
22:
16. ADDRLP4 s
18. ADDRLP4 20
17. INDIRP4 #18
15' ASGNP4 #16 #17 4 4
20. ADDRGP4 23
19' ARGP4 #20 4 4
22. ADDRLP4 howmany
21' ARGP4 #22 4 4
25. ADDRLP4 s
24. INDIRP4 #25
23' ARGP4 #24 4 4
27. ADDRGP4 printf
26' CALLI4 #27 {int function}
 8:
maxoff=20
import strcpy
import sprintf
import printf
import exit
import puts
segment lit
global 23 type=array 34 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "%s bottle%s of beer on the wall.\012\000"
global 19 type=array 8 of char sclass=static scope=GLOBAL flags=generated ref=0.500000
defstring "No more\000"
global 18 type=array 3 of char sclass=static scope=GLOBAL flags=generated ref=0.500000
defstring "%d\000"
global 15 type=array 32 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Take one down, pass it around,\012\000"
global 14 type=array 32 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "%d bottle%s of beeeeer . . . ,\012\000"
global 13 type=array 34 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "%d bottle%s of beer on the wall,\012\000"
global 9 type=array 2 of char sclass=static scope=GLOBAL flags=generated ref=2.000000
defstring "s\000"
global 7 type=array 25 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "\012Time to buy more beer!\012\000"
global 6 type=array 1 of char sclass=static scope=GLOBAL flags=generated ref=12.000000
defstring "\000"
progend
