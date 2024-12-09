const std = @import("std");

fn fibonacci(n: i32) i32 {
    if (n == 0) {
        return 0;
    }
    if (n == 1) {
        return 1;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

pub fn main() !void {
    var args = std.process.args();
    _ = args.skip();
    const input: []const u8 = args.next().?;
    const u: i32 = try std.fmt.parseInt(i32, input, 10); // Get an input number from the command line
    var r: i32 = 0;
    var i: i32 = 0;
    while (i < u) : (i += 1) {
        r += fibonacci(i);
    }
    std.debug.print("{}", .{r}); // Print out a single element from the array
}
