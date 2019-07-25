# Add 2 files and then legit-rm one of them before committing
rm -rf .legit
./legit-init
echo line 1 > a
echo line 2 > b
./legit-add a b
./legit-rm --cached a
./legit-commit -m 'first commit'
./legit-status
echo line 3 > c
./legit-add c
./legit-commit -m 'Add c'
./legit-rm b c
rm a
./legit-status
