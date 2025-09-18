# Create your own script that is useful for you!

lyrics () {
    echo -n "$2: " 
    cat $1 | grep $2 | wc -l
}

WORD="file.txt"

lyrics $WORD "gummy"
lyrics $WORD "Gummy"


