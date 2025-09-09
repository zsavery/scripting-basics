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

FindingWords() {
    echo -n "Enter file name to search: "
    read filename
    if [ -e $filename ]
    then
        echo -n "Enter word to find: "
        read word
        grep -o $word $filename | wc -l
        # wc is word count 
        # wc -l counts the number of lines
        # -o option in grep prints each match on a new line
    else
        echo "File does not exist"
    fi
}

CompareString() {
    echo -n "Enter first string: "
    read str1
    echo -n "Enter second string: "
    read str2
    if [ "$str1" = "$str2" ]
    then
        echo "Strings are equal"
    else
        echo "Strings are not equal"
    fi
}

CompareNumbers() {
    echo -n "Enter first number: "
    read num1
    echo -n "Enter second number: "
    read num2
    if [ $num1 -eq $num2 ]
    then
        echo "Numbers are equal"
    else
        echo "Numbers are not equal"
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