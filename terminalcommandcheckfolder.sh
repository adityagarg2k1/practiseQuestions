
#!/bin/bash

if [ -d $foldername ]
then
	echo "$foldername exists on your filesystem."
else
	mkdir -v foldername
	echo "$foldername created"
fi
