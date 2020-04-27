printf 'copy files'
mkdir ../$1
cp -R -f .github ../$1/.github
cp -R -f .storybook ../$1/.storybook
cp -R -f dist ../$1/dist
cp -R -f example ../$1/example
cp -R -f src ../$1/src
cp -R -f stories ../$1/stories
cp -R -f test ../$1/test
cp .gitignore ../$1/.gitignore

cp LICENSE ../$1/LICENSE
cp package.json ../$1/package.json
cp README.md ../$1/README.md
cp tsconfig.json ../$1/tsconfig.json
cp yarn.lock ../$1/yarn.lock

cp clone.sh ../$1/clone.sh

printf 'change name\n'
cd ../$1
sed -i'' -e 's/react-utils/'$1'/g' package.json
sed -i'' -e 's/react-utils/'$1'/g' clone.sh

printf 'init git\n'
git init
git add --all
git commit -m "init repo $1"
git remote add origin https://github.com/kross77/$1.git

printf 'copy node_modules\n'
cp -R node_modules ../$1/node_modules

printf 'Donet\n'



