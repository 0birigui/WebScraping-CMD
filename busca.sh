#!/bin/bash

# Luffy
luffy=$(curl -k https://pb.ongame.net/ranking/individual/10654794/Luffy/ | grep -i "ltimo login" | cut -d ">" -f 9)

# PERSEU
perseu=$(curl -k https://pb.ongame.net/ranking/individual/12468231/Perseu/ | grep -i "ltimo login" | cut -d ">" -f 9)

# Manolo
manolo=$(curl -k https://pb.ongame.net/ranking/individual/1732029/SrMANOLO/ | grep -i "ltimo login" | cut -d ">" -f 9)

# Leozin
leozin=$(curl -k https://pb.ongame.net/ranking/individual/1846559/LeeooziiinhooO/ | grep -i "ltimo login" | cut -d ">" -f 9)

clear
echo "##################################################"
echo -n "########### " && echo -e "\033[31mUltimo Login no PB \033[0m###################"
echo "##################################################"

# Exibir o resultado
echo -n "## " && echo -en "\033[32mLuffy  \033[0m${luffy:13:20} as ${luffy:37:5}" && echo "  #########"
echo -n "## " && echo -en "\033[32mPerseu \033[0m${perseu:13:20} as ${perseu:37:5}" && echo  "  #########"
echo -n "## " && echo -en "\033[32mManolo \033[0m${manolo:13:20} as ${manolo:37:5}" && echo  "  #########"
echo -n "## " && echo -en "\033[32mLeozin \033[0m${leozin:13:20} as ${leozin:37:5}" && echo  "  #########"

echo "##################################################"
echo
echo
echo
echo
read -rp "Press Enter to continue..."
