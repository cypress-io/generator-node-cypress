set e+x

echo "Linking current generator package"
npm link

testFolder=`dirname $0`
echo "Test folder $testFolder"
sourceFolder=$PWD

echo "Creating test folder"
folder=/tmp/test-node-generator
rm -rf $folder
mkdir $folder
echo "Created test folder $folder"

cp $testFolder/answers.json $folder
echo "Copied answers file answers.json to $folder"

cd $folder
echo "Changed working dir to $folder"

echo "Creating local git repo"
git init
git remote add origin git@github.com:bahmutov/test-node-generator.git

echo "Running yeoman, expect to read answers from file"
DEBUG=gen yo node-bahmutov
rm answers.json
echo "Generator is done"

echo "Making a microservice"
npm i -S micro@6.1.0 freeport-promise
cp $sourceFolder/test/index.js src/index.js
git add src/*.js .gitignore .npmrc README.md package.json
echo "Files before the commit"
find . -maxdepth 2 | egrep -v node_modules | egrep -v .git
git status

git commit -m "chore(test): this is a test commit"

ls -la
git log --oneline
# git show

echo "Testing Dockerfile generation"
yo node-bahmutov:docker
echo "Git status"
git status
git add Dockerfile .dockerignore package.json
git commit -m "chore(docker): generate Dockerfile"

echo "Git log after adding docker files"
git log --oneline

echo "All done testing generator in $folder"
