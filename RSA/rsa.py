from random import randint
from decimal import Decimal
while True:
	opt=int(raw_input("\n|||||RSA||||\n\nPress 1 to Encrypt \nPress 2 to Decrypt \nPress 3 to EXIT\n\nEnter choice: "))
	if opt==3:
		break
	def gcd(a,b):
		if b==0:
			return a
		else:
			return gcd(b,a%b)
			
	p=int(raw_input("enter a prime number: "))
	q=int(raw_input("enter another prime number: "))
	n=p*q
	phi=(p-1)*(q-1)
	#e=0
	print(n,phi)
	for e in range(1,phi):
	    #j=randint(2,phi-1)
	    #if n%j!=0:
		if gcd(e,phi)==1:
	        	break
        
	for k in range(1,10):
	    d=((k*phi)+1)
	    if d % e ==0:
	        d=int(d/e)
	        break
	    #print("asda",d)

	print('k=' ,k,'e= ',e,'d= ',d,'phi= ',phi)
#d=((2*phi)+1)/e
	inp=int(raw_input("encr"))
#c=pow(inp,e)%n
#print(c)
#res=pow(c,d)%n
#print(res)
	ciptextt = Decimal(0)
	ciptextt = pow(inp,e)
	ciptext = ciptextt % n
	
	if opt==1:
		print("Ciphered Text: " + str(ciptext))

	diciptt = Decimal(0)
	diciptt = pow(inp,d)
	dicipt = diciptt % n
	
	if opt==2:
		print("Decrypted text: "+ str(dicipt))
	if opt>3 or opt<1:
		print("Choose a valid option")

