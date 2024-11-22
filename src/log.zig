const std = @import("std");

pub fn printArr(comptime T: type, arr: []T) void {
    std.debug.print("Array: [", .{});
    for (arr) |value| {
        std.debug.print("{}", .{value});
        if(value != arr[arr.len-1]){
            std.debug.print(", ", .{});
        }
    }
    std.debug.print("]\n", .{});
}