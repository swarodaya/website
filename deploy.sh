# clean up
trgt="../public/website"
rm $trgt/{404.html,favicon.png,index.html,index.xml,logo.png,sitemap.xml}
rm -r $trgt/{blog,css,img,js}

# pause for input
read  -n 1 -p "Press key to continue"

# build
hugo -d ../public/website

# commit and push to origin
git commit -a
git push origin master

echo "Now go push the generated site!"
