# Add 2 files but one doesn't exist
rm -rf .legit
./legit-init
echo line 1 > a
./legit-add a b
echo line 2 > b
./legit-add a b
./legit-commit -m 'first commit'
./legit-status
echo line3 > c
./legit-add b
./legit-commit -m 'Change in b'
./legit-status
