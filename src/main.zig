const std = @import("std");
const types = @import("types.zig");

pub fn main() anyerror!void {
    std.log.info("All your codebase are belong to us.", .{});
}

test "types test" {
    try std.testing.expectEqual(10, 3 + 7);
}
