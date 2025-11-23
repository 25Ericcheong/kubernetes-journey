# Appends to existing text (if only > will replace existing file with content)
echo new line hello >> test-echo.txt

# Redirect content from file and process with cat and then create a new file with content processed
cat < test-echo.txt > new-test-echo.txt