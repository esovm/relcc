export itoa
segment text
function itoa type=void function(int,pointer to char) sclass=auto scope=GLOBAL flags=0 ref=0.000000 ncalls=1
caller n type=int sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
caller s type=pointer to char sclass=auto scope=PARAM flags=0 offset=4 ref=0.000000
callee n type=int sclass=register scope=PARAM flags=0 offset=0 ref=22.000000
callee s type=pointer to char sclass=register scope=PARAM flags=0 offset=4 ref=12.500000
blockbeg off=0
local i type=int sclass=register scope=LOCAL flags=0 offset=0 ref=12.500000
local sign type=int sclass=auto scope=LOCAL flags=0 offset=4 ref=2.000000
blockbeg off=8
blockend off=8
blockend off=8
 2. ADDRFP4 n
4. ADDRFP4 n
3. INDIRI4 #4
1' ASGNI4 #2 #3 4 4
 2. ADDRFP4 s
4. ADDRFP4 s
3. INDIRP4 #4
1' ASGNP4 #2 #3 4 4
 2. ADDRLP4 sign
4. ADDRFP4 n
3. INDIRI4 count=2 #4
1' ASGNI4 #2 #3 4 4
6. CNSTI4 0
5' GEI4 #3 #6 2
 2. ADDRFP4 count=2 n
4. INDIRI4 #2
3. NEGI4 #4
1' ASGNI4 #2 #3 4 4
 2:
 2. ADDRLP4 i
3. CNSTI4 0
1' ASGNI4 #2 #3 4 4
 4:
 2. ADDRLP4 count=2 i
1' INDIRI4 count=2 #2
5. CNSTI4 1
4. ADDI4 #1 #5
3' ASGNI4 #2 #4 4 4
9. ADDRFP4 s
8. INDIRP4 #9
7. ADDP4 #1 #8
14. ADDRFP4 n
13. INDIRI4 #14
15. CNSTI4 10
12. MODI4 #13 #15
16. CNSTI4 48
11. ADDI4 #12 #16
10. CVII1 #11 4
6' ASGNI1 #7 #10 1 1
 5:
 2. ADDRFP4 count=2 n
4. INDIRI4 #2
5. CNSTI4 10
3. DIVI4 count=2 #4 #5
1' ASGNI4 #2 #3 4 4
7. CNSTI4 0
6' GTI4 #3 #7 4
 3. ADDRLP4 sign
2. INDIRI4 #3
4. CNSTI4 0
1' GEI4 #2 #4 7
 2. ADDRLP4 count=2 i
1' INDIRI4 count=2 #2
5. CNSTI4 1
4. ADDI4 #1 #5
3' ASGNI4 #2 #4 4 4
9. ADDRFP4 s
8. INDIRP4 #9
7. ADDP4 #1 #8
10. CNSTI1 45
6' ASGNI1 #7 #10 1 1
 7:
 4. ADDRLP4 i
3. INDIRI4 #4
6. ADDRFP4 s
5. INDIRP4 #6
2. ADDP4 #3 #5
7. CNSTI1 0
1' ASGNI1 #2 #7 1 1
 3. ADDRFP4 s
2. INDIRP4 #3
1' ARGP4 #2 4 4
5. ADDRGP4 reverse
4' CALLI4 #5 {int function}
 1:
maxoff=8
import reverse
progend
