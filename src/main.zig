const std = @import("std");
const vec = @import("vectors.zig");
const algo = @import("algo.zig");

pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});

    // stdout is for the actual output of your application, for example if you
    // are implementing gzip, then only the compressed bytes should be sent to
    // stdout, not any debugging messages.
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("Run `zig build test` to run the tests.\n", .{});

    try bw.flush(); // don't forget to flush!

    //const myVec1: vec.vector3 = vec.vector3{.x = 1.0, .y = 2.0, .z = 3.0};
    //const myVec2: vec.vector3 = vec.vector3{.x = 3.0, .y = 4.0, .z = 2.0};

    //const myVec3: vec.vector3 = vec.vector3.add(myVec1, myVec2);
    //myVec3.print();

    //const myVec7: vec.vector3 = vec.vector3.addSingle(i32, myVec3, 50);
    //myVec7.print();

    //const myVec4: vec.vector2 = vec.vector2{.x = 123.3, .y = 123.5};
    //const myVec5: vec.vector2 = vec.vector2{.x = 52.3, .y = 423.5};

    //const myVec6: vec.vector2 = vec.vector2.add(myVec4, myVec5);
    //myVec6.print();

    var arr = [5]i32{0, 5, 1, 2, 7};
    algo.bubbleSort(i32, &arr, 5);
    printArr(i32, &arr);
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}

pub fn printArr(comptime T: type, arr: []T) void {
    std.debug.print("Array: ", .{});
    for (arr) |value| {
        std.debug.print("{}, ", .{value});
    }
    std.debug.print("\n", .{});
}
