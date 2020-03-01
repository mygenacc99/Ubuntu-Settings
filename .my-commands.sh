function crun() {
	input=$1
	file_name="${input%.*}"
	g++ -g -Wall $input -o $file_name
	./$file_name
	echo
}
