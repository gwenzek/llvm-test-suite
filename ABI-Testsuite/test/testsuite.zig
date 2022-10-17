pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
};
pub const VTBL_ENTRY = c_long;
pub var verbose: c_int = 0;
pub var num_classes: c_int = 0;
pub var n_errors: c_int = 0;
pub var n_tests: c_int = 0;
pub const sal_16 = extern struct {
    a: [16]u8 align(16),
};
pub const sal_32 = extern struct {
    a: [32]u8 align(32),
};
pub const sal_64 = extern struct {
    a: [64]u8 align(64),
};
pub const sal_128 = extern struct {
    a: [128]u8 align(128),
};
pub const sal_256 = extern struct {
    a: [256]u8 align(256),
};
pub const sal_512 = extern struct {
    a: [512]u8 align(512),
};
pub const sal_1024 = extern struct {
    a: [1024]u8 align(1024),
};
pub const sal_2048 = extern struct {
    a: [2048]u8 align(2048),
};
pub const Name_Map = extern struct {
    func: ?*const fn (...) callconv(.C) void,
    name: [*c]const u8,
};
pub const Class_Descriptor = struct_Class_Descriptor;
pub const struct__base_class = extern struct {
    type: [*c]Class_Descriptor,
    ofst: ptrdiff_t,
    vtbl_ofst: ptrdiff_t,
    num_negative_vtbl_entries: ptrdiff_t,
    index_in_vtt: c_uint,
    base_subarray_index_in_vtt: c_uint,
    init_seq: c_int,
    parent_idx: c_int,
    is_direct: u8,
    is_virtual: u8,
};
pub const Base_Class = struct__base_class;
const struct_unnamed_1 = extern struct {
    typeinfo_var_ptr: [*c]VTBL_ENTRY,
    typeinfo_var_name: [*c]const u8,
};
pub const struct_Class_Descriptor = extern struct {
    name: [*c]u8,
    bases: [*c]Base_Class,
    n_bases: c_int,
    expected_vtbl_contents: [*c]VTBL_ENTRY,
    expected_vtt_contents: [*c]VTT_ENTRY,
    class_size: c_int,
    tv: struct_unnamed_1,
    tv_size: c_int,
    vtbl: vName_Map,
    vtbl_size: c_int,
    vtbl_ofst: c_int,
    vtt: vpName_Map,
    vtt_size: c_int,
    n_initialized_bases: c_uint,
    has_virtual_bases: u8,
    has_class_type_fields: u8,
    alt_thunk_names: [*c]VTBL_ENTRY,
};
pub const vName_Map = extern struct {
    @"var": [*c]VTBL_ENTRY,
    name: [*c]u8,
};
pub const vpName_Map = extern struct {
    @"var": [*c][*c]VTBL_ENTRY,
    name: [*c]u8,
};
pub const VTT_ENTRY = extern struct {
    vtbl: [*c]VTBL_ENTRY,
    ofst: c_ushort,
    size: c_ushort,
};
pub export fn hide_sll(arg_p: c_longlong) c_longlong {
    var p = arg_p;
    return p;
}
pub export fn hide_ull(arg_p: c_ulonglong) c_ulonglong {
    var p = arg_p;
    return p;
}
pub export fn f_note_ctor(arg_n: [*c]const u8, arg_this_p: ?*anyopaque, arg_filename: [*c]const u8, arg_linenum: c_int) void {
    var n = arg_n;
    var this_p = arg_this_p;
    var filename = arg_filename;
    var linenum = arg_linenum;
    if (cur_cd == @ptrCast([*c]Class_Descriptor, @alignCast(@import("std").meta.alignment([*c]Class_Descriptor), @intToPtr(?*anyopaque, @as(c_int, 0))))) return;
    if (!(cur_cd.*.has_class_type_fields != 0)) {
        if (strcmp(n, cur_cd.*.name) != 0) {
            check_base(blk: {
                const ref = &cur_init_seq;
                ref.* += 1;
                break :blk ref.*;
            }, n, this_p, filename, linenum);
        }
    } else if (cur_cd.*.n_bases == @as(c_int, 0)) {} else {
        var bc: [*c]Base_Class = find_base_class(@divExact(@bitCast(c_long, @ptrToInt(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), this_p))) -% @ptrToInt(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), full_object_address)))), @sizeOf(u8)), cur_cd, n);
        if (bc != null) {
            check_base(bc.*.init_seq, n, this_p, filename, linenum);
        }
    }
}
pub export fn f_note_dtor(arg_n: [*c]const u8, arg_this_p: ?*anyopaque, arg_filename: [*c]const u8, arg_linenum: c_int) void {
    var n = arg_n;
    var this_p = arg_this_p;
    var filename = arg_filename;
    var linenum = arg_linenum;
    if (test_finished != 0) return;
    if (cur_cd == @ptrCast([*c]Class_Descriptor, @alignCast(@import("std").meta.alignment([*c]Class_Descriptor), @intToPtr(?*anyopaque, @as(c_int, 0))))) return;
    if (!(cur_cd.*.has_class_type_fields != 0)) {
        if (strcmp(n, cur_cd.*.name) != 0) {
            check_base(blk: {
                const ref = &cur_init_seq;
                const tmp = ref.*;
                ref.* -= 1;
                break :blk tmp;
            }, n, this_p, filename, linenum);
        }
    } else if (cur_cd.*.n_bases == @as(c_int, 0)) {} else {
        var bc: [*c]Base_Class = find_base_class(@divExact(@bitCast(c_long, @ptrToInt(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), this_p))) -% @ptrToInt(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), full_object_address)))), @sizeOf(u8)), cur_cd, n);
        if (bc != null) {
            check_base(bc.*.init_seq, n, this_p, filename, linenum);
        }
    }
}
pub export fn init_test(arg_cd: [*c]Class_Descriptor, arg_var_addr: ?*anyopaque) void {
    var cd = arg_cd;
    var var_addr = arg_var_addr;
    cur_cd = cd;
    full_object_address = var_addr;
    cur_init_seq = 0;
    num_classes += 1;
    ctors_done = 0;
    if (verbose != 0) {
        _ = printf("Testing class %s\n", cd.*.name);
    }
}
pub export fn init_simple_test(arg_name: [*c]const u8) void {
    var name = arg_name;
    num_classes += 1;
    cur_cd = null;
    if (verbose != 0) {
        _ = printf("Testing class %s\n", name);
    }
}
pub export fn f_check2(arg_actual: c_int, arg_expected: c_int, arg_name: [*c]const u8, arg_filename: [*c]const u8, arg_linenum: c_int) void {
    var actual = arg_actual;
    var expected = arg_expected;
    var name = arg_name;
    var filename = arg_filename;
    var linenum = arg_linenum;
    n_tests += 1;
    if (actual != expected) {
        _ = printf("ERROR at %s:%d '%s' actual %d != expected %d\n", trim_fn(filename), linenum, name, actual, expected);
        n_errors += 1;
    } else if (verbose > @as(c_int, 1)) {
        _ = printf("OK at %s:%d '%s' = %d\n", trim_fn(filename), linenum, name, actual);
    }
}
pub export fn f_check_field_offset(arg_ps: ?*anyopaque, arg_pf: ?*anyopaque, arg_ofst: c_int, arg_name: [*c]const u8, arg_filename: [*c]const u8, arg_linenum: c_int) void {
    var ps = arg_ps;
    var pf = arg_pf;
    var ofst = arg_ofst;
    var name = arg_name;
    var filename = arg_filename;
    var linenum = arg_linenum;
    n_tests += 1;
    if ((@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), ps)) + @bitCast(usize, @intCast(isize, ofst))) != @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), pf))) {
        _ = printf("ERROR at %s:%d '%s' expected ofst %d != actual ofst %d\n", trim_fn(filename), linenum, name, ofst, @bitCast(c_int, @truncate(c_int, @divExact(@bitCast(c_long, @ptrToInt(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), pf))) -% @ptrToInt(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), ps)))), @sizeOf(u8)))));
        n_errors += 1;
    } else if (verbose > @as(c_int, 1)) {
        _ = printf("OK at %s:%d '%s' expected ofst = %d\n", trim_fn(filename), linenum, name, ofst);
    }
}
pub export fn Check_Ctor_Dtor_Calls(arg_op: ?*anyopaque) void {
    var op = arg_op;
    _ = @TypeOf(op);
    if (cur_init_seq != @as(c_int, 0)) {
        _ = printf("ERROR: Expected number of dtors not called %s\n", cur_cd.*.name);
        n_errors += 1;
    }
}
pub export fn test_class_info(arg_var_ptr: ?*anyopaque, arg_cd: [*c]Class_Descriptor) void {
    var var_ptr = arg_var_ptr;
    var cd = arg_cd;
    ctors_done = 1;
    if (verbose > @as(c_int, 1)) {
        _ = printf("test_class_info %s %p cur_init_seq=%d\n", cd.*.name, var_ptr, cur_init_seq);
    }
    if ((full_object_address != null) and (full_object_address != var_ptr)) {
        _ = printf("ERROR: full object address does not match deduced address %s\n", cur_cd.*.name);
        n_errors += 1;
    }
    if ((@bitCast(c_uint, cur_init_seq) != cd.*.n_initialized_bases) and !(cd.*.has_class_type_fields != 0)) {
        _ = printf("ERROR: Not all bases of %s were initialized \n", cur_cd.*.name);
        n_errors += 1;
    }
    if (cd.*.expected_vtbl_contents != null) {
        check_full_object_vtbls(var_ptr, cd, @as(c_int, 1));
    }
    if (!(cd.*.vtt.@"var" != null)) {} else if (cd.*.expected_vtt_contents != null) {
        check_vtt_tbl(cd, cd.*.expected_vtt_contents, cd.*.vtt.@"var", cd.*.vtt.name, cd.*.vtt_size);
    }
}
pub export fn test_bitfield_value(arg_obj_ptr: ?*anyopaque, arg_byte_offset: c_uint, arg_bit_offset: c_uint, arg_size: c_uint, arg_expected_value: c_longlong, arg_var_size: c_uint, arg_name: [*c]const u8, arg_filename: [*c]const u8, arg_linenum: c_int) void {
    var obj_ptr = arg_obj_ptr;
    var byte_offset = arg_byte_offset;
    var bit_offset = arg_bit_offset;
    var size = arg_size;
    var expected_value = arg_expected_value;
    var var_size = arg_var_size;
    var name = arg_name;
    var filename = arg_filename;
    var linenum = arg_linenum;
    var read_value: c_longlong = readValue(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), obj_ptr)) + byte_offset, bit_offset, @bitCast(c_int, size));
    var expected_mask: c_ulonglong = 0;
    var i: c_ulonglong = undefined;
    n_tests += 1;
    expected_mask = 0;
    if (size > @bitCast(c_uint, @as(c_int, 7))) {
        i = 0;
        while (i < @bitCast(c_ulonglong, @as(c_ulonglong, size))) : (i +%= @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 8)))) {
            expected_mask <<= @intCast(@import("std").math.Log2Int(c_int), @as(c_int, 8));
            expected_mask |= @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 255)));
        }
    }
    if ((size % @bitCast(c_uint, @as(c_int, 8))) != 0) {
        expected_mask <<= @intCast(@import("std").math.Log2Int(c_uint), size % @bitCast(c_uint, @as(c_int, 8)));
        expected_mask |= @bitCast(c_ulonglong, @as(c_ulonglong, LITTLE_ENDIAN_MASKS[size % @bitCast(c_uint, @as(c_int, 8))]));
    }
    expected_value &= @bitCast(c_longlong, expected_mask);
    read_value &= @bitCast(c_longlong, expected_mask);
    if (read_value != expected_value) {
        var i_1: c_int = undefined;
        var found: c_int = -@as(c_int, 1);
        {
            i_1 = 1;
            while (i_1 < @as(c_int, 20)) : (i_1 += 1) {
                if (((byte_offset +% @bitCast(c_uint, i_1)) < var_size) and (is_bitfield_value_correct(obj_ptr, byte_offset +% @bitCast(c_uint, i_1), bit_offset, size, expected_value) != 0)) {
                    found = @bitCast(c_int, byte_offset +% @bitCast(c_uint, i_1));
                    break;
                }
                if ((byte_offset >= @bitCast(c_uint, i_1)) and (is_bitfield_value_correct(obj_ptr, byte_offset -% @bitCast(c_uint, i_1), bit_offset, size, expected_value) != 0)) {
                    found = @bitCast(c_int, byte_offset -% @bitCast(c_uint, i_1));
                    break;
                }
            }
        }
        _ = printf("ERROR at %s:%d Bitfield errors found (expected=0X%llX, got=0X%llX) in %s", trim_fn(filename), linenum, expected_value, read_value, name);
        if (found >= @as(c_int, 0)) {
            _ = printf(" expected byte ofst %d != actual byte ofst %d", byte_offset, found);
        }
        _ = printf("\n");
        n_errors += 1;
    }
    return;
}
pub export fn clear_var(arg_a: ?*anyopaque, arg_b: c_uint) void {
    var a = arg_a;
    var b = arg_b;
    var ca: [*c]u8 = @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), a));
    var i: c_uint = undefined;
    {
        i = 0;
        while (i < b) : (i +%= 1) {
            ca[i] = 0;
        }
    }
}
pub const voidfunc = ?*const fn () callconv(.C) void;
pub const struct__atcm = extern struct {
    func: voidfunc,
    next: [*c]struct__atcm,
    name: [*c]const u8,
};
pub const ATCM = struct__atcm;
pub export fn atc_register(arg_func: voidfunc, arg_name: [*c]const u8, arg_sz: usize) void {
    var func = arg_func;
    var name = arg_name;
    var sz = arg_sz;
    _ = @TypeOf(sz);
    var sa: [*c]ATCM = @ptrCast([*c]ATCM, @alignCast(@import("std").meta.alignment([*c]ATCM), malloc(@sizeOf(ATCM))));
    sa.*.next = atcm_head;
    atcm_head = sa;
    sa.*.func = func;
    sa.*.name = name;
}
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*anyopaque,
    reg_save_area: ?*anyopaque,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int,
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
const union_unnamed_2 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int,
    __value: union_unnamed_2,
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t,
    __state: __mbstate_t,
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t,
    __state: __mbstate_t,
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: [*c]u8,
    _IO_read_end: [*c]u8,
    _IO_read_base: [*c]u8,
    _IO_write_base: [*c]u8,
    _IO_write_ptr: [*c]u8,
    _IO_write_end: [*c]u8,
    _IO_buf_base: [*c]u8,
    _IO_buf_end: [*c]u8,
    _IO_save_base: [*c]u8,
    _IO_backup_base: [*c]u8,
    _IO_save_end: [*c]u8,
    _markers: ?*struct__IO_marker,
    _chain: [*c]struct__IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*_IO_lock_t,
    _offset: __off64_t,
    _codecvt: ?*struct__IO_codecvt,
    _wide_data: ?*struct__IO_wide_data,
    _freeres_list: [*c]struct__IO_FILE,
    _freeres_buf: ?*anyopaque,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vprintf(__format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub extern fn feof_unlocked(__stream: [*c]FILE) c_int;
pub extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data,
    __ctype_b: [*c]const c_ushort,
    __ctype_tolower: [*c]const c_int,
    __ctype_toupper: [*c]const c_int,
    __names: [13][*c]const u8,
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: usize) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub fn trim_fn(arg_ifn: [*c]const u8) callconv(.C) [*c]u8 {
    var ifn = arg_ifn;
    var x: [*c]u8 = undefined;
    var @"fn": [*c]u8 = @intToPtr([*c]u8, @ptrToInt(ifn));
    var rv: [*c]u8 = @"fn";
    if (!(strncmp(@"fn", "test/", @bitCast(c_ulong, @as(c_long, @as(c_int, 5)))) != 0)) return @"fn";
    while ((blk: {
        const tmp = strstr(rv, "/test/");
        x = tmp;
        break :blk tmp;
    }) != null) {
        rv = x + @bitCast(usize, @intCast(isize, @as(c_int, 1)));
    }
    return rv;
}
pub export var test_finished: c_int = 0;
pub var cur_cd: [*c]Class_Descriptor = @import("std").mem.zeroes([*c]Class_Descriptor);
pub var full_object_address: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque);
pub var cur_init_seq: c_int = @import("std").mem.zeroes(c_int);
pub var ctors_done: c_int = @import("std").mem.zeroes(c_int);

