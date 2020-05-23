clear
for (( ; ; ))
do                                                                                                   

	echo ""
	echo ""
	echo "▄█▄    █▄▄▄▄ ▀▄    ▄ █ ▄▄     ▄▄▄▄▀ ████▄   ▄▀  █▄▄▄▄ ██   █ ▄▄   ▄  █ ▄███▄   █▄▄▄▄ ";
	echo "█▀ ▀▄  █  ▄▀   █  █  █   █ ▀▀▀ █    █   █ ▄▀    █  ▄▀ █ █  █   █ █   █ █▀   ▀  █  ▄▀ ";
	echo "█   ▀  █▀▀▌     ▀█   █▀▀▀      █    █   █ █ ▀▄  █▀▀▌  █▄▄█ █▀▀▀  ██▀▀█ ██▄▄    █▀▀▌  ";
	echo "█▄  ▄▀ █  █     █    █        █     ▀████ █   █ █  █  █  █ █     █   █ █▄   ▄▀ █  █  ";
	echo "▀███▀    █    ▄▀      █      ▀             ███    █      █  █       █  ▀███▀     █   ";
	echo "        ▀              ▀                         ▀      █    ▀     ▀            ▀    ";
	echo "                                                       ▀                            ";
	echo ""
	echo "" 
	echo "" 
	echo ""   
	echo "1)RSA"
	echo "2)AFFINE CIPHER"
	echo "3)CEASAR CIPHER"
	echo "4)VIGENERE CIPHER"
	echo "5)RAIL FENCE CIPHER"
	echo "0)Exit"
	echo ""
	read -p "Enter your choice: " choice
	if [ $choice == 1 ]
	then
		cd RSA
		clear
		echo "█▄▄▄▄   ▄▄▄▄▄   ██   ";
		echo "█  ▄▀  █     ▀▄ █ █  ";
		echo "█▀▀▌ ▄  ▀▀▀▀▄   █▄▄█ ";
		echo "█  █  ▀▄▄▄▄▀    █  █ ";
		echo "  █                █ ";
		echo " ▀                █  ";
		echo "                 ▀   ";
		echo ""
		echo ""
		chmod +x rsa.sh
		./rsa.sh	
		cd ..
	elif [ $choice == 2 ]
	then
		cd 'AFFINE CIPHER'
		clear
		echo "██   ▄████  ▄████  ▄█    ▄   ▄███▄      ▄█▄    ▄█ █ ▄▄   ▄  █ ▄███▄   █▄▄▄▄ ";
		echo "█ █  █▀   ▀ █▀   ▀ ██     █  █▀   ▀     █▀ ▀▄  ██ █   █ █   █ █▀   ▀  █  ▄▀ ";
		echo "█▄▄█ █▀▀    █▀▀    ██ ██   █ ██▄▄       █   ▀  ██ █▀▀▀  ██▀▀█ ██▄▄    █▀▀▌  ";
		echo "█  █ █      █      ▐█ █ █  █ █▄   ▄▀    █▄  ▄▀ ▐█ █     █   █ █▄   ▄▀ █  █  ";
		echo "   █  █      █      ▐ █  █ █ ▀███▀      ▀███▀   ▐  █       █  ▀███▀     █   ";
		echo "  █    ▀      ▀       █   ██                        ▀     ▀            ▀    ";
		echo " ▀                                                                          ";
		echo ""
		echo ""
		python2 affine.py
		cd ..
	elif [ $choice == 3 ]
	then
		cd 'Ceasar Cipher'
		clear
		echo "▄█▄    ▄███▄   ██      ▄▄▄▄▄   ██   █▄▄▄▄    ▄█▄    ▄█ █ ▄▄   ▄  █ ▄███▄   █▄▄▄▄ ";
		echo "█▀ ▀▄  █▀   ▀  █ █    █     ▀▄ █ █  █  ▄▀    █▀ ▀▄  ██ █   █ █   █ █▀   ▀  █  ▄▀ ";
		echo "█   ▀  ██▄▄    █▄▄█ ▄  ▀▀▀▀▄   █▄▄█ █▀▀▌     █   ▀  ██ █▀▀▀  ██▀▀█ ██▄▄    █▀▀▌  ";
		echo "█▄  ▄▀ █▄   ▄▀ █  █  ▀▄▄▄▄▀    █  █ █  █     █▄  ▄▀ ▐█ █     █   █ █▄   ▄▀ █  █  ";
		echo "▀███▀  ▀███▀      █               █   █      ▀███▀   ▐  █       █  ▀███▀     █   ";
		echo "                 █               █   ▀                   ▀     ▀            ▀    ";
		echo "                ▀               ▀                                                ";
		echo ""
		echo ""
		python2 ceasar.py
		cd ..
	elif [ $choice == 4 ]
	then
		cd 'VIGENERE CIPHER'
		clear
		echo "    ▄   ▄█   ▄▀  ▄███▄      ▄   ▄███▄   █▄▄▄▄ ▄███▄      ▄█▄    ▄█ █ ▄▄   ▄  █ ▄███▄   █▄▄▄▄ ";
		echo "     █  ██ ▄▀    █▀   ▀      █  █▀   ▀  █  ▄▀ █▀   ▀     █▀ ▀▄  ██ █   █ █   █ █▀   ▀  █  ▄▀ ";
		echo "█     █ ██ █ ▀▄  ██▄▄    ██   █ ██▄▄    █▀▀▌  ██▄▄       █   ▀  ██ █▀▀▀  ██▀▀█ ██▄▄    █▀▀▌  ";
		echo " █    █ ▐█ █   █ █▄   ▄▀ █ █  █ █▄   ▄▀ █  █  █▄   ▄▀    █▄  ▄▀ ▐█ █     █   █ █▄   ▄▀ █  █  ";
		echo "  █  █   ▐  ███  ▀███▀   █  █ █ ▀███▀     █   ▀███▀      ▀███▀   ▐  █       █  ▀███▀     █   ";
		echo "   █▐                    █   ██          ▀                           ▀     ▀            ▀    ";
		echo "   ▐                                                                                         ";
		echo ""
		echo ""
		python2 vig.py
		cd ..
	elif [ $choice == 5 ]
	then
		cd 'RAIL FENCE CIPHER'
		clear
		echo "█▄▄▄▄ ██   ▄█ █        ▄████  ▄███▄      ▄   ▄█▄    ▄███▄      ▄█▄    ▄█ █ ▄▄   ▄  █ ▄███▄   █▄▄▄▄ ";
		echo "█  ▄▀ █ █  ██ █        █▀   ▀ █▀   ▀      █  █▀ ▀▄  █▀   ▀     █▀ ▀▄  ██ █   █ █   █ █▀   ▀  █  ▄▀ ";
		echo "█▀▀▌  █▄▄█ ██ █        █▀▀    ██▄▄    ██   █ █   ▀  ██▄▄       █   ▀  ██ █▀▀▀  ██▀▀█ ██▄▄    █▀▀▌  ";
		echo "█  █  █  █ ▐█ ███▄     █      █▄   ▄▀ █ █  █ █▄  ▄▀ █▄   ▄▀    █▄  ▄▀ ▐█ █     █   █ █▄   ▄▀ █  █  ";
		echo "  █      █  ▐     ▀     █     ▀███▀   █  █ █ ▀███▀  ▀███▀      ▀███▀   ▐  █       █  ▀███▀     █   ";
		echo " ▀      █                ▀            █   ██                               ▀     ▀            ▀    ";
		echo "       ▀                                                                                       ";	
		python2 my.py
		cd ..
	elif [ $choice == 0 ]
	then 
		clear
		echo "exiting......"
		exit
	else
		clear
		echo "Invalid choice"
			
	fi
done

