# clean up
trgt="../public"
rm $trgt/{404.html,favicon.png,index.html,index.xml,logo.png,sitemap.xml}
if (( $? )); then
	echo "Error while cleaning up files" >&2
	exit 1
else
	echo "Files cleand up"
fi

rm -r $trgt/{blog,videos,css,img,js}
if (( $? )); then
	echo "Error while cleaning up folders" >&2
	exit 1
else
	echo "Folders cleand up"
fi

# build
hugo -d ../public

# commit and push to origin
git commit -a
git push origin master

echo "Now go push the generated site!"
