# Add 2 files before even legal-init
rm -rf .legit
echo line 1 > a
echo line 2 > b
./legit-add a b
./legit-init
./legit-rm --force a b
./legit-add a b
./legit-commit -m 'first commit'
rm a b
./legit-status
./legit-rm --cached a b
echo line 3 > b
./legit-init
./legit-add b
./legit-rm b
