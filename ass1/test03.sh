# Add 2 files, commit it 
# Then force remove one file
# Edit and check content of the remaining file between 2 version
rm -rf .legit
./legit-init
echo line 1 > a
echo line 2 > b
./legit-add a b
./legit-commit -m 'first commit'
legit-rm --force a
echo line 43 > b
./legit-add b
./legit-commit -m 'second commit'
./legit-show :b
./legit-show 0:b
./legit-show 1:b
