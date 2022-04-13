const std = @import("std");
const testing = std.testing;
const print = std.debug.print;

pub fn runModule() void {
  print("Running types!\n", .{});
}

test "types" {
    var a: i16 = undefined; // this mean i dont care what are in a
    var b: i16 = 3;
    a = 10;
    var c = a + b;
    try testing.expectEqual(c, a + b);

    try testing.expectEqual(true, true and true);
    try testing.expectEqual(false, false and true);
    try testing.expectEqual(true, false or true);
    try testing.expectEqual(false, false or false);
    
    //some bit ops
    try testing.expectEqual(4, 1<<2);
    try testing.expectEqual(2, 4>>1);
    try testing.expectEqual(1, 0xF1 & 0x01);
    try testing.expectEqual(0xF0, 0xF1 ^ 0x01);
    try testing.expectEqual(@as(u32, std.math.maxInt(u32)) +% 1, 0);
    try testing.expectEqual(@as(u32, std.math.maxInt(u32)) +| 1, std.math.maxInt(u32));

    const value: ?u32 = null;
    try testing.expectEqual(value orelse 124, 124);

    const x: u32 = 1234;
    var ptr: * const u32 = &x;
    try testing.expectEqual(ptr.*, x);
    




}

