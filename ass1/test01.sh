# Add and commit files thats name
#   1 - start with 'Legit-'
#   2 - has ',' and '_' char
rm -rf .legit
./legit-init
echo line1 > legit-ab
echo line2 > comp2041,comp_2041
./legit-add legit-ab
./legit-add comp2041,comp_2041
./legit-commit -m 'Commit a legit'
./legit-show 0:legit-ab
./legit-show 1:legit-ab
echo line3 > _comp2041
./legit-add _comp2041
./legit-status
