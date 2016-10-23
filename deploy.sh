rm -r public/*
hugo
git add -A
git commit
git push origin master
git subtree push --prefix=public git@github.com:swarodaya/website.git gh-pages
