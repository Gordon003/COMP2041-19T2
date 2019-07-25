# Try to legit-rm all 4 files at once but one fails
# Hence, legit-rm shouldn't work at all
# But second time should work
rm -rf .legit
./legit-init
echo line 1 > a
echo line 2 > b
echo line 3 > c
./legit-add a b c
./legit-commit -a -m 'first commit'
./legit-rm a b c d
./legit-status
./legit-rm a b c
./legit-status
echo line 4 > d
./legit-add d
./legit-commit -m "Add d"
./legit-status
