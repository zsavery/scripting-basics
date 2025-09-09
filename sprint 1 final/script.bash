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

Menu() {
    echo "Choose an option [1-6] or 0 to exit"
    echo "1. Read a file"
    echo "2. Copy a file"
    echo 3"Write to a file"
    echo "4. Find words in a file"
    echo "5. Compare two strings"
    echo "6. Compare two numbers"
    echo "0. Exit"
    echo -n "Enter your choice: "
}

CopyFile() {
    echo -n "Enter source file name: "
    read source
    echo -n "Enter destination file name: "
    read destination
    if [ -e $source ]
    then
        cp $source $destination
        echo "File copied successfully"
    else
        echo "Source file does not exist"
    fi
}

WriteFile() {
    echo -n "Enter a file name to write to: "
    read filename
    txt=""
    while txt != "exit" 
    do
        echo -n "Enter a line of text or 'exit' to quit: "
        read txt
        if [ $txt != "exit" ]
        then
            echo $txt >> $filename
        fi
    done
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