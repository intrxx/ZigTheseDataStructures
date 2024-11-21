
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