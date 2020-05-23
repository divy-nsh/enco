for (( ; ; ))
do 
	echo ""
	read -p "Do you have your own pair keys y/n (A to abort): " key_choice
	echo ""
	if [ "$key_choice" = "a" ] || [ "$key_choice" = "A" ]
	then
		exit	
	elif [ "$key_choice" = "n" ] || [ "$key_choice" = "N" ]
	then
		echo "Generating Key pair"
		openssl genrsa -out pvt.pem
		echo ""
		echo "Generated private key /rsa/pvt.pem"
		echo ""
		echo ""
		cat pvt.pem
		echo ""
		echo ""
		openssl rsa -pubout -in pvt.pem -out pub.pem
		echo "Generated public key /rsa/pub.pem"
		echo ""
		echo ""	
		cat pub.pem
		echo ""
		echo ""
		echo "Selecting private key as /rsa/pvt.pem"
		private_key=pvt.pem
		echo "Selecting public key as /rsa/pub.pem"
		public_key=pub.pem
	
	elif  [ "$key_choice" = "y" ] || [ "$key_choice" = "Y" ]
	then
		read -p "Location of private key: " private_key
		echo "Private key selected: " $private_key
		read -p "Location of public key: " public_key
		echo "Public key location : " $public_key
	else
		echo "Invalid option"
		exit
	fi
	echo ""
	echo "Enter choice for encryption/decryption: "
	echo "1)Encryption"
	echo "2)Decryption"
	read -p "Choice: " ed_choice

	if [ $ed_choice == 1 ]
	then
		read -p "Enter file location to encrypt: " file
		read -p "Enter output name: " output
		echo ""
		echo "Encrypting using public key......"
		openssl rsautl -encrypt -in $file -pubin -inkey $public_key -out $output
		echo "Encryption done!!"
		exit
	elif [ $ed_choice == 2 ]
	then
	 	read -p "Enter file location to Decrypt: " file
		read -p "Enter output name: " output
		echo ""
		echo "Decrypting using private key......"
		openssl rsautl -decrypt -in $file -inkey $private_key -out $output
		echo "Decryption done!!"
		exit
	else 
		echo "Envalid choice"
		exit
	fi
done
