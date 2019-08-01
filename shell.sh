for item in $(kaggle kernels list --user mervinpraison); do 
	if [[ $item == *"mervinpraison"* ]]; then
		toreplace=""
		echo "${item/mervinpraison\/$toreplace}"
		kaggle kernels pull $item -p "${item/mervinpraison\/$toreplace}" 		
	fi 
done;
git add .;
git commit -m 'update';
git push -u origin master;
