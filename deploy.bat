@REM npm run build

cd dist

git init .
git add .
git commit -m 'deploy'
git branch -M gh-pages
git remote add origin https://github.com/dnamme/dnamme.github.io.git
git push -f -u origin gh-pages

cd ..