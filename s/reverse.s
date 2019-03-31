export reverse
segment text
function reverse type=void function(pointer to char) sclass=auto scope=GLOBAL flags=0 ref=0.000000 ncalls=1
caller s type=pointer to char sclass=auto scope=PARAM flags=0 offset=0 ref=0.000000
callee s type=pointer to char sclass=register scope=PARAM flags=0 offset=0 ref=41.000000
blockbeg off=0
local i type=int sclass=register scope=LOCAL flags=0 offset=0 ref=41.000000
local j type=int sclass=register scope=LOCAL flags=0 offset=4 ref=41.000000
local c type=char sclass=register scope=LOCAL flags=0 offset=8 ref=20.000000
blockbeg off=9
blockend off=9
blockend off=9
 2. ADDRFP4 s
4. ADDRFP4 s
3. INDIRP4 #4
1' ASGNP4 #2 #3 4 4
 2. ADDRLP4 i
3. CNSTI4 0
1' ASGNI4 #2 #3 4 4
6. ADDRFP4 s
5. INDIRP4 #6
4' ARGP4 #5 4 4
8. ADDRGP4 strlen
7' CALLI4 #8 {int function}
10. ADDRLP4 j
12. CNSTI4 1
11. SUBI4 #7 #12
9' ASGNI4 #10 #11 4 4
 2. ADDRGP4 5
1' JUMPV #2
 2:
 2. ADDRLP4 c
6. ADDRLP4 i
5. INDIRI4 #6
8. ADDRFP4 s
7. INDIRP4 count=2 #8
4. ADDP4 count=2 #5 #7
3. INDIRI1 #4
1' ASGNI1 #2 #3 1 1
13. ADDRLP4 j
12. INDIRI4 #13
11. ADDP4 #12 #7
10. INDIRI1 #11
9' ASGNI1 #4 #10 1 1
 4. ADDRLP4 j
3. INDIRI4 #4
6. ADDRFP4 s
5. INDIRP4 #6
2. ADDP4 #3 #5
8. ADDRLP4 c
7. INDIRI1 #8
1' ASGNI1 #2 #7 1 1
 3:
 2. ADDRLP4 count=2 i
4. INDIRI4 #2
5. CNSTI4 count=2 1
3. ADDI4 #4 #5
1' ASGNI4 #2 #3 4 4
7. ADDRLP4 count=2 j
9. INDIRI4 #7
8. SUBI4 #9 #5
6' ASGNI4 #7 #8 4 4
 5:
 3. ADDRLP4 i
2. INDIRI4 #3
5. ADDRLP4 j
4. INDIRI4 #5
1' LTI4 #2 #4 2
 1:
maxoff=9
import strlen
progend
