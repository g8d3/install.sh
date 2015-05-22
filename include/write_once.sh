write_once(){
string=$1
file=$2

if ! grep -qc "$string" "$file"; then
  echo "=> Appending $string to $file"
  printf "\n$string" | sudo tee -a "$file" > /dev/null
else
  echo "=> $string already in $file"
fi
}
