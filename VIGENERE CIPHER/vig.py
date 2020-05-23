while True:
	opt=int(raw_input("\n\nPress 1 to Encrypt \nPress 2 to Decrypt \nPress 3 to EXIT\n\nEnter choice: "))
	if opt==3:
		break
	p=raw_input("enter the plain text: ")
	key=raw_input("enter the key: ")
	p=p.lower()
	key=key.lower()
	mat=[['0' for i in range(26)]for j in range(26)]
	alpha="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
	for i in range(26):
	    for j in range(i,26+i):
	        mat[i][j-i]=alpha[j]
	for i in range(26):
	    for j in range(26):
	        print(mat[i][j]),
	    print("")
	repeat=len(p)/len(key)
	for i in range(repeat):
	    key=key+key
	res=""
	for i in range(len(p)):
	    pind=0
	    keyind=0
	    if ord(p[i])<97:
	        pind=ord(p[i])-65
	    else:
	        pind=ord(p[i])-97
	    if ord(key[i])<97:
	        keyind=ord(key[i])-65
	    else:
	        keyind=ord(key[i])-97
	    res+=mat[pind][keyind]
	    print(p[i],key[i])
	if opt==1:
		print(res)
	dec=""
	for i in range(len(p)):
	    pind=ord(p[i])
	    kind=ord(key[i])
	    dind=(pind-kind+26)%26
	    dec+=chr(dind+97)
	if opt==2:
		print(dec)
	if opt>3 or opt<1:
		print("Choose a valid option")
