const std = @import("std");

pub fn printTree(count: u64) void {
    const mid: u64 = @divFloor(count, 2);
    std.debug.print("\n", .{});
    for (0..@as(usize, count)) |i| {
        for (0..@as(usize, count)) |j| {
            const left = mid - @as(i128, i);
            const right = mid + @as(i128, i);

            // Bottom
            if((left == 0) or (right == count)){
                if(j == mid){
                    std.debug.print("*", .{});
                    return;
                }
                std.debug.print(" ", .{});
                continue;
            }
            if((@as(i128, j) >= left) and (@as(i128, j) <= right)){
                std.debug.print("*", .{});
            }
            else {
                std.debug.print(" ", .{});
            }
        }
        std.debug.print("\n", .{});
    }
}