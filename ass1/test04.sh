# Remove cached file and then uploading the same file again
# Shouldn't be able to second commit
rm -rf .legit
./legit-init
echo line 1 > a
./legit-add a
./legit-commit -m 'first commit'
./legit-rm --cached a
./legit-add a
./legit-commit -m 'second commit'
./legit-show 0:a
./legit-show 1:a
./legit-log
