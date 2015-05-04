write_once(){
string=$1
file=$2

if ! grep -qc "$string" "$file"; then
  echo "=> Appending $string to $file"
  printf "\n$string\n" >> "$file"
else
  echo "=> $string already in $file"
fi
}
