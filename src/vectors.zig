const std = @import("std");

pub const vector3 = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,
    z: f32 = 0.0,

    pub fn print(self: vector3) void{
        std.debug.print("Vector (x: [{}]), y: [{}], z: [{}]", .{self.x, self.y, self.z});
    }

    pub inline fn add(v1: vector3, v2: vector3) vector3 {
        return vector3{.x = v1.x + v2.x, .y =  v1.y + v2.y, .z = v1.z + v2.z};
    }
};

pub const vector2 = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,

    pub fn print(self: vector2) void{
        std.debug.print("Vector (x: [{}]), y: [{}]", .{self.x, self.y});
    }

    pub inline fn add(v1: vector2, v2: vector2) vector2 {
        return vector2{.x = v1.x + v2.x, .y =  v1.y + v2.y};
    }
};

