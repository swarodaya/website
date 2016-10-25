# clean up
trgt="../public"
rm $trgt/{404.html,favicon.png,index.html,index.xml,logo.png,sitemap.xml}
rm -r $trgt/{blog,css,img,js}

# pause for input
read  -n 1 -p "Press key to continue"

# build
hugo -d ../public

# commit and push to origin
git commit -a
git push origin master

echo "Now go push the generated site!"
