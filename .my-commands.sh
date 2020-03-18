function crun() {
	input=$1
	file_name="${input%.*}"
	g++ -g -Wall $input -o $file_name
	./$file_name
	echo
}

function wgstart() {
	sudo systemctl start wg-quick@wg0
}

function wgstop(){
	sudo systemctl stop wg-quick@wg0
}
