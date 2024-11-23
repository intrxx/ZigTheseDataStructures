const std = @import("std");
const log = @import("log.zig");

pub fn bubbleSort(comptime T: type, arr: [*]T, len: usize) void {
    for (0..len - 1) |i| {
        for(0..len - 1 - i) |j| {
            if(arr[j+1] > arr[j]){
                const temp: T = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

pub fn binarySearch(comptime T: type, arr: []T, elemToFind: T, bLog: bool) u64 {
    std.mem.sort(T, arr, {}, comptime std.sort.asc(T));
    if(bLog){
        log.printArr(T, arr);
    }
    var low: u64 = 0;
    var high: u64 = @as(u64, arr.len - 1);

    while(low <= high){
        const mid = @divTrunc((high - low), 2) + low;
        if(arr[mid] == elemToFind){
            std.debug.print("Index of {}: {}", .{elemToFind, mid});
            return mid;
        }
        if(elemToFind > arr[mid]){
            low = mid + 1;
        }
        else{
            high = mid - 1;
        }
    }
    return 0;
}