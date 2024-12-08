function run {
  { time $2 ; } 2> /tmp/o 1> /dev/null
  printf "$1 = "
  cat /tmp/o # | awk -v N=1 '{print $N}'
}

run "C" "./c/code 40"
run "Go" "./go/code 40"
run "V" "./v/code 40"
run "Zig" "./zig/code 40"
run "Node" "node ./js/code.js 40"
run "Bun" "bun ./js/code.js 40"
run "Deno" "deno ./js/code.js 40"
run "PyPy" "pypy ./py/code.py 40"

