# Appends to existing text (if only > will replace existing file with content) - stdout
echo new line hello >> test-echo.txt


# Redirect content from file and process with cat and then create a new file with content processed - stdin and stdout
cat < test-echo.txt > new-test-echo.txt


# Redirects stderr message to a file 2 is for stderr type file descriptors
ls /directory/no-exist 2> error-log.txt


# Combine stdout and stderr into a single file 
# 2>&1 ensures that the error text is sent to the same destination as the stdout
ls /directory/no-exist test-echo.txt > test-echo-and-error-log.txt 2>&1
ls /directory/no-exist test-echo.txt &> test-echo-and-error-log.txt # another alternative and modern approach


# Ignores error
ls /directory/no-exist 2> /dev/null


# pipe and tee
# You can pipe the output directly into a command in this instance less
ls -la /etc | less

# You can see and then save the output into a file. This is a tee
ls | tee saved.txt

# Combination of pipe and tee. Example is pipe to tee
# Lists content in /etc, pipes output to tee and saves into file and finally output from tee is then piped to grep for filtering
ls -la /etc | tee etc_listing.txt | grep "conf"


# paste  command used to merge lines together
# Command used to format content and merges each content line with delimiter ' ' and outputs to command line
# Similar to cat
paste -d ' ' -s sample.txt


# head used to look at first 10 lines of file; can control line count by using -n flag
head /var/log/syslog


# tail is the last 10 lines of a file; use -f to real-time monitor file selected. Useful for debugging real time
tail -f /var/log/syslog


# join to combine files if needed - can also identify specific fields to join rows by
join file1.txt file2.txt


# Translate or convert text to characters we define. Example removes all digits in output piped to translate command
echo "My address is 123 Main Street" | tr -d '0-9'


# uniq only works to detect duplicated content lines that are adjacent to one and the other. To combat this, have to sort content and pipe that into uniq command as shown below
sort reading.txt | uniq


# grep most essential text-processing tool. Example below finds and ouputs any text containing "b" in file 
grep b duplciated-content.txt

# -i to ensure search is case-insensitive
# -c to output number of lines match pattern instead of showing results
# -o only see exact part of lines that matches

# Use patterns from a file and match against another file
grep -f patterns.txt sampl.txt

# Power full utilzie by combining grep with other commands. Example below outputs line that has User in it regardless of case sensitivity
env | grep -i User

# Specific pattern to match
ls /somedir | grep '.txt$'