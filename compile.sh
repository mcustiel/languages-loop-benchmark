gcc -O3 c/code.c -o c/code
go build -o go/code go/code.go
v v/code.v
zig build-exe -Doptimize=ReleaseFast -femit-bin=zig/code zig/code.zig
