export main
segment text
function main type=int function(void) sclass=auto scope=GLOBAL flags=0 ref=0.000000 ncalls=5
blockbeg off=0
local n_beers type=int sclass=register scope=LOCAL flags=0 offset=0 ref=6.000000
local pl type=char sclass=register scope=LOCAL flags=0 offset=4 ref=4.000000
blockbeg off=5
local 7 type=int sclass=register scope=LOCAL+1 flags=generated offset=8 ref=1.500000
blockend off=12
blockbeg off=5
blockend off=5
blockend off=5
 2. ADDRLP4 n_beers
3. CNSTI4 99
1' ASGNI4 #2 #3 4 4
 2. ADDRLP4 pl
3. CNSTI1 115
1' ASGNI1 #2 #3 1 1
 2. ADDRGP4 2
1' JUMPV #2
 3:
 2. CNSTI4 0
1' RETI4 #2
 2. ADDRGP4 1
1' JUMPV #2
 4:
 2. ADDRLP4 count=3 n_beers
4. INDIRI4 #2
5. CNSTI4 1
3. SUBI4 #4 #5
1' ASGNI4 #2 #3 4 4
7. INDIRI4 #2
8. CNSTI4 0
6' EQI4 #7 #8 5
 3. ADDRLP4 n_beers
2. INDIRI4 #3
4. CNSTI4 1
1' NEI4 #2 #4 8
6. ADDRLP4 7
7. CNSTI4 31
5' ASGNI4 #6 #7 4 4
9. ADDRGP4 9
8' JUMPV #9
8:
12. ADDRLP4 7
13. CNSTI4 115
11' ASGNI4 #12 #13 4 4
9:
16. ADDRLP4 pl
19. ADDRLP4 7
18. INDIRI4 #19
17. CVII1 #18 4
15' ASGNI1 #16 #17 1 1
21. ADDRGP4 10
20' ARGP4 #21 4 4
24. ADDRLP4 n_beers
23. INDIRI4 #24
22' ARGI4 #23 4 4
28. ADDRLP4 pl
27. INDIRI1 #28
26. CVII4 #27 1
25' ARGI4 #26 4 4
30. ADDRGP4 printf
29' CALLI4 #30 {int function}
 2. ADDRGP4 2
1' JUMPV #2
 5:
 2. ADDRGP4 11
1' ARGP4 #2 4 4
4. ADDRGP4 printf
3' CALLI4 #4 {int function}
 2. ADDRGP4 12
1' ARGP4 #2 4 4
4. ADDRGP4 printf
3' CALLI4 #4 {int function}
 2. ADDRGP4 3
1' JUMPV #2
 2:
 2. ADDRGP4 13
1' ARGP4 #2 4 4
5. ADDRLP4 n_beers
4. INDIRI4 count=2 #5
3' ARGI4 #4 4 4
9. ADDRLP4 pl
8. INDIRI1 #9
7. CVII4 count=2 #8 1
6' ARGI4 #7 4 4
10' ARGI4 #4 4 4
11' ARGI4 #7 4 4
13. ADDRGP4 printf
12' CALLI4 #13 {int function}
 2. ADDRGP4 14
1' ARGP4 #2 4 4
4. ADDRGP4 printf
3' CALLI4 #4 {int function}
 2. ADDRGP4 4
1' JUMPV #2
 1:
maxoff=12
import printf
segment lit
global 14 type=array 35 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "Take one down and pass it around, \000"
global 13 type=array 54 of char sclass=static scope=GLOBAL flags=generated ref=1.000000
defstring "%d bottle%c of beer on the wall, %d bottle%c of beer\012\000"
global 12 type=array 130 of char sclass=static scope=GLOBAL flags=generated ref=0.500000
defstring "No more bottles of beer on the wall, no more bottles of beer.\012Go to the store and buy some more, 99 bottles of beer on the wall!\012\000"
global 11 type=array 38 of char sclass=static scope=GLOBAL flags=generated ref=0.500000
defstring "no more bottles of beer on the wall!\012\000"
global 10 type=array 34 of char sclass=static scope=GLOBAL flags=generated ref=0.500000
defstring "%d bottle%c of beer on the wall!\012\000"
progend
