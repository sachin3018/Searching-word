#project A 
read -p "enter the hot word want to find in the directory : " hot_word
echo ""
read -p "enter the name of the folder : " myfolder
mkdir ./"$myfolder"
echo ""
echo "--------------------------------------------"
echo ""
echo "starting the program"
echo ""
echo "--------------------------------------------"
for myfile in *
do
    if [ -f "$myfile" ]; then
        echo "$myfile is a file ."
        check=$(grep -ni "sachin" "$myfile")
        if [ -z "$check" ];then
            echo "--------------------------"
            echo ""
        else
            cp  "$myfile" ./"$myfolder"
            echo "**********" >> ./"$myfolder"/"$myfile"
            echo "$check" >> ./"$myfolder"/"$myfile"
            echo "--------------------------"
            echo ""
        fi
    else
        echo "$myfile not a file ."
        echo "--------------------------"
        echo ""
    fi
done
echo ""
echo "ending the program"
echo ""
