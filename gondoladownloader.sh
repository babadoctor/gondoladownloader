#input is copy pasted from the gondola website, last uploaded file was


#because i am literal retard that doesn't know how to program i just piped a bunch of sed commands into each other like the human catepillar from south park
sed 's/^.*ago//' input.txt | sed 's/\.webm.*/.webm/' | sed 's/\.mp4.*/.mp4/' | sed 's/	//g' | sed 's#^#wget https://gondola.stravers.net/#' > parsed.sh


#download the videos from the script
#sh parsed.sh


#get all files downloaded in the directory

ls -d "$PWD"/*.webm > directoryfiles.txt


#upload 


cat directoryfiles.txt | xargs -n1 -I % sh -c 'echo youtube-upload --privacy=public --publish-at=ASFKJL -t $(basename %) %' > uploadscriptnodate.sh #go look at test script for for loop substitution



#help text: --publish-at=datetime

#python script.py
count=$((count))
for line in `cat dates.txt`;
do
count=$((count + 1))
echo $count
echo $line
echo sed -i '{$count}s/ASFKJL/{$line}/' uploadscriptnodate.sh

done