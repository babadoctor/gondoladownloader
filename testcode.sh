for line in `cat dates.txt`; do
  sed -i "s/${oldString}/$line/g" $i;
done
