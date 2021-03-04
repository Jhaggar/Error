Linux Basic Command 

### grep -i "UNix" geekfile.txt
>Case insensitive search : The -i option enables to search for a string case insensitively in the give file. It matches the words like “UNIX”, “Unix”, “unix”. 

### grep -c "unix" geekfile.txt
>Displaying the count of number of matches : We can find the number of lines that matches the given string/pattern

### grep -l "unix" *
>Display the file names that matches the pattern : We can just display the files that contains the given string/pattern. 

### grep -o "unix" geekfile.txt
>Displaying only the matched pattern : By default, grep displays the entire line which has the matched string. We can make the grep to display only the matched string by using the -o option.

### grep -n "unix" geekfile.txt
>Show line number while displaying the output using grep -n : To show the line number of file with the line matched. 

### To print the fifth column, use the following command :- awk '{ print $5 }' filename
