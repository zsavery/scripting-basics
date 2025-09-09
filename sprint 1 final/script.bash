FileRead() {
    echo "Enter file name"
    read filename
    if [ -e $filename]
    then
        cat $filename
    else
        echo "File does not exist"
    fi
}



while [ $option != 0 ]
do
        Menu
        read option
        case $option in 
        1)
            FileRead 
        ;;
        2)
            CopyFile 
        ;;
        3)
            WriteFile 
        ;;
        4)
            FindingWords
        ;;
        5)
            CompareString 
        ;;
        6)
            CompareNumbers
        ;;
        esac
done