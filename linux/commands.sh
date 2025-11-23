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