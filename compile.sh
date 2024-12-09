gcc -O3 c/code.c -o c/code
go build -ldflags "-s -w" -o go/code go/code.go
v -prod v/code.v
zig build-exe -O ReleaseFast -fstrip -fsingle-threaded -femit-bin=zig/code zig/code.zig
