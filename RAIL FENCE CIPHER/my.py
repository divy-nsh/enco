def enc(x,key):
	mat=[[' ' for i in range(len(x))]for j in range(key)]
	flag = False
	i=0
	for j in range(len(x)):
		if not flag:
			mat[i][j] = x[j]
			i+=1
			if(i == key):
				flag = True
				i-=1
				
			
		if flag:
			mat[i][j]= x[j]
			i-=1
			if(i == -1):
				flag = False
				i+=2
	for i in range(key):
		for j in range(len(x)):
			print(mat[i][j]),
		print ""		
	
	res = []
	for i in range(key):
		for j in range(len(x)):
			if mat[i][j] != " ":
				res.append(mat[i][j])
	print ("". join(res))	
	
def dec(x,key):
	mat=[[' ' for i in range(len(x))]for j in range(key)]
	flag = False
	i=0
	for j in range(len(x)):
		if not flag:
			mat[i][j] = "*"
			i+=1
			if(i == key):
				flag = True
				i-=1
				
			
		if flag:
			mat[i][j]= "*"
			i-=1
			if(i == -1):
				flag = False
				i+=2
	d=0
	for i in range(key):
		for j in range(len(x)):
			if mat[i][j] == "*":
				mat[i][j]=x[d]
				d+=1
	for i in range(key):
		for j in range(len(x)):
			print(mat[i][j]),
		print ""
	i=0
	res = []
	for j in range(len(x)):
		res.append(mat[i][j])
		if not flag:
			
			#print(mat[i][j]),
			i+=1
			if(i == key):
				flag = True
				i-=1
				
			
		if flag:
			
			#print(mat[i][j]),
			i-=1
			if(i == -1):
				flag = False
				i+=2
	
	#res = []
	
	print ("". join(res))


while True:
	
	option=int(raw_input("\n\nPress 1 to Encrypt \nPress 2 to Decrypt \nPress 3 to EXIT\n\nEnter choice: "))
	if option == 1:
		x=raw_input("enter the plaintext: ")
		key=int(raw_input("enter the key: "))
		enc(x,key)
		continue
	if option == 2:
		x=raw_input("enter the plaintext: ")
		key=int(raw_input("enter the key: "))
		dec(x,key)
		continue
	if option == 3:
		break
	else:
		print "Invalid option"
		continue

			
				