pub fn abort() noreturn {
    std.os.abort();
}
pub fn exit(err: c_int) noreturn {
    std.os.exit(@intCast(u8, err));
}
pub fn find_base_from_seq_num(arg_cd: [*c]Class_Descriptor, arg_seq: c_int) callconv(.C) [*c]Base_Class {
    var cd = arg_cd;
    _ = @TypeOf(cd);
    var seq = arg_seq;
    var b: [*c]Base_Class = cur_cd.*.bases;
    if (b != null) {
        while (b.*.type != null) : (b += 1) if (b.*.init_seq == seq) return b;
    }
    return null;
}
pub fn satisfies_alternate_matches(arg_expected: VTBL_ENTRY, arg_actual: VTBL_ENTRY, arg_cd: [*c]Class_Descriptor, arg_t: c_int) callconv(.C) c_int {
    var expected = arg_expected;
    var actual = arg_actual;
    var cd = arg_cd;
    var t = arg_t;
    _ = @TypeOf(t);
    var alt_tbl: [*c]VTBL_ENTRY = cd.*.alt_thunk_names;
    var i: c_int = 0;
    var state: c_int = 0;
    if (!(alt_tbl != null)) return 0;
    while (true) {
        var v: VTBL_ENTRY = (blk: {
            const tmp = i;
            if (tmp >= 0) break :blk alt_tbl + @intCast(usize, tmp) else break :blk alt_tbl - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
        }).*;
        while (true) {
            switch (state) {
                @as(c_int, 0) => {
                    if (v == expected) {
                        state = 1;
                    } else if ((v == actual) or (v == @bitCast(VTBL_ENTRY, @as(c_long, @as(c_int, 1))))) return 0 else {
                        state = 2;
                    }
                    break;
                },
                @as(c_int, 1) => {
                    if (v == actual) {
                        return 1;
                    } else if ((v == @bitCast(VTBL_ENTRY, @as(c_long, @as(c_int, 1)))) or (v == expected)) {
                        return 1;
                    } else {
                        state = 1;
                    }
                    break;
                },
                @as(c_int, 2) => {
                    state = if (v == @bitCast(VTBL_ENTRY, @as(c_long, @as(c_int, 1)))) @as(c_int, 0) else @as(c_int, 2);
                },
                else => {},
            }
            break;
        }
        i += 1;
    }
    return 0;
}
pub fn check_vtt_tbl(arg_cd: [*c]Class_Descriptor, arg_expected: [*c]VTT_ENTRY, arg_actual: [*c][*c]VTBL_ENTRY, arg_name: [*c]u8, arg_size: c_int) callconv(.C) void {
    _ = arg_cd;
    _ = arg_expected;
    _ = arg_actual;
    _ = arg_name;
    _ = arg_size;
    return;
}
pub fn check_vftbl(arg_cd: [*c]Class_Descriptor, arg_expected: ?*anyopaque, arg_actual: ?*anyopaque, arg_name: [*c]u8, arg_size: c_int) callconv(.C) void {
    var cd = arg_cd;
    var expected = arg_expected;
    var actual = arg_actual;
    var name = arg_name;
    var size = arg_size;
    var i: c_int = undefined;
    var n_mismatches: c_int = 0;
    n_tests += 1;
    if (verbose > @as(c_int, 1)) {
        _ = printf("check_vftbl %s %s %p %p %d\n", cd.*.name, name, expected, actual, size);
    }
    if (memcmp(expected, actual, @sizeOf(VTBL_ENTRY) *% @bitCast(c_ulong, @as(c_long, size))) != 0) {
        var pexp: [*c]?*anyopaque = @ptrCast([*c]?*anyopaque, @alignCast(@import("std").meta.alignment([*c]?*anyopaque), expected));
        var pact: [*c]?*anyopaque = @ptrCast([*c]?*anyopaque, @alignCast(@import("std").meta.alignment([*c]?*anyopaque), actual));
        {
            i = 0;
            while (i < size) : (i += 1) {
                if (((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk pexp + @intCast(usize, tmp) else break :blk pexp - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
                }).* != (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk pact + @intCast(usize, tmp) else break :blk pact - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
                }).*) and !(satisfies_alternate_matches(@intCast(VTBL_ENTRY, @ptrToInt((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk pexp + @intCast(usize, tmp) else break :blk pexp - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
                }).*)), @intCast(VTBL_ENTRY, @ptrToInt((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk pact + @intCast(usize, tmp) else break :blk pact - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
                }).*)), cd, -i) != 0)) {
                    const erb1 = struct {
                        var static: [10240]u8 = @import("std").mem.zeroes([10240]u8);
                    };
                    _ = @TypeOf(erb1);
                    const erb2 = struct {
                        var static: [10240]u8 = @import("std").mem.zeroes([10240]u8);
                    };
                    _ = @TypeOf(erb2);
                    if ((blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk pact + @intCast(usize, tmp) else break :blk pact - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
                    }).* == @intToPtr(?*anyopaque, @as(c_int, 0))) {
                        continue;
                    }
                    if (n_mismatches == @as(c_int, 0)) {
                        _ = printf("ERROR: Expected contents of %s::vtbl, for class %s do not match.\n", name, cd.*.name);
                        n_errors += 1;
                        n_mismatches += 1;
                    }
                    _ = printf("  %d: EXPECTED:%p%s ACTUAL:%p%s\n", i, (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk pexp + @intCast(usize, tmp) else break :blk pexp - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
                    }).*, "", (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk pact + @intCast(usize, tmp) else break :blk pact - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
                    }).*, "");
                }
            }
        }
    }
}
pub fn any_virtual_steps_in_derivation(arg_cd: [*c]Class_Descriptor, arg_b: [*c]Base_Class) callconv(.C) [*c]Base_Class {
    var cd = arg_cd;
    var b = arg_b;
    if (!((((cd.*.bases != null) and (b >= cd.*.bases)) and (@divExact(@bitCast(c_long, @ptrToInt(b) -% @ptrToInt(cd.*.bases)), @sizeOf(Base_Class)) < @bitCast(c_long, @as(c_long, cd.*.n_bases)))) and ((cd.*.bases + @bitCast(usize, @intCast(isize, @divExact(@bitCast(c_long, @ptrToInt(b) -% @ptrToInt(cd.*.bases)), @sizeOf(Base_Class))))) == b))) {
        std.debug.panic("Wrong base in any_virtual...", .{});
    }
    while (true) {
        if (b.*.is_virtual != 0) return b;
        if (b.*.parent_idx < @as(c_int, 0)) return null;
        b = cd.*.bases + @bitCast(usize, @intCast(isize, b.*.parent_idx));
    }
    return null;
}
pub fn check_full_object_vtbls(arg_var_ptr: ?*anyopaque, arg_cd: [*c]Class_Descriptor, arg_check_virtual_bases: c_int) callconv(.C) void {
    var var_ptr = arg_var_ptr;
    var cd = arg_cd;
    var check_virtual_bases = arg_check_virtual_bases;
    var b: [*c]Base_Class = undefined;
    if (cd.*.expected_vtbl_contents != null) {
        check_vftbl(cd, @ptrCast(?*anyopaque, cd.*.expected_vtbl_contents), @ptrCast(?*anyopaque, cd.*.vtbl.@"var"), cd.*.vtbl.name, cd.*.vtbl_size);
        if ((check_virtual_bases != 0) or !(cd.*.has_virtual_bases != 0)) {
            if (@ptrCast([*c][*c]VTBL_ENTRY, @alignCast(@import("std").meta.alignment([*c][*c]VTBL_ENTRY), var_ptr)).* != (cd.*.vtbl.@"var" + @bitCast(usize, @intCast(isize, cd.*.vtbl_ofst)))) {
                _ = printf("ERROR: Object of class %s::%s does not point to expected spot in vtbl\n", cur_cd.*.name, cd.*.name);
                n_errors += 1;
            }
        }
    }
    if (cd.*.bases != null) {
        b = cd.*.bases;
        while (b.*.type != null) : (b += 1) {
            if (((b.*.ofst != @bitCast(c_long, @as(c_long, @as(c_int, 0)))) and (b.*.vtbl_ofst >= @bitCast(c_long, @as(c_long, @as(c_int, 0))))) and ((check_virtual_bases != 0) or !(any_virtual_steps_in_derivation(cd, b) != null))) {
                if (@ptrCast([*c][*c]VTBL_ENTRY, @alignCast(@import("std").meta.alignment([*c][*c]VTBL_ENTRY), @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), var_ptr)) + @bitCast(usize, @intCast(isize, b.*.ofst)))).* != (cd.*.vtbl.@"var" + @bitCast(usize, @intCast(isize, b.*.vtbl_ofst + b.*.num_negative_vtbl_entries)))) {
                    _ = printf("ERROR: base class %s of class %s::%s does not have correct vtbl ", b.*.type.*.name, cur_cd.*.name, cd.*.name);
                    _ = printf("0x%x != (0x%x + %d + %d) = 0x%x\n", @intCast(c_int, @ptrToInt(@ptrCast([*c][*c]VTBL_ENTRY, @alignCast(@import("std").meta.alignment([*c][*c]VTBL_ENTRY), @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), var_ptr)) + @bitCast(usize, @intCast(isize, b.*.ofst)))).*)), @intCast(c_int, @ptrToInt(cd.*.vtbl.@"var")), @bitCast(c_int, @truncate(c_int, b.*.num_negative_vtbl_entries)), @bitCast(c_int, @truncate(c_int, b.*.vtbl_ofst)), @intCast(c_int, @ptrToInt(cd.*.vtbl.@"var" + @bitCast(usize, @intCast(isize, b.*.vtbl_ofst + b.*.num_negative_vtbl_entries)))));
                    n_errors += 1;
                }
            }
        }
    }
}
pub fn find_corresp_base(arg_der: [*c]Class_Descriptor, arg_b: [*c]Base_Class, arg_d_in_b: [*c]Base_Class) callconv(.C) [*c]Base_Class {
    var der = arg_der;
    var b = arg_b;
    var d_in_b = arg_d_in_b;
    var t: [*c]Base_Class = undefined;
    var p: [*c]Base_Class = undefined;
    var q: [*c]Base_Class = undefined;
    if (d_in_b.*.is_virtual != 0) {
        {
            t = der.*.bases;
            while (t < (der.*.bases + @bitCast(usize, @intCast(isize, der.*.n_bases)))) : (t += 1) if ((@bitCast(c_int, @as(c_uint, t.*.is_virtual)) != 0) and (t.*.type == d_in_b.*.type)) return t;
        }
        if (!(@as(c_int, 0) != 0)) {
            std.debug.panic("Count not find virtual base class {s} in {s}", .{ d_in_b.*.type.*.name, der.*.name });
        }
    }
    if (!((blk: {
        const tmp = any_virtual_steps_in_derivation(b.*.type, d_in_b);
        p = tmp;
        break :blk tmp;
    }) != null)) {
        {
            t = der.*.bases;
            while (t < (der.*.bases + @bitCast(usize, @intCast(isize, der.*.n_bases)))) : (t += 1) if ((!(t.*.is_virtual != 0) and (t.*.ofst == (b.*.ofst + d_in_b.*.ofst))) and (t.*.type == d_in_b.*.type)) return t;
        }
        if (!(@as(c_int, 0) != 0)) {
            std.debug.panic("Count not find non virtual base class {s} in {s}", .{ d_in_b.*.type.*.name, der.*.name });
        }
    }
    q = find_corresp_base(der, b, p);
    {
        t = der.*.bases;
        while (t < (der.*.bases + @bitCast(usize, @intCast(isize, der.*.n_bases)))) : (t += 1) if ((!(t.*.is_virtual != 0) and (t.*.ofst == ((q.*.ofst + d_in_b.*.ofst) - p.*.ofst))) and (t.*.type == d_in_b.*.type)) return t;
    }
    if (!(t < (der.*.bases + @bitCast(usize, @intCast(isize, der.*.n_bases))))) {
        std.debug.panic("Could not find_corresp_base({s}, {s}, {s})", .{ der.*.name, b.*.type.*.name, d_in_b.*.type.*.name });
    }
    return null;
}
pub fn mystrcat(arg_a: [*c]u8, arg_b: [*c]u8) callconv(.C) void {
    var a = arg_a;
    var b = arg_b;
    var i: c_int = undefined;
    var j: c_int = undefined;
    {
        j = 0;
        while ((blk: {
            const tmp = j;
            if (tmp >= 0) break :blk a + @intCast(usize, tmp) else break :blk a - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
        }).* != 0) : (j += 1) {}
    }
    {
        i = 0;
        while ((blk: {
            const tmp = i;
            if (tmp >= 0) break :blk b + @intCast(usize, tmp) else break :blk b - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
        }).* != 0) : (i += 1) {
            (blk: {
                const tmp = blk_1: {
                    const ref = &j;
                    const tmp_2 = ref.*;
                    ref.* += 1;
                    break :blk_1 tmp_2;
                };
                if (tmp >= 0) break :blk a + @intCast(usize, tmp) else break :blk a - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
            }).* = (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk b + @intCast(usize, tmp) else break :blk b - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
            }).*;
        }
    }
    (blk: {
        const tmp = j;
        if (tmp >= 0) break :blk a + @intCast(usize, tmp) else break :blk a - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
    }).* = 0;
}
pub export fn check_base(arg_init_seq: c_int, arg_n: [*c]const u8, arg_this_p: ?*anyopaque, arg_filename: [*c]const u8, arg_linenum: c_int) void {
    var init_seq = arg_init_seq;
    var n = arg_n;
    var this_p = arg_this_p;
    var filename = arg_filename;
    var linenum = arg_linenum;
    var b: [*c]Base_Class = undefined;
    if (verbose > @as(c_int, 1)) {
        _ = printf("check_%ctor %s %p-%p from %s:%d cur_cd=%s init_seq=%d cur_init_seq=%d\n", if (ctors_done != 0) @as(c_int, 'd') else @as(c_int, 'c'), n, this_p, full_object_address, trim_fn(filename), linenum, cur_cd.*.name, init_seq, cur_init_seq);
    }
    if ((init_seq == @as(c_int, 1)) and !(full_object_address != null)) {
        b = find_base_from_seq_num(cur_cd, @as(c_int, 1));
        if (!(b != null)) {
            std.debug.panic("first-init base not found", .{});
        }
        full_object_address = @ptrCast(?*anyopaque, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), this_p)) - @bitCast(usize, @intCast(isize, b.*.ofst)));
    } else {
        b = find_base_from_seq_num(cur_cd, init_seq);
        if (!(b != null)) {
            std.debug.panic("init base {s} {d} not found", .{ cur_cd.*.name, init_seq });
        }
    }
    if (strcmp(b.*.type.*.name, n) != 0) {
        _ = printf("Wrong ctor/dtor being called \n");
        n_errors += 1;
        return;
    }
    if (full_object_address != @ptrCast(?*anyopaque, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), this_p)) - @bitCast(usize, @intCast(isize, b.*.ofst)))) {
        _ = printf("ERROR: %ctor of %s::%s being called with wrong offset 0x%p != 0x%p+%d = 0x%p\n", if (ctors_done != 0) @as(c_int, 'd') else @as(c_int, 'c'), cur_cd.*.name, b.*.type.*.name, this_p, full_object_address, @bitCast(c_int, @truncate(c_int, b.*.ofst)), @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), full_object_address)) + @bitCast(usize, @intCast(isize, b.*.ofst)));
        n_errors += 1;
        return;
    }
    if (!(cur_cd.*.vtbl.@"var" != null)) return;
    if (!(b.*.type.*.has_virtual_bases != 0)) {
        check_full_object_vtbls(this_p, b.*.type, @as(c_int, 1));
    } else {
        var pointed_tbl: [*c]VTBL_ENTRY = @ptrCast([*c][*c]VTBL_ENTRY, @alignCast(@import("std").meta.alignment([*c][*c]VTBL_ENTRY), this_p)).*;
        var vttp: [*c]VTT_ENTRY = undefined;
        var d_in_b: [*c]Base_Class = undefined;
        var d_in_cur_cd: [*c]Base_Class = undefined;
        var bc: [*c]Class_Descriptor = b.*.type;
        if (!(b.*.base_subarray_index_in_vtt > @bitCast(c_uint, @as(c_int, 0)))) {
            std.debug.panic("{s}::{s}->type_subarray_index_in_vtt must be >0", .{ cur_cd.*.name, bc.*.name });
        }
        vttp = cur_cd.*.expected_vtt_contents + (b.*.base_subarray_index_in_vtt -% @bitCast(c_uint, @as(c_int, 1)));
        check_vftbl(cur_cd, @ptrCast(?*anyopaque, vttp.*.vtbl - @bitCast(usize, @intCast(isize, @bitCast(c_int, @as(c_uint, vttp.*.ofst))))), @ptrCast(?*anyopaque, pointed_tbl - @bitCast(usize, @intCast(isize, @bitCast(c_int, @as(c_uint, vttp.*.ofst))))), b.*.type.*.name, @bitCast(c_int, @as(c_uint, vttp.*.size)));
        {
            d_in_b = bc.*.bases;
            while (d_in_b < (bc.*.bases + @bitCast(usize, @intCast(isize, bc.*.n_bases)))) : (d_in_b += 1) {
                var buf: [10240]u8 = undefined;
                if (!(d_in_b.*.type.*.vtbl.@"var" != null)) continue;
                if (d_in_b.*.index_in_vtt == @bitCast(c_uint, @as(c_int, 0))) continue;
                d_in_cur_cd = find_corresp_base(cur_cd, b, d_in_b);
                if (d_in_b.*.ofst == @bitCast(c_long, @as(c_long, @as(c_int, 0)))) continue;
                vttp = (cur_cd.*.expected_vtt_contents + (b.*.base_subarray_index_in_vtt -% @bitCast(c_uint, @as(c_int, 1)))) + (d_in_b.*.index_in_vtt -% @bitCast(c_uint, @as(c_int, 1)));
                pointed_tbl = @intToPtr([*c][*c]VTBL_ENTRY, @intCast(usize, @ptrToInt(full_object_address)) + @intCast(usize, d_in_cur_cd.*.ofst)).*;
                buf[@intCast(c_uint, @as(c_int, 0))] = 0;
                mystrcat(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &buf)), d_in_b.*.type.*.name);
                mystrcat(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &buf)), @intToPtr([*c]u8, @ptrToInt("-during-")));
                mystrcat(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &buf)), bc.*.name);
                mystrcat(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &buf)), @intToPtr([*c]u8, @ptrToInt("()")));
                check_vftbl(cur_cd, @ptrCast(?*anyopaque, vttp.*.vtbl - @bitCast(usize, @intCast(isize, @bitCast(c_int, @as(c_uint, vttp.*.ofst))))), @ptrCast(?*anyopaque, pointed_tbl - @bitCast(usize, @intCast(isize, @bitCast(c_int, @as(c_uint, vttp.*.ofst))))), @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &buf)), @bitCast(c_int, @as(c_uint, vttp.*.size)));
            }
        }
    }
}
pub fn find_base_class(arg_ofst: ptrdiff_t, arg_cd: [*c]Class_Descriptor, arg_name: [*c]const u8) callconv(.C) [*c]Base_Class {
    var ofst = arg_ofst;
    var cd = arg_cd;
    var name = arg_name;
    var bc: [*c]Base_Class = cd.*.bases;
    if (bc != null) {
        while (bc < (cd.*.bases + @bitCast(usize, @intCast(isize, cd.*.n_bases)))) : (bc += 1) if ((bc.*.ofst == ofst) and !(strcmp(bc.*.type.*.name, name) != 0)) return bc;
    }
    return null;
}
pub fn f_isLittleEndian() callconv(.C) c_int {
    var i: c_ushort = @bitCast(c_ushort, @truncate(c_short, @as(c_int, 65280)));
    var i_ptr: [*c]u8 = @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &i));
    return @boolToInt(!(i_ptr.* != 0));
}
pub var isLittleEndian: c_int = @import("std").mem.zeroes(c_int);
pub var LITTLE_ENDIAN_MASKS: [9]u8 = [9]u8{
    0,
    1,
    3,
    7,
    15,
    31,
    63,
    127,
    255,
};
pub var BIG_ENDIAN_MASKS: [9]u8 = [9]u8{
    0,
    128,
    192,
    224,
    240,
    248,
    252,
    254,
    255,
};
pub fn readValue(arg_iter: [*c]u8, arg_bit_offset: c_uint, arg_size: c_int) callconv(.C) c_longlong {
    var iter = arg_iter;
    var bit_offset = arg_bit_offset;
    var size = arg_size;
    var is_little_endian: c_int = isLittleEndian;
    var retval: c_longlong = 0;
    var mask: u8 = 0;
    var adjustment_offset: u8 = 0;
    if (!(iter != null)) return retval;
    if (bit_offset != 0) {
        var bits_to_read: u8 = @bitCast(u8, @truncate(u8, @bitCast(c_uint, @as(c_int, 8)) -% bit_offset));
        if (size < @bitCast(c_int, @as(c_uint, bits_to_read))) {
            bits_to_read = @bitCast(u8, @truncate(i8, size));
        }
        if (is_little_endian != 0) {
            mask = @bitCast(u8, @truncate(i8, @bitCast(c_int, @as(c_uint, LITTLE_ENDIAN_MASKS[bits_to_read])) << @intCast(@import("std").math.Log2Int(c_int), bit_offset)));
            retval = @bitCast(c_longlong, @as(c_longlong, (@bitCast(c_int, @as(c_uint, iter.*)) & @bitCast(c_int, @as(c_uint, mask))) >> @intCast(@import("std").math.Log2Int(c_int), bit_offset)));
            adjustment_offset +%= @bitCast(u8, @truncate(i8, @bitCast(c_int, @as(c_uint, bits_to_read))));
        } else {
            mask = @bitCast(u8, @truncate(i8, @bitCast(c_int, @as(c_uint, BIG_ENDIAN_MASKS[bits_to_read])) >> @intCast(@import("std").math.Log2Int(c_int), bit_offset)));
            retval = @bitCast(c_longlong, @as(c_longlong, @bitCast(c_int, @as(c_uint, iter.*)) & @bitCast(c_int, @as(c_uint, mask))));
            if (size == @bitCast(c_int, @as(c_uint, bits_to_read))) {
                retval >>= @intCast(@import("std").math.Log2Int(c_uint), @bitCast(c_uint, @as(c_int, 8)) -% (@bitCast(c_uint, @as(c_uint, bits_to_read)) +% bit_offset));
                retval &= @bitCast(c_longlong, @as(c_longlong, ~@bitCast(c_int, @as(c_uint, BIG_ENDIAN_MASKS[@intCast(c_uint, @as(c_int, 8) - @bitCast(c_int, @as(c_uint, bits_to_read)))]))));
            }
        }
        size -= @bitCast(c_int, @as(c_uint, bits_to_read));
        iter += 1;
    }
    while (size >= @as(c_int, 8)) {
        if (is_little_endian != 0) {
            retval |= @bitCast(c_longlong, @as(c_longlong, @bitCast(c_int, @as(c_uint, iter.*)) & @as(c_int, 255))) << @intCast(@import("std").math.Log2Int(c_longlong), @bitCast(c_int, @as(c_uint, adjustment_offset)));
            adjustment_offset +%= @bitCast(u8, @truncate(i8, @as(c_int, 8)));
        } else {
            retval <<= @intCast(@import("std").math.Log2Int(c_int), @as(c_int, 8));
            retval |= @bitCast(c_longlong, @as(c_longlong, @bitCast(c_int, @as(c_uint, iter.*)) & @as(c_int, 255)));
        }
        size -= @as(c_int, 8);
        iter += 1;
    }
    if (size != 0) {
        if (is_little_endian != 0) {
            mask = LITTLE_ENDIAN_MASKS[@intCast(c_uint, size)];
            retval |= @bitCast(c_longlong, @as(c_longlong, @bitCast(c_int, @as(c_uint, iter.*)) & @bitCast(c_int, @as(c_uint, mask)))) << @intCast(@import("std").math.Log2Int(c_longlong), @bitCast(c_int, @as(c_uint, adjustment_offset)));
            adjustment_offset +%= @bitCast(u8, @truncate(i8, size));
        } else {
            mask = BIG_ENDIAN_MASKS[@intCast(c_uint, size)];
            retval <<= @intCast(@import("std").math.Log2Int(c_int), size);
            retval |= @bitCast(c_longlong, @as(c_longlong, (@bitCast(c_int, @as(c_uint, iter.*)) & @bitCast(c_int, @as(c_uint, mask))) >> @intCast(@import("std").math.Log2Int(c_int), @as(c_int, 8) - size)));
        }
        size = 0;
        iter = null;
    }
    return retval;
}
pub export fn is_bitfield_value_correct(arg_obj_ptr: ?*anyopaque, arg_byte_offset: c_uint, arg_bit_offset: c_uint, arg_size: c_uint, arg_expected_value: c_longlong) c_int {
    var obj_ptr = arg_obj_ptr;
    var byte_offset = arg_byte_offset;
    var bit_offset = arg_bit_offset;
    var size = arg_size;
    var expected_value = arg_expected_value;
    var read_value: c_longlong = readValue(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), obj_ptr)) + byte_offset, bit_offset, @bitCast(c_int, size));
    var expected_mask: c_ulonglong = 0;
    var i: c_ulonglong = undefined;
    expected_mask = 0;
    {
        i = 0;
        while (i < @bitCast(c_ulonglong, @as(c_ulonglong, size))) : (i +%= @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 8)))) {
            expected_mask <<= @intCast(@import("std").math.Log2Int(c_int), @as(c_int, 8));
            expected_mask |= @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 255)));
        }
    }
    if ((size % @bitCast(c_uint, @as(c_int, 8))) != 0) {
        expected_mask <<= @intCast(@import("std").math.Log2Int(c_uint), size % @bitCast(c_uint, @as(c_int, 8)));
        expected_mask |= @bitCast(c_ulonglong, @as(c_ulonglong, LITTLE_ENDIAN_MASKS[size % @bitCast(c_uint, @as(c_int, 8))]));
    }
    expected_value &= @bitCast(c_longlong, expected_mask);
    read_value &= @bitCast(c_longlong, expected_mask);
    if (read_value != expected_value) return 0;
    return 1;
}
pub export var atcm_head: [*c]ATCM = @import("std").mem.zeroes([*c]ATCM);
pub extern fn malloc(c_ulong) ?*anyopaque;
pub export fn main(arg_argc: c_int, arg_argv: [*c][*c]u8) c_int {
    var argc = arg_argc;
    var argv = arg_argv;
    var i: c_int = undefined;
    var run_full_test: c_int = 1;
    var p: [*c]ATCM = undefined;
    isLittleEndian = f_isLittleEndian();
    {
        i = 1;
        while (i < argc) : (i += 1) {
            var a: [*c]u8 = (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk argv + @intCast(usize, tmp) else break :blk argv - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
            }).*;
            if ((@bitCast(c_int, @as(c_uint, a[@intCast(c_uint, @as(c_int, 0))])) == @as(c_int, '-')) and (@bitCast(c_int, @as(c_uint, a[@intCast(c_uint, @as(c_int, 1))])) == @as(c_int, 'v'))) {
                verbose += 1;
                continue;
            }
            {
                p = atcm_head;
                while (p != null) : (p = p.*.next) if (strcmp(a, p.*.name) == @as(c_int, 0)) break;
            }
            if (!(p != null)) {
                _ = printf("Unknown arg '%s'\n", a);
                exit(@as(c_int, 1));
            }
            p.*.func.?();
            run_full_test = 0;
        }
    }
    if (run_full_test != 0) {
        var t: [*c]ATCM = undefined;
        var h: [*c]ATCM = null;
        while (atcm_head != null) {
            t = atcm_head;
            atcm_head = t.*.next;
            t.*.next = h;
            h = t;
        }
        while (h != null) {
            h.*.func.?();
            h = h.*.next;
        }
    }
    _ = printf("TEST %s. %d classes. %d tests. %d failures.\n", if ((n_errors != 0) or !(n_tests != 0)) "FAILED" else "PASSED", num_classes, n_tests, n_errors);
    test_finished = 1;
    cur_cd = null;
    return @boolToInt(n_errors != @as(c_int, 0));
}
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):80:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):86:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):109:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):113:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):119:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):122:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):183:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):205:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):213:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):342:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):343:9
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /home/guw/github/zig-bootstrap/out/zig-x86_64-linux-gnu-native/lib/zig/include/stddef.h:104:9
pub const vfunc_called = @compileError("unable to translate C expr: unexpected token 'Eof'"); // ./testsuite.h:17:9
pub const STRUCT_IF_C = @compileError("unable to translate C expr: expected 'Identifier' instead got 'Eof'"); // ./testsuite.h:24:9
pub const NSPAIR = @compileError("unable to translate C expr: unexpected token '{'"); // ./testsuite.h:56:9
pub const NSPAIRA = @compileError("unable to translate C expr: unexpected token '{'"); // ./testsuite.h:57:9
pub const note_ctor = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // ./testsuite.h:163:9
pub const note_dtor = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // ./testsuite.h:164:9
pub const check2 = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // ./testsuite.h:169:9
pub const check_field_offset = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // ./testsuite.h:180:9
pub const check_base_class_offset = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // ./testsuite.h:183:9
pub const AMB_check_base_class_offset = @compileError("unable to translate C expr: unexpected token 'Eof'"); // ./testsuite.h:185:9
pub const set_bf_and_test = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // ./testsuite.h:187:9
pub const ARRANGE_TO_CALL_ME = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // ./testsuite.h:216:9
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:186:9
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /usr/include/sys/cdefs.h:45:10
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/sys/cdefs.h:55:10
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:82:11
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/sys/cdefs.h:124:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /usr/include/sys/cdefs.h:125:9
pub const __glibc_unsigned_or_positive = @compileError("unable to translate macro: undefined identifier `__typeof`"); // /usr/include/sys/cdefs.h:160:9
pub const __glibc_fortify = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /usr/include/sys/cdefs.h:185:9
pub const __glibc_fortify_n = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /usr/include/sys/cdefs.h:195:9
pub const __warnattr = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:207:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/sys/cdefs.h:208:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/sys/cdefs.h:216:10
pub const __REDIRECT = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:247:10
pub const __REDIRECT_NTH = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:254:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:256:11
pub const __ASMNAME2 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /usr/include/sys/cdefs.h:260:10
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:281:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:292:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:298:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:308:10
pub const __attribute_const__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:315:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:321:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:330:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:331:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:339:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:349:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:362:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:372:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:384:11
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:397:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:406:10
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/sys/cdefs.h:424:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:433:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/sys/cdefs.h:451:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:452:11
pub const __restrict_arr = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /usr/include/sys/cdefs.h:495:10
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:544:10
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:620:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:621:10
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/sys/cdefs.h:635:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/sys/cdefs.h:636:10
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:681:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:682:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:683:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:693:10
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:700:10
// pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /home/guw/github/zig-bootstrap/out/zig-x86_64-linux-gnu-native/lib/zig/include/stdarg.h:17:9
// pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /home/guw/github/zig-bootstrap/out/zig-x86_64-linux-gnu-native/lib/zig/include/stdarg.h:18:9
// pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /home/guw/github/zig-bootstrap/out/zig-x86_64-linux-gnu-native/lib/zig/include/stdarg.h:19:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/guw/github/zig-bootstrap/out/zig-x86_64-linux-gnu-native/lib/zig/include/stdarg.h:24:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/guw/github/zig-bootstrap/out/zig-x86_64-linux-gnu-native/lib/zig/include/stdarg.h:27:9
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /usr/include/bits/types.h:137:10
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/bits/typesizes.h:73:9
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/bits/types/struct_FILE.h:106:9
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:178:13
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`"); // /usr/include/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/include/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`"); // /usr/include/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`"); // /usr/include/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`"); // /usr/include/bits/floatn-common.h:292:13
pub const Is_True = @compileError("unable to translate C expr: unexpected token 'if'"); // testsuite.c:106:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 15);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 0);
pub const __clang_version__ = "15.0.0 (https://github.com/ziglang/zig-bootstrap 92a6ea2be5ebe74ff82a4153de718bb9c1ea68e8)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 15.0.0 (https://github.com/ziglang/zig-bootstrap 92a6ea2be5ebe74ff82a4153de718bb9c1ea68e8)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @as(c_int, 128);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __k8 = @as(c_int, 1);
pub const __k8__ = @as(c_int, 1);
pub const __tune_k8__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __WAITPKG__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __GLIBC_MINOR__ = @as(c_int, 35);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const __testsuite_dot_h = "";
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_STDDEF_H_misc = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub inline fn ABI_SELECTOR(a: anytype, b: anytype, c: anytype, d: anytype, e: anytype) @TypeOf(a) {
    _ = @TypeOf(b);
    _ = @TypeOf(c);
    _ = @TypeOf(d);
    _ = @TypeOf(e);
    return a;
}
pub inline fn ABISELECT(a: anytype, b: anytype) @TypeOf(a) {
    _ = @TypeOf(b);
    return a;
}
pub inline fn LPSELECT(a: anytype, b: anytype) @TypeOf(ABISELECT(a, b)) {
    return ABISELECT(a, b);
}
pub const NO_STATIC_CHECKS = @as(c_int, 1);
pub const ALT_NAMES_TERMINATOR = @import("std").zig.c_translation.cast(VTBL_ENTRY, @as(c_int, 1));
pub const __tsi64 = c_longlong;
pub const __tsu64 = c_ulonglong;
pub const __tsulong = c_ulong;
pub inline fn SEXT_BFV(bs: anytype, v: anytype) @TypeOf(v | (if (v & (@as(c_ulonglong, 1) << (bs - @as(c_int, 1)))) ~(@as(c_ulonglong, 1) << bs) else @as(c_int, 0))) {
    return v | (if (v & (@as(c_ulonglong, 1) << (bs - @as(c_int, 1)))) ~(@as(c_ulonglong, 1) << bs) else @as(c_int, 0));
}
pub inline fn find_symname(a: anytype, b: anytype) @TypeOf("") {
    _ = @TypeOf(a);
    _ = @TypeOf(b);
    return "";
}
pub const _STDIO_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    return __has_builtin(name);
}
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub inline fn __P(args: anytype) @TypeOf(args) {
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    return args;
}
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    return __bos(__o);
}
pub inline fn __glibc_safe_len_cond(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(__l <= (__osz / __s)) {
    return __l <= (__osz / __s);
}
pub inline fn __glibc_safe_or_unknown_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__builtin_constant_p(__osz) != 0) and (__osz == (__SIZE_TYPE__ - @as(c_int, 1)))) or (((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0))) {
    return ((__builtin_constant_p(__osz) != 0) and (__osz == (__SIZE_TYPE__ - @as(c_int, 1)))) or (((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0));
}
pub inline fn __glibc_unsafe_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub inline fn __ASMNAME(cname: anytype) @TypeOf(__ASMNAME2(__USER_LABEL_PREFIX__, cname)) {
    return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
}
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    return __attribute_nonnull__(params);
}
pub const __wur = "";
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = @TypeOf(alias);
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = @TypeOf(alias);
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    return name ++ proto ++ __THROW;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __attr_dealloc_free = "";
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const __need___va_list = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
const std = @import("std");
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    return __builtin_nanf(x);
}
pub const _STRING_H = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const TRUE = @as(c_int, 1);
pub const FALSE = @as(c_int, 0);
pub const _base_class = struct__base_class;
pub const _atcm = struct__atcm;
pub const __va_list_tag = struct___va_list_tag;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const __locale_data = struct___locale_data;
pub const __locale_struct = struct___locale_struct;
