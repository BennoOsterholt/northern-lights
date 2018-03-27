# /bin/sh
# SED

# principal functionality
# replace docker with tocker !
sed -i 's/docker/tocker/g' dated_history
sed --in-place 's/docker/tocker/g' dated_history
sed -i 's/hello/world' file.txt

# replace all occurrences of ‘hello’ to ‘world’ in the file input.txt
sed 's/hello/world/' input.txt > output.txt



################################## 
# replacing a \ in a passed variable
################################## 

has_backslash() {
	if [[ -z "$@" ]]; then
		echo -e "function(): no args set"
		exit
	fi
	#echo -e "$@"
	sedded=$(echo -e "$@" | grep -E '[\]')
	echo -e "$sedded"
}
has_backslash $@

# variable change
SQL="select claim_id from claim;"
SQL=$(sed -e "s/claim/setting/g" <<< $SQL)
echo -e $SQL

# found this on reddit, does some polling of stats?
# anyway it has some sed in it
# maybe take it apart and see what it does
# looks for a digit like 0.0000123 or 312.38487
# seems to be this posix thingy

for i in {1..100}; do
    strace -T -e statfs df . 2>&1
done |
    sed -n '
      # output looks like: statfs(".", {f_foo=BAR, …}) = 0 <0.000241>
      /^.* = <\([[:digit:]]\+\.[[:digit:]]\+\)>$/ {
        s//\1/
        p
      }
    ' |
    sort -n