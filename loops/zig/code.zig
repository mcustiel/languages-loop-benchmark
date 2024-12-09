const std = @import("std");
const rand = std.crypto.random;

pub fn main() !void {
    var args = std.process.args();
    _ = args.skip();
    const input: []const u8 = args.next().?;
    const u: i32 = try std.fmt.parseInt(i32, input, 10); // Get an input number from the command line
    const r: i32 = rand.intRangeAtMost(i32, 0, 10000); // Get a random number 0 <= r < 10k
    var a: [10000]i32 = [_]i32{0} ** 10000; // Array of 10k elements initialized to 0
    var i: usize = 0;
    var j: i32 = undefined;
    while (i < 10000) : (i += 1) { // 10k outer loop iterations
        j = 0;
        while (j < 100000) : (j += 1) { // 100k inner loop iterations, per outer loop iteration
            a[i] = a[i] + @mod(j, u); // Simple sum
        }
        a[i] += r; // Add a random value to each element in array
    }
    std.debug.print("{}", .{a[@intCast(r)]}); // Print out a single element from the array
}
