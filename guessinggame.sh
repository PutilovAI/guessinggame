function congrats {
  echo "You are right!!! Count of files = $1."
}

count_of_files=$(ls | wc -l | egrep -o "[0-9]+")
has_success=false

echo 'Please guess number of files in this directory:'

while [[ ! $has_success = true ]]
do
  read guess_count

  if [[ $guess_count -lt $count_of_files ]]
  then
    echo "You aren't right. Try a number which greater than previous option:"
  elif [[ $guess_count -gt $count_of_files ]]
  then
    echo "You aren't right. Try a number which less than previous option:"
  else
     congrats "$count_of_files"
     has_success=true
  fi
done

