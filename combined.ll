; ModuleID = 'header.cpp'
source_filename = "header.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashtable_t = type { i32, i32, %struct.hash_elem_t** }
%struct.hash_elem_t = type { %struct.hash_elem_t*, i8*, [0 x i8] }
%struct.hash_elem_it = type { %struct.hashtable_t*, i32, %struct.hash_elem_t* }
%struct.hash_struct = type { i64, i64, %struct.UT_hash_handle }
%struct.UT_hash_handle = type { %struct.UT_hash_table*, i8*, i8*, %struct.UT_hash_handle*, %struct.UT_hash_handle*, i8*, i32, i32 }
%struct.UT_hash_table = type { %struct.UT_hash_bucket*, i32, i32, i32, %struct.UT_hash_handle*, i64, i32, i32, i32, i32, i32 }
%struct.UT_hash_bucket = type { %struct.UT_hash_handle*, i32, i32 }

@err_ptr = global i8 0, align 1
@HT_ERROR = global i8* @err_ptr, align 8
@allocated = global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"library run-time error: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Memory use exceeded 256 MB\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Integer Overflow\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Expected value: null (in expect_args0). Prim cannot take arguments.\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"Expected cons value (in expect_args1). Prim applied on an empty argument list.\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Expected null value (in expect_args1). Prim can only take 1 argument.\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Expected a cons value. (expect_cons)\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Expected a vector or special value. (expect_other)\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Memory use exeeded 256 MB\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"#<procedure>\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"(print.. v); unrecognized value %lu\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"'()\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"'(\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"'%s\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"#hash(\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"(print v); unrecognized value %lu\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"first argument to make-vector must be an integer\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"prim applied on more than 2 arguments.\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"second argument to vector-ref must be an integer\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"first argument to vector-ref must be a vector\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"vector-ref not given a properly formed vector\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"vector-ref out of bounds\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"first argument to vector-set must be a vector\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"second argument to vector-set must be an integer\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"vector-set not given a properly formed vector\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"vector-set out of bounds\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"first argument to hash-ref must be a hash\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"Hash-ref error: key not found\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"first argument to hash-set! must be a hash\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"(prim + a b); a is not an integer\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"(prim + a b); b is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Integer Underflow\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"Tried to apply + on non list value.\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"(prim - a b); b is not an integer\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"Tried to apply - on non list value.\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"(prim * a b); a is not an integer\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"(prim * a b); b is not an integer\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"Tried to apply * on non list value.\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"(prim / a b); a is not an integer\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"(prim / a b); b is not an integer\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"Divide by zero error\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"(prim = a b); a is not an integer\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"(prim = a b); b is not an integer\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"(prim < a b); a is not an integer\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"(prim < a b); b is not an integer\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"(prim <= a b); a is not an integer\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"(prim <= a b); b is not an integer\00", align 1

; Function Attrs: nounwind uwtable
define %struct.hashtable_t* @_Z9ht_createj(i32) #0 {
  %2 = alloca %struct.hashtable_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hashtable_t*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call noalias i8* @malloc(i64 16) #8
  %7 = bitcast i8* %6 to %struct.hashtable_t*
  store %struct.hashtable_t* %7, %struct.hashtable_t** %4, align 8
  %8 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %9 = icmp ne %struct.hashtable_t* %8, null
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %1
  store %struct.hashtable_t* null, %struct.hashtable_t** %2, align 8
  br label %47

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = call noalias i8* @malloc(i64 %14) #8
  %16 = bitcast i8* %15 to %struct.hash_elem_t**
  %17 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %18 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %17, i32 0, i32 2
  store %struct.hash_elem_t** %16, %struct.hash_elem_t*** %18, align 8
  %19 = icmp eq %struct.hash_elem_t** %16, null
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %11
  %21 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %22 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %21, i32 0, i32 2
  %23 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %22, align 8
  %24 = bitcast %struct.hash_elem_t** %23 to i8*
  call void @free(i8* %24) #8
  store %struct.hashtable_t* null, %struct.hashtable_t** %2, align 8
  br label %47

; <label>:25:                                     ; preds = %11
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %28 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %30 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  store i32 0, i32* %5, align 4
  br label %31

; <label>:31:                                     ; preds = %42, %25
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %45

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %39 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %38, i32 0, i32 2
  %40 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %39, align 8
  %41 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %40, i64 %37
  store %struct.hash_elem_t* null, %struct.hash_elem_t** %41, align 8
  br label %42

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %31

; <label>:45:                                     ; preds = %31
  %46 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  store %struct.hashtable_t* %46, %struct.hashtable_t** %2, align 8
  br label %47

; <label>:47:                                     ; preds = %45, %20, %10
  %48 = load %struct.hashtable_t*, %struct.hashtable_t** %2, align 8
  ret %struct.hashtable_t* %48
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: uwtable
define i8* @_Z6ht_putP11hashtable_tPcPv(%struct.hashtable_t*, i8*, i8*) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hashtable_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hash_elem_t*, align 8
  %10 = alloca i8*, align 8
  store %struct.hashtable_t* %0, %struct.hashtable_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %3
  store i8* null, i8** %4, align 8
  br label %89

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @_ZL12ht_calc_hashPc(i8* %15)
  %17 = load %struct.hashtable_t*, %struct.hashtable_t** %5, align 8
  %18 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = urem i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = load %struct.hashtable_t*, %struct.hashtable_t** %5, align 8
  %24 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %23, i32 0, i32 2
  %25 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %24, align 8
  %26 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %25, i64 %22
  %27 = load %struct.hash_elem_t*, %struct.hash_elem_t** %26, align 8
  store %struct.hash_elem_t* %27, %struct.hash_elem_t** %9, align 8
  br label %28

; <label>:28:                                     ; preds = %46, %14
  %29 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %30 = icmp ne %struct.hash_elem_t* %29, null
  br i1 %30, label %31, label %50

; <label>:31:                                     ; preds = %28
  %32 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %33 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %32, i32 0, i32 2
  %34 = getelementptr inbounds [0 x i8], [0 x i8]* %33, i32 0, i32 0
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strcmp(i8* %34, i8* %35) #9
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

; <label>:38:                                     ; preds = %31
  %39 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %40 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %44 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %4, align 8
  br label %89

; <label>:46:                                     ; preds = %31
  %47 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %48 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %47, i32 0, i32 0
  %49 = load %struct.hash_elem_t*, %struct.hash_elem_t** %48, align 8
  store %struct.hash_elem_t* %49, %struct.hash_elem_t** %9, align 8
  br label %28

; <label>:50:                                     ; preds = %28
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strlen(i8* %51) #9
  %53 = add i64 16, %52
  %54 = add i64 %53, 1
  %55 = call noalias i8* @malloc(i64 %54) #8
  %56 = bitcast i8* %55 to %struct.hash_elem_t*
  store %struct.hash_elem_t* %56, %struct.hash_elem_t** %9, align 8
  %57 = icmp eq %struct.hash_elem_t* %56, null
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %50
  %59 = load i8*, i8** @HT_ERROR, align 8
  store i8* %59, i8** %4, align 8
  br label %89

; <label>:60:                                     ; preds = %50
  %61 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %62 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %61, i32 0, i32 2
  %63 = getelementptr inbounds [0 x i8], [0 x i8]* %62, i32 0, i32 0
  %64 = load i8*, i8** %6, align 8
  %65 = call i8* @strcpy(i8* %63, i8* %64) #8
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %68 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = load %struct.hashtable_t*, %struct.hashtable_t** %5, align 8
  %72 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %71, i32 0, i32 2
  %73 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %72, align 8
  %74 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %73, i64 %70
  %75 = load %struct.hash_elem_t*, %struct.hash_elem_t** %74, align 8
  %76 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %77 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %76, i32 0, i32 0
  store %struct.hash_elem_t* %75, %struct.hash_elem_t** %77, align 8
  %78 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = load %struct.hashtable_t*, %struct.hashtable_t** %5, align 8
  %82 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %81, i32 0, i32 2
  %83 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %82, align 8
  %84 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %83, i64 %80
  store %struct.hash_elem_t* %78, %struct.hash_elem_t** %84, align 8
  %85 = load %struct.hashtable_t*, %struct.hashtable_t** %5, align 8
  %86 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %86, align 4
  store i8* null, i8** %4, align 8
  br label %89

; <label>:89:                                     ; preds = %60, %58, %38, %13
  %90 = load i8*, i8** %4, align 8
  ret i8* %90
}

; Function Attrs: nounwind uwtable
define internal i32 @_ZL12ht_calc_hashPc(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 5381, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %9, %1
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %2, align 8
  %7 = load i8, i8* %5, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, 5
  %12 = load i32, i32* %3, align 4
  %13 = add i32 %11, %12
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = add i32 %13, %16
  store i32 %17, i32* %3, align 4
  br label %4

; <label>:18:                                     ; preds = %4
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: uwtable
define i8* @_Z6ht_getP11hashtable_tPc(%struct.hashtable_t*, i8*) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hashtable_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_elem_t*, align 8
  store %struct.hashtable_t* %0, %struct.hashtable_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @_ZL12ht_calc_hashPc(i8* %8)
  %10 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %11 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = urem i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %17 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %16, i32 0, i32 2
  %18 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %17, align 8
  %19 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %18, i64 %15
  %20 = load %struct.hash_elem_t*, %struct.hash_elem_t** %19, align 8
  store %struct.hash_elem_t* %20, %struct.hash_elem_t** %7, align 8
  br label %21

; <label>:21:                                     ; preds = %35, %2
  %22 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %23 = icmp ne %struct.hash_elem_t* %22, null
  br i1 %23, label %24, label %39

; <label>:24:                                     ; preds = %21
  %25 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %26 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %25, i32 0, i32 2
  %27 = getelementptr inbounds [0 x i8], [0 x i8]* %26, i32 0, i32 0
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcmp(i8* %27, i8* %28) #9
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

; <label>:31:                                     ; preds = %24
  %32 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %33 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %3, align 8
  br label %40

; <label>:35:                                     ; preds = %24
  %36 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %37 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %36, i32 0, i32 0
  %38 = load %struct.hash_elem_t*, %struct.hash_elem_t** %37, align 8
  store %struct.hash_elem_t* %38, %struct.hash_elem_t** %7, align 8
  br label %21

; <label>:39:                                     ; preds = %21
  store i8* null, i8** %3, align 8
  br label %40

; <label>:40:                                     ; preds = %39, %31
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

; Function Attrs: uwtable
define i8* @_Z9ht_removeP11hashtable_tPc(%struct.hashtable_t*, i8*) #2 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hashtable_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_elem_t*, align 8
  %8 = alloca %struct.hash_elem_t*, align 8
  %9 = alloca i8*, align 8
  store %struct.hashtable_t* %0, %struct.hashtable_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @_ZL12ht_calc_hashPc(i8* %10)
  %12 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %13 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = urem i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %19 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %18, i32 0, i32 2
  %20 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %19, align 8
  %21 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %20, i64 %17
  %22 = load %struct.hash_elem_t*, %struct.hash_elem_t** %21, align 8
  store %struct.hash_elem_t* %22, %struct.hash_elem_t** %7, align 8
  store %struct.hash_elem_t* null, %struct.hash_elem_t** %8, align 8
  br label %23

; <label>:23:                                     ; preds = %63, %2
  %24 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %25 = icmp ne %struct.hash_elem_t* %24, null
  br i1 %25, label %26, label %68

; <label>:26:                                     ; preds = %23
  %27 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %28 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %27, i32 0, i32 2
  %29 = getelementptr inbounds [0 x i8], [0 x i8]* %28, i32 0, i32 0
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strcmp(i8* %29, i8* %30) #9
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %63, label %33

; <label>:33:                                     ; preds = %26
  %34 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %35 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %9, align 8
  %37 = load %struct.hash_elem_t*, %struct.hash_elem_t** %8, align 8
  %38 = icmp ne %struct.hash_elem_t* %37, null
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %33
  %40 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %41 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %40, i32 0, i32 0
  %42 = load %struct.hash_elem_t*, %struct.hash_elem_t** %41, align 8
  %43 = load %struct.hash_elem_t*, %struct.hash_elem_t** %8, align 8
  %44 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %43, i32 0, i32 0
  store %struct.hash_elem_t* %42, %struct.hash_elem_t** %44, align 8
  br label %55

; <label>:45:                                     ; preds = %33
  %46 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %47 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %46, i32 0, i32 0
  %48 = load %struct.hash_elem_t*, %struct.hash_elem_t** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %52 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %51, i32 0, i32 2
  %53 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %52, align 8
  %54 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %53, i64 %50
  store %struct.hash_elem_t* %48, %struct.hash_elem_t** %54, align 8
  br label %55

; <label>:55:                                     ; preds = %45, %39
  %56 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %57 = bitcast %struct.hash_elem_t* %56 to i8*
  call void @free(i8* %57) #8
  store %struct.hash_elem_t* null, %struct.hash_elem_t** %7, align 8
  %58 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %59 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load i8*, i8** %9, align 8
  store i8* %62, i8** %3, align 8
  br label %69

; <label>:63:                                     ; preds = %26
  %64 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  store %struct.hash_elem_t* %64, %struct.hash_elem_t** %8, align 8
  %65 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %66 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %65, i32 0, i32 0
  %67 = load %struct.hash_elem_t*, %struct.hash_elem_t** %66, align 8
  store %struct.hash_elem_t* %67, %struct.hash_elem_t** %7, align 8
  br label %23

; <label>:68:                                     ; preds = %23
  store i8* null, i8** %3, align 8
  br label %69

; <label>:69:                                     ; preds = %68, %55
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

; Function Attrs: nounwind uwtable
define void @_Z12ht_list_keysP11hashtable_tPPcm(%struct.hashtable_t*, i8**, i64) #0 {
  %4 = alloca %struct.hashtable_t*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hash_elem_t*, align 8
  store %struct.hashtable_t* %0, %struct.hashtable_t** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %12 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %3
  br label %49

; <label>:17:                                     ; preds = %3
  store i32 0, i32* %7, align 4
  %18 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %19 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  br label %21

; <label>:21:                                     ; preds = %48, %17
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %49

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %29 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %28, i32 0, i32 2
  %30 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %29, align 8
  %31 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %30, i64 %27
  %32 = load %struct.hash_elem_t*, %struct.hash_elem_t** %31, align 8
  store %struct.hash_elem_t* %32, %struct.hash_elem_t** %9, align 8
  br label %33

; <label>:33:                                     ; preds = %36, %25
  %34 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %35 = icmp ne %struct.hash_elem_t* %34, null
  br i1 %35, label %36, label %48

; <label>:36:                                     ; preds = %33
  %37 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %38 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %37, i32 0, i32 2
  %39 = getelementptr inbounds [0 x i8], [0 x i8]* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = sext i32 %40 to i64
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8* %39, i8** %44, align 8
  %45 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %46 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %45, i32 0, i32 0
  %47 = load %struct.hash_elem_t*, %struct.hash_elem_t** %46, align 8
  store %struct.hash_elem_t* %47, %struct.hash_elem_t** %9, align 8
  br label %33

; <label>:48:                                     ; preds = %33
  br label %21

; <label>:49:                                     ; preds = %16, %21
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z14ht_list_valuesP11hashtable_tPPvm(%struct.hashtable_t*, i8**, i64) #0 {
  %4 = alloca %struct.hashtable_t*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hash_elem_t*, align 8
  store %struct.hashtable_t* %0, %struct.hashtable_t** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %12 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %3
  br label %49

; <label>:17:                                     ; preds = %3
  store i32 0, i32* %7, align 4
  %18 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %19 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  br label %21

; <label>:21:                                     ; preds = %48, %17
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %49

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.hashtable_t*, %struct.hashtable_t** %4, align 8
  %29 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %28, i32 0, i32 2
  %30 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %29, align 8
  %31 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %30, i64 %27
  %32 = load %struct.hash_elem_t*, %struct.hash_elem_t** %31, align 8
  store %struct.hash_elem_t* %32, %struct.hash_elem_t** %9, align 8
  br label %33

; <label>:33:                                     ; preds = %36, %25
  %34 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %35 = icmp ne %struct.hash_elem_t* %34, null
  br i1 %35, label %36, label %48

; <label>:36:                                     ; preds = %33
  %37 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %38 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = sext i32 %40 to i64
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8* %39, i8** %44, align 8
  %45 = load %struct.hash_elem_t*, %struct.hash_elem_t** %9, align 8
  %46 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %45, i32 0, i32 0
  %47 = load %struct.hash_elem_t*, %struct.hash_elem_t** %46, align 8
  store %struct.hash_elem_t* %47, %struct.hash_elem_t** %9, align 8
  br label %33

; <label>:48:                                     ; preds = %33
  br label %21

; <label>:49:                                     ; preds = %16, %21
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.hash_elem_t* @_Z10ht_iterateP12hash_elem_it(%struct.hash_elem_it*) #0 {
  %2 = alloca %struct.hash_elem_t*, align 8
  %3 = alloca %struct.hash_elem_it*, align 8
  %4 = alloca %struct.hash_elem_t*, align 8
  store %struct.hash_elem_it* %0, %struct.hash_elem_it** %3, align 8
  br label %5

; <label>:5:                                      ; preds = %40, %1
  %6 = load %struct.hash_elem_it*, %struct.hash_elem_it** %3, align 8
  %7 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %6, i32 0, i32 2
  %8 = load %struct.hash_elem_t*, %struct.hash_elem_t** %7, align 8
  %9 = icmp eq %struct.hash_elem_t* %8, null
  br i1 %9, label %10, label %41

; <label>:10:                                     ; preds = %5
  %11 = load %struct.hash_elem_it*, %struct.hash_elem_it** %3, align 8
  %12 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hash_elem_it*, %struct.hash_elem_it** %3, align 8
  %15 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %14, i32 0, i32 0
  %16 = load %struct.hashtable_t*, %struct.hashtable_t** %15, align 8
  %17 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub i32 %18, 1
  %20 = icmp ult i32 %13, %19
  br i1 %20, label %21, label %39

; <label>:21:                                     ; preds = %10
  %22 = load %struct.hash_elem_it*, %struct.hash_elem_it** %3, align 8
  %23 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.hash_elem_it*, %struct.hash_elem_it** %3, align 8
  %27 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = zext i32 %28 to i64
  %30 = load %struct.hash_elem_it*, %struct.hash_elem_it** %3, align 8
  %31 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %30, i32 0, i32 0
  %32 = load %struct.hashtable_t*, %struct.hashtable_t** %31, align 8
  %33 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %32, i32 0, i32 2
  %34 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %33, align 8
  %35 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %34, i64 %29
  %36 = load %struct.hash_elem_t*, %struct.hash_elem_t** %35, align 8
  %37 = load %struct.hash_elem_it*, %struct.hash_elem_it** %3, align 8
  %38 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %37, i32 0, i32 2
  store %struct.hash_elem_t* %36, %struct.hash_elem_t** %38, align 8
  br label %40

; <label>:39:                                     ; preds = %10
  store %struct.hash_elem_t* null, %struct.hash_elem_t** %2, align 8
  br label %55

; <label>:40:                                     ; preds = %21
  br label %5

; <label>:41:                                     ; preds = %5
  %42 = load %struct.hash_elem_it*, %struct.hash_elem_it** %3, align 8
  %43 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %42, i32 0, i32 2
  %44 = load %struct.hash_elem_t*, %struct.hash_elem_t** %43, align 8
  store %struct.hash_elem_t* %44, %struct.hash_elem_t** %4, align 8
  %45 = load %struct.hash_elem_t*, %struct.hash_elem_t** %4, align 8
  %46 = icmp ne %struct.hash_elem_t* %45, null
  br i1 %46, label %47, label %53

; <label>:47:                                     ; preds = %41
  %48 = load %struct.hash_elem_t*, %struct.hash_elem_t** %4, align 8
  %49 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %48, i32 0, i32 0
  %50 = load %struct.hash_elem_t*, %struct.hash_elem_t** %49, align 8
  %51 = load %struct.hash_elem_it*, %struct.hash_elem_it** %3, align 8
  %52 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %51, i32 0, i32 2
  store %struct.hash_elem_t* %50, %struct.hash_elem_t** %52, align 8
  br label %53

; <label>:53:                                     ; preds = %47, %41
  %54 = load %struct.hash_elem_t*, %struct.hash_elem_t** %4, align 8
  store %struct.hash_elem_t* %54, %struct.hash_elem_t** %2, align 8
  br label %55

; <label>:55:                                     ; preds = %53, %39
  %56 = load %struct.hash_elem_t*, %struct.hash_elem_t** %2, align 8
  ret %struct.hash_elem_t* %56
}

; Function Attrs: nounwind uwtable
define i8* @_Z15ht_iterate_keysP12hash_elem_it(%struct.hash_elem_it*) #0 {
  %2 = alloca %struct.hash_elem_it*, align 8
  %3 = alloca %struct.hash_elem_t*, align 8
  store %struct.hash_elem_it* %0, %struct.hash_elem_it** %2, align 8
  %4 = load %struct.hash_elem_it*, %struct.hash_elem_it** %2, align 8
  %5 = call %struct.hash_elem_t* @_Z10ht_iterateP12hash_elem_it(%struct.hash_elem_it* %4)
  store %struct.hash_elem_t* %5, %struct.hash_elem_t** %3, align 8
  %6 = load %struct.hash_elem_t*, %struct.hash_elem_t** %3, align 8
  %7 = icmp eq %struct.hash_elem_t* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  br label %13

; <label>:9:                                      ; preds = %1
  %10 = load %struct.hash_elem_t*, %struct.hash_elem_t** %3, align 8
  %11 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %10, i32 0, i32 2
  %12 = getelementptr inbounds [0 x i8], [0 x i8]* %11, i32 0, i32 0
  br label %13

; <label>:13:                                     ; preds = %9, %8
  %14 = phi i8* [ null, %8 ], [ %12, %9 ]
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define i8* @_Z17ht_iterate_valuesP12hash_elem_it(%struct.hash_elem_it*) #0 {
  %2 = alloca %struct.hash_elem_it*, align 8
  %3 = alloca %struct.hash_elem_t*, align 8
  store %struct.hash_elem_it* %0, %struct.hash_elem_it** %2, align 8
  %4 = load %struct.hash_elem_it*, %struct.hash_elem_it** %2, align 8
  %5 = call %struct.hash_elem_t* @_Z10ht_iterateP12hash_elem_it(%struct.hash_elem_it* %4)
  store %struct.hash_elem_t* %5, %struct.hash_elem_t** %3, align 8
  %6 = load %struct.hash_elem_t*, %struct.hash_elem_t** %3, align 8
  %7 = icmp eq %struct.hash_elem_t* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  br label %13

; <label>:9:                                      ; preds = %1
  %10 = load %struct.hash_elem_t*, %struct.hash_elem_t** %3, align 8
  %11 = getelementptr inbounds %struct.hash_elem_t, %struct.hash_elem_t* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  br label %13

; <label>:13:                                     ; preds = %9, %8
  %14 = phi i8* [ null, %8 ], [ %12, %9 ]
  ret i8* %14
}

; Function Attrs: uwtable
define void @_Z8ht_clearP11hashtable_ti(%struct.hashtable_t*, i32) #2 {
  %3 = alloca %struct.hashtable_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hash_elem_it, align 8
  %6 = alloca i8*, align 8
  store %struct.hashtable_t* %0, %struct.hashtable_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %5, i32 0, i32 0
  %8 = load %struct.hashtable_t*, %struct.hashtable_t** %3, align 8
  store %struct.hashtable_t* %8, %struct.hashtable_t** %7, align 8
  %9 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %5, i32 0, i32 1
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.hash_elem_it, %struct.hash_elem_it* %5, i32 0, i32 2
  %11 = load %struct.hashtable_t*, %struct.hashtable_t** %3, align 8
  %12 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %11, i32 0, i32 2
  %13 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %12, align 8
  %14 = getelementptr inbounds %struct.hash_elem_t*, %struct.hash_elem_t** %13, i64 0
  %15 = load %struct.hash_elem_t*, %struct.hash_elem_t** %14, align 8
  store %struct.hash_elem_t* %15, %struct.hash_elem_t** %10, align 8
  %16 = call i8* @_Z15ht_iterate_keysP12hash_elem_it(%struct.hash_elem_it* %5)
  store i8* %16, i8** %6, align 8
  br label %17

; <label>:17:                                     ; preds = %31, %2
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %33

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %20
  %24 = load %struct.hashtable_t*, %struct.hashtable_t** %3, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @_Z9ht_removeP11hashtable_tPc(%struct.hashtable_t* %24, i8* %25)
  call void @free(i8* %26) #8
  br label %31

; <label>:27:                                     ; preds = %20
  %28 = load %struct.hashtable_t*, %struct.hashtable_t** %3, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @_Z9ht_removeP11hashtable_tPc(%struct.hashtable_t* %28, i8* %29)
  br label %31

; <label>:31:                                     ; preds = %27, %23
  %32 = call i8* @_Z15ht_iterate_keysP12hash_elem_it(%struct.hash_elem_it* %5)
  store i8* %32, i8** %6, align 8
  br label %17

; <label>:33:                                     ; preds = %17
  ret void
}

; Function Attrs: uwtable
define void @_Z10ht_destroyP11hashtable_t(%struct.hashtable_t*) #2 {
  %2 = alloca %struct.hashtable_t*, align 8
  store %struct.hashtable_t* %0, %struct.hashtable_t** %2, align 8
  %3 = load %struct.hashtable_t*, %struct.hashtable_t** %2, align 8
  call void @_Z8ht_clearP11hashtable_ti(%struct.hashtable_t* %3, i32 1)
  %4 = load %struct.hashtable_t*, %struct.hashtable_t** %2, align 8
  %5 = getelementptr inbounds %struct.hashtable_t, %struct.hashtable_t* %4, i32 0, i32 2
  %6 = load %struct.hash_elem_t**, %struct.hash_elem_t*** %5, align 8
  %7 = bitcast %struct.hash_elem_t** %6 to i8*
  call void @free(i8* %7) #8
  %8 = load %struct.hashtable_t*, %struct.hashtable_t** %2, align 8
  %9 = bitcast %struct.hashtable_t* %8 to i8*
  call void @free(i8* %9) #8
  ret void
}

; Function Attrs: uwtable
define void @fatal_err(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #10
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: uwtable
define i64* @alloc(i64) #2 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @allocated, align 8
  %4 = load i64, i64* %2, align 8
  %5 = add i64 %3, %4
  %6 = icmp ugt i64 %5, 268435456
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %8

; <label>:8:                                      ; preds = %7, %1
  %9 = load i64, i64* @allocated, align 8
  %10 = load i64, i64* %2, align 8
  %11 = add i64 %9, %10
  store i64 %11, i64* @allocated, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call noalias i8* @malloc(i64 %12) #8
  %14 = bitcast i8* %13 to i64*
  ret i64* %14
}

; Function Attrs: uwtable
define void @int_overflow() #2 {
  call void @fatal_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

; Function Attrs: uwtable
define void @print_u64(i64) #2 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 %3)
  ret void
}

; Function Attrs: uwtable
define i64 @expect_args0(i64) #2 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i32 0, i32 0))
  br label %6

; <label>:6:                                      ; preds = %5, %1
  ret i64 0
}

; Function Attrs: uwtable
define i64 @expect_args1(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i32 0, i32 0))
  br label %8

; <label>:8:                                      ; preds = %7, %1
  %9 = load i64, i64* %2, align 8
  %10 = and i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64* %11, i64** %3, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %16, %8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: uwtable
define i64 @expect_cons(i64, i64*) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 1
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: uwtable
define i64 @expect_other(i64, i64*) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 6
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: uwtable
define i64 @const_init_int(i64) #2 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @allocated, align 8
  %4 = add i64 %3, 8
  %5 = icmp ugt i64 %4, 268435456
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %7

; <label>:7:                                      ; preds = %6, %1
  %8 = load i64, i64* @allocated, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* @allocated, align 8
  %10 = load i64, i64* %2, align 8
  %11 = trunc i64 %10 to i32
  %12 = zext i32 %11 to i64
  %13 = shl i64 %12, 32
  %14 = or i64 %13, 2
  ret i64 %14
}

; Function Attrs: uwtable
define i64 @const_init_void() #2 {
  %1 = load i64, i64* @allocated, align 8
  %2 = add i64 %1, 8
  %3 = icmp ugt i64 %2, 268435456
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %5

; <label>:5:                                      ; preds = %4, %0
  %6 = load i64, i64* @allocated, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* @allocated, align 8
  ret i64 39
}

; Function Attrs: uwtable
define i64 @const_init_null() #2 {
  %1 = load i64, i64* @allocated, align 8
  %2 = add i64 %1, 8
  %3 = icmp ugt i64 %2, 268435456
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %5

; <label>:5:                                      ; preds = %4, %0
  %6 = load i64, i64* @allocated, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* @allocated, align 8
  ret i64 0
}

; Function Attrs: uwtable
define i64 @const_init_true() #2 {
  %1 = load i64, i64* @allocated, align 8
  %2 = add i64 %1, 8
  %3 = icmp ugt i64 %2, 268435456
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %5

; <label>:5:                                      ; preds = %4, %0
  %6 = load i64, i64* @allocated, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* @allocated, align 8
  ret i64 31
}

; Function Attrs: uwtable
define i64 @const_init_false() #2 {
  %1 = load i64, i64* @allocated, align 8
  %2 = add i64 %1, 8
  %3 = icmp ugt i64 %2, 268435456
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %5

; <label>:5:                                      ; preds = %4, %0
  %6 = load i64, i64* @allocated, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* @allocated, align 8
  ret i64 15
}

; Function Attrs: uwtable
define i64 @const_init_string(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @allocated, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) #9
  %6 = mul i64 %5, 1
  %7 = add i64 %3, %6
  %8 = icmp ugt i64 %7, 268435456
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %1
  %11 = load i64, i64* @allocated, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* %12) #9
  %14 = mul i64 %13, 1
  %15 = add i64 %11, %14
  store i64 %15, i64* @allocated, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = or i64 %17, 3
  ret i64 %18
}

; Function Attrs: uwtable
define i64 @const_init_symbol(i8*) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @allocated, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) #9
  %6 = mul i64 %5, 1
  %7 = add i64 %3, %6
  %8 = icmp ugt i64 %7, 268435456
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %1
  %11 = load i64, i64* @allocated, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* %12) #9
  %14 = mul i64 %13, 1
  %15 = add i64 %11, %14
  store i64 %15, i64* @allocated, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = or i64 %17, 4
  ret i64 %18
}

; Function Attrs: uwtable
define i64 @prim_print_aux(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  br label %113

; <label>:11:                                     ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  br label %112

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %36

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %3, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @prim_print_aux(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %111

; <label>:36:                                     ; preds = %17
  %37 = load i64, i64* %2, align 8
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %45

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 %43)
  br label %110

; <label>:45:                                     ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = and i64 %46, 7
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %45
  %50 = load i64, i64* %2, align 8
  %51 = and i64 %50, -8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* %52)
  br label %109

; <label>:54:                                     ; preds = %45
  %55 = load i64, i64* %2, align 8
  %56 = and i64 %55, 7
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %63

; <label>:58:                                     ; preds = %54
  %59 = load i64, i64* %2, align 8
  %60 = and i64 %59, -8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %61)
  br label %108

; <label>:63:                                     ; preds = %54
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %67, label %104

; <label>:67:                                     ; preds = %63
  %68 = load i64, i64* %2, align 8
  %69 = and i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 7
  %74 = icmp eq i64 1, %73
  br i1 %74, label %75, label %104

; <label>:75:                                     ; preds = %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  %77 = load i64, i64* %2, align 8
  %78 = and i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %4, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %82, 3
  store i64 %83, i64* %5, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @prim_print_aux(i64 %86)
  store i64 2, i64* %6, align 8
  br label %88

; <label>:88:                                     ; preds = %99, %75
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %102

; <label>:92:                                     ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %94 = load i64, i64* %6, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @prim_print_aux(i64 %97)
  br label %99

; <label>:99:                                     ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %88

; <label>:102:                                    ; preds = %88
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %107

; <label>:104:                                    ; preds = %67, %63
  %105 = load i64, i64* %2, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0), i64 %105)
  br label %107

; <label>:107:                                    ; preds = %104, %102
  br label %108

; <label>:108:                                    ; preds = %107, %58
  br label %109

; <label>:109:                                    ; preds = %108, %49
  br label %110

; <label>:110:                                    ; preds = %109, %40
  br label %111

; <label>:111:                                    ; preds = %110, %21
  br label %112

; <label>:112:                                    ; preds = %111, %15
  br label %113

; <label>:113:                                    ; preds = %112, %9
  ret i64 39
}

; Function Attrs: uwtable
define i64 @prim_print(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hash_struct*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0))
  br label %153

; <label>:12:                                     ; preds = %1
  %13 = load i64, i64* %2, align 8
  %14 = and i64 %13, 7
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %12
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  br label %152

; <label>:18:                                     ; preds = %12
  %19 = load i64, i64* %2, align 8
  %20 = and i64 %19, 7
  %21 = icmp eq i64 %20, 1
  br i1 %21, label %22, label %37

; <label>:22:                                     ; preds = %18
  %23 = load i64, i64* %2, align 8
  %24 = and i64 %23, -8
  %25 = inttoptr i64 %24 to i64*
  store i64* %25, i64** %3, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  %27 = load i64*, i64** %3, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @prim_print_aux(i64 %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  %32 = load i64*, i64** %3, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @prim_print_aux(i64 %34)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %151

; <label>:37:                                     ; preds = %18
  %38 = load i64, i64* %2, align 8
  %39 = and i64 %38, 7
  %40 = icmp eq i64 %39, 2
  br i1 %40, label %41, label %46

; <label>:41:                                     ; preds = %37
  %42 = load i64, i64* %2, align 8
  %43 = lshr i64 %42, 32
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 %44)
  br label %150

; <label>:46:                                     ; preds = %37
  %47 = load i64, i64* %2, align 8
  %48 = and i64 %47, 7
  %49 = icmp eq i64 %48, 3
  br i1 %49, label %50, label %55

; <label>:50:                                     ; preds = %46
  %51 = load i64, i64* %2, align 8
  %52 = and i64 %51, -8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* %53)
  br label %149

; <label>:55:                                     ; preds = %46
  %56 = load i64, i64* %2, align 8
  %57 = and i64 %56, 7
  %58 = icmp eq i64 %57, 4
  br i1 %58, label %59, label %64

; <label>:59:                                     ; preds = %55
  %60 = load i64, i64* %2, align 8
  %61 = and i64 %60, -8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %62)
  br label %148

; <label>:64:                                     ; preds = %55
  %65 = load i64, i64* %2, align 8
  %66 = and i64 %65, 7
  %67 = icmp eq i64 %66, 6
  br i1 %67, label %68, label %105

; <label>:68:                                     ; preds = %64
  %69 = load i64, i64* %2, align 8
  %70 = and i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %73, 7
  %75 = icmp eq i64 1, %74
  br i1 %75, label %76, label %105

; <label>:76:                                     ; preds = %68
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  %78 = load i64, i64* %2, align 8
  %79 = and i64 %78, -8
  %80 = inttoptr i64 %79 to i64*
  store i64* %80, i64** %4, align 8
  %81 = load i64*, i64** %4, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = lshr i64 %83, 3
  store i64 %84, i64* %5, align 8
  %85 = load i64*, i64** %4, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @prim_print(i64 %87)
  store i64 2, i64* %6, align 8
  br label %89

; <label>:89:                                     ; preds = %100, %76
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %5, align 8
  %92 = icmp ule i64 %90, %91
  br i1 %92, label %93, label %103

; <label>:93:                                     ; preds = %89
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %95 = load i64, i64* %6, align 8
  %96 = load i64*, i64** %4, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 %95
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @prim_print(i64 %98)
  br label %100

; <label>:100:                                    ; preds = %93
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %6, align 8
  br label %89

; <label>:103:                                    ; preds = %89
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %147

; <label>:105:                                    ; preds = %68, %64
  %106 = load i64, i64* %2, align 8
  %107 = and i64 %106, 7
  %108 = icmp eq i64 %107, 7
  br i1 %108, label %109, label %143

; <label>:109:                                    ; preds = %105
  %110 = load i64, i64* %2, align 8
  %111 = and i64 %110, -8
  %112 = inttoptr i64 %111 to i64*
  %113 = bitcast i64* %112 to %struct.hash_struct*
  store %struct.hash_struct* %113, %struct.hash_struct** %7, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0))
  %115 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %116 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = bitcast i8* %118 to %struct.hash_struct*
  store %struct.hash_struct* %119, %struct.hash_struct** %7, align 8
  br label %120

; <label>:120:                                    ; preds = %135, %109
  %121 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %122 = icmp ne %struct.hash_struct* %121, null
  br i1 %122, label %123, label %141

; <label>:123:                                    ; preds = %120
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %125 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %126 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @prim_print(i64 %127)
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  %130 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %131 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @prim_print(i64 %132)
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %135

; <label>:135:                                    ; preds = %123
  %136 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %137 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = bitcast i8* %139 to %struct.hash_struct*
  store %struct.hash_struct* %140, %struct.hash_struct** %7, align 8
  br label %120

; <label>:141:                                    ; preds = %120
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %146

; <label>:143:                                    ; preds = %105
  %144 = load i64, i64* %2, align 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0), i64 %144)
  br label %146

; <label>:146:                                    ; preds = %143, %141
  br label %147

; <label>:147:                                    ; preds = %146, %103
  br label %148

; <label>:148:                                    ; preds = %147, %59
  br label %149

; <label>:149:                                    ; preds = %148, %50
  br label %150

; <label>:150:                                    ; preds = %149, %41
  br label %151

; <label>:151:                                    ; preds = %150, %22
  br label %152

; <label>:152:                                    ; preds = %151, %16
  br label %153

; <label>:153:                                    ; preds = %152, %10
  ret i64 39
}

; Function Attrs: uwtable
define i64 @applyprim_print(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_print(i64 %6)
  ret i64 %7
}

; Function Attrs: uwtable
define i64 @prim_halt(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @prim_print(i64 %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #10
  unreachable
                                                  ; No predecessors!
  %8 = load i64, i64* %2, align 8
  ret i64 %8
}

; Function Attrs: uwtable
define i64 @applyprim_vector(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = call noalias i8* @malloc(i64 4096) #8
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %3, align 8
  store i64 0, i64* %4, align 8
  br label %9

; <label>:9:                                      ; preds = %18, %1
  %10 = load i64, i64* %2, align 8
  %11 = and i64 %10, 7
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %14, 512
  br label %16

; <label>:16:                                     ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %16
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @expect_cons(i64 %19, i64* %2)
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 %21
  store i64 %20, i64* %24, align 8
  br label %9

; <label>:25:                                     ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  %28 = mul i64 %27, 8
  %29 = call i64* @alloc(i64 %28)
  store i64* %29, i64** %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = shl i64 %30, 3
  %32 = or i64 %31, 1
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %34, align 8
  store i64 0, i64* %6, align 8
  br label %35

; <label>:35:                                     ; preds = %48, %25
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %51

; <label>:39:                                     ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 %40
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 %45
  store i64 %43, i64* %47, align 8
  br label %48

; <label>:48:                                     ; preds = %39
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %35

; <label>:51:                                     ; preds = %35
  %52 = load i64*, i64** %3, align 8
  %53 = icmp eq i64* %52, null
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %51
  %55 = bitcast i64* %52 to i8*
  call void @_ZdaPv(i8* %55) #11
  br label %56

; <label>:56:                                     ; preds = %54, %51
  %57 = load i64*, i64** %5, align 8
  %58 = ptrtoint i64* %57 to i64
  %59 = or i64 %58, 6
  ret i64 %59
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #6

; Function Attrs: uwtable
define i64 @prim_make_45vector(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0))
  br label %12

; <label>:12:                                     ; preds = %11, %2
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  %20 = mul i64 %19, 8
  %21 = call i64* @alloc(i64 %20)
  store i64* %21, i64** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = shl i64 %22, 3
  %24 = or i64 %23, 1
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %26, align 8
  store i64 1, i64* %7, align 8
  br label %27

; <label>:27:                                     ; preds = %36, %12
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 %33
  store i64 %32, i64* %35, align 8
  br label %36

; <label>:36:                                     ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %27

; <label>:39:                                     ; preds = %27
  %40 = load i64*, i64** %6, align 8
  %41 = ptrtoint i64* %40 to i64
  %42 = or i64 %41, 6
  ret i64 %42
}

; Function Attrs: uwtable
define i64 @applyprim_make_45vector(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_make_45vector(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: uwtable
define i64 @prim_vector_45ref(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 6
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 1
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %14
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i32 0, i32 0))
  br label %23

; <label>:23:                                     ; preds = %22, %14
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %3, align 8
  %29 = and i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = lshr i64 %32, 3
  %34 = and i64 %33, -8
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = icmp sgt i32 %27, %36
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %23
  call void @fatal_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0))
  br label %39

; <label>:39:                                     ; preds = %38, %23
  %40 = load i64, i64* %4, align 8
  %41 = and i64 %40, -8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = add nsw i32 1, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %3, align 8
  %47 = and i64 %46, -8
  %48 = inttoptr i64 %47 to i64*
  %49 = getelementptr inbounds i64, i64* %48, i64 %45
  %50 = load i64, i64* %49, align 8
  ret i64 %50
}

; Function Attrs: uwtable
define i64 @applyprim_vector_45ref(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_vector_45ref(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: uwtable
define i64 @prim_vector_45set_33(i64, i64, i64) #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 6
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i32 0, i32 0))
  br label %11

; <label>:11:                                     ; preds = %10, %3
  %12 = load i64, i64* %5, align 8
  %13 = and i64 %12, 7
  %14 = icmp ne i64 %13, 2
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %11
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i32 0, i32 0))
  br label %16

; <label>:16:                                     ; preds = %15, %11
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, 7
  %23 = icmp ne i64 %22, 1
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %16
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i32 0, i32 0))
  br label %25

; <label>:25:                                     ; preds = %24, %16
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* %4, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = lshr i64 %34, 3
  %36 = and i64 %35, -8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = icmp sgt i32 %29, %38
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %25
  call void @fatal_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0))
  br label %41

; <label>:41:                                     ; preds = %40, %25
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = and i64 %43, -8
  %45 = lshr i64 %44, 32
  %46 = trunc i64 %45 to i32
  %47 = add nsw i32 1, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %4, align 8
  %50 = and i64 %49, -8
  %51 = inttoptr i64 %50 to i64*
  %52 = getelementptr inbounds i64, i64* %51, i64 %48
  store i64 %42, i64* %52, align 8
  ret i64 39
}

; Function Attrs: uwtable
define i64 @applyprim_vector_45set_33(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @expect_cons(i64 %7, i64* %3)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @expect_cons(i64 %9, i64* %3)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @expect_cons(i64 %11, i64* %3)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0))
  br label %16

; <label>:16:                                     ; preds = %15, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @prim_vector_45set_33(i64 %17, i64 %18, i64 %19)
  ret i64 %20
}

; Function Attrs: uwtable
define i64 @prim_make_45hash() #2 {
  %1 = alloca %struct.hash_struct*, align 8
  %2 = alloca %struct.hash_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.UT_hash_bucket*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.UT_hash_handle*, align 8
  %14 = alloca %struct.UT_hash_handle*, align 8
  %15 = alloca %struct.UT_hash_bucket*, align 8
  %16 = alloca %struct.UT_hash_bucket*, align 8
  store %struct.hash_struct* null, %struct.hash_struct** %1, align 8
  %17 = call noalias i8* @malloc(i64 72) #8
  %18 = bitcast i8* %17 to %struct.hash_struct*
  store %struct.hash_struct* %18, %struct.hash_struct** %2, align 8
  %19 = load i64, i64* @allocated, align 8
  %20 = add i64 %19, 72
  %21 = icmp ugt i64 %20, 268435456
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %23

; <label>:23:                                     ; preds = %22, %0
  %24 = load i64, i64* @allocated, align 8
  %25 = add i64 %24, 72
  store i64 %25, i64* @allocated, align 8
  %26 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %27 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %29 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  store i32 4, i32* %3, align 4
  br label %30

; <label>:30:                                     ; preds = %23
  br label %31

; <label>:31:                                     ; preds = %30
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %34 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %33, i32 0, i32 0
  %35 = bitcast i64* %34 to i8*
  store i8* %35, i8** %8, align 8
  store i32 -17973521, i32* %4, align 4
  store i32 -1640531527, i32* %6, align 4
  store i32 -1640531527, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %7, align 4
  br label %37

; <label>:37:                                     ; preds = %204, %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp uge i32 %38, 12
  br i1 %39, label %40, label %209

; <label>:40:                                     ; preds = %37
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 8
  %50 = add i32 %44, %49
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 16
  %56 = add i32 %50, %55
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 24
  %62 = add i32 %56, %61
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 5
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 8
  %74 = add i32 %68, %73
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 6
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %78, 16
  %80 = add i32 %74, %79
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 7
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %84, 24
  %86 = add i32 %80, %85
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 9
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 8
  %98 = add i32 %92, %97
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 10
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 %102, 16
  %104 = add i32 %98, %103
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 11
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl i32 %108, 24
  %110 = add i32 %104, %109
  %111 = load i32, i32* %4, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %113

; <label>:113:                                    ; preds = %40
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %5, align 4
  %116 = sub i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sub i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = lshr i32 %120, 13
  %122 = load i32, i32* %5, align 4
  %123 = xor i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %6, align 4
  %126 = sub i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sub i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %5, align 4
  %131 = shl i32 %130, 8
  %132 = load i32, i32* %6, align 4
  %133 = xor i32 %132, %131
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %4, align 4
  %136 = sub i32 %135, %134
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %4, align 4
  %139 = sub i32 %138, %137
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %6, align 4
  %141 = lshr i32 %140, 13
  %142 = load i32, i32* %4, align 4
  %143 = xor i32 %142, %141
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %5, align 4
  %146 = sub i32 %145, %144
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %5, align 4
  %149 = sub i32 %148, %147
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %4, align 4
  %151 = lshr i32 %150, 12
  %152 = load i32, i32* %5, align 4
  %153 = xor i32 %152, %151
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %6, align 4
  %156 = sub i32 %155, %154
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %6, align 4
  %159 = sub i32 %158, %157
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %5, align 4
  %161 = shl i32 %160, 16
  %162 = load i32, i32* %6, align 4
  %163 = xor i32 %162, %161
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %4, align 4
  %166 = sub i32 %165, %164
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %4, align 4
  %169 = sub i32 %168, %167
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %6, align 4
  %171 = lshr i32 %170, 5
  %172 = load i32, i32* %4, align 4
  %173 = xor i32 %172, %171
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %5, align 4
  %176 = sub i32 %175, %174
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %5, align 4
  %179 = sub i32 %178, %177
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %4, align 4
  %181 = lshr i32 %180, 3
  %182 = load i32, i32* %5, align 4
  %183 = xor i32 %182, %181
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %6, align 4
  %186 = sub i32 %185, %184
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* %6, align 4
  %189 = sub i32 %188, %187
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %5, align 4
  %191 = shl i32 %190, 10
  %192 = load i32, i32* %6, align 4
  %193 = xor i32 %192, %191
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* %4, align 4
  %196 = sub i32 %195, %194
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %4, align 4
  %199 = sub i32 %198, %197
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* %6, align 4
  %201 = lshr i32 %200, 15
  %202 = load i32, i32* %4, align 4
  %203 = xor i32 %202, %201
  store i32 %203, i32* %4, align 4
  br label %204

; <label>:204:                                    ; preds = %113
  %205 = load i8*, i8** %8, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 12
  store i8* %206, i8** %8, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sub i32 %207, 12
  store i32 %208, i32* %7, align 4
  br label %37

; <label>:209:                                    ; preds = %37
  %210 = load i32, i32* %3, align 4
  %211 = load i32, i32* %4, align 4
  %212 = add i32 %211, %210
  store i32 %212, i32* %4, align 4
  %213 = load i32, i32* %7, align 4
  switch i32 %213, label %300 [
    i32 11, label %214
    i32 10, label %222
    i32 9, label %230
    i32 8, label %238
    i32 7, label %246
    i32 6, label %254
    i32 5, label %262
    i32 4, label %269
    i32 3, label %277
    i32 2, label %285
    i32 1, label %293
  ]

; <label>:214:                                    ; preds = %209
  %215 = load i8*, i8** %8, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 10
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = shl i32 %218, 24
  %220 = load i32, i32* %4, align 4
  %221 = add i32 %220, %219
  store i32 %221, i32* %4, align 4
  br label %222

; <label>:222:                                    ; preds = %209, %214
  %223 = load i8*, i8** %8, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 9
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = shl i32 %226, 16
  %228 = load i32, i32* %4, align 4
  %229 = add i32 %228, %227
  store i32 %229, i32* %4, align 4
  br label %230

; <label>:230:                                    ; preds = %209, %222
  %231 = load i8*, i8** %8, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 8
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = shl i32 %234, 8
  %236 = load i32, i32* %4, align 4
  %237 = add i32 %236, %235
  store i32 %237, i32* %4, align 4
  br label %238

; <label>:238:                                    ; preds = %209, %230
  %239 = load i8*, i8** %8, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 7
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = shl i32 %242, 24
  %244 = load i32, i32* %6, align 4
  %245 = add i32 %244, %243
  store i32 %245, i32* %6, align 4
  br label %246

; <label>:246:                                    ; preds = %209, %238
  %247 = load i8*, i8** %8, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 6
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = shl i32 %250, 16
  %252 = load i32, i32* %6, align 4
  %253 = add i32 %252, %251
  store i32 %253, i32* %6, align 4
  br label %254

; <label>:254:                                    ; preds = %209, %246
  %255 = load i8*, i8** %8, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 5
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = shl i32 %258, 8
  %260 = load i32, i32* %6, align 4
  %261 = add i32 %260, %259
  store i32 %261, i32* %6, align 4
  br label %262

; <label>:262:                                    ; preds = %209, %254
  %263 = load i8*, i8** %8, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 4
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = load i32, i32* %6, align 4
  %268 = add i32 %267, %266
  store i32 %268, i32* %6, align 4
  br label %269

; <label>:269:                                    ; preds = %209, %262
  %270 = load i8*, i8** %8, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 3
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = shl i32 %273, 24
  %275 = load i32, i32* %5, align 4
  %276 = add i32 %275, %274
  store i32 %276, i32* %5, align 4
  br label %277

; <label>:277:                                    ; preds = %209, %269
  %278 = load i8*, i8** %8, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 2
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = shl i32 %281, 16
  %283 = load i32, i32* %5, align 4
  %284 = add i32 %283, %282
  store i32 %284, i32* %5, align 4
  br label %285

; <label>:285:                                    ; preds = %209, %277
  %286 = load i8*, i8** %8, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 1
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = shl i32 %289, 8
  %291 = load i32, i32* %5, align 4
  %292 = add i32 %291, %290
  store i32 %292, i32* %5, align 4
  br label %293

; <label>:293:                                    ; preds = %209, %285
  %294 = load i8*, i8** %8, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 0
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = load i32, i32* %5, align 4
  %299 = add i32 %298, %297
  store i32 %299, i32* %5, align 4
  br label %300

; <label>:300:                                    ; preds = %293, %209
  br label %301

; <label>:301:                                    ; preds = %300
  %302 = load i32, i32* %6, align 4
  %303 = load i32, i32* %5, align 4
  %304 = sub i32 %303, %302
  store i32 %304, i32* %5, align 4
  %305 = load i32, i32* %4, align 4
  %306 = load i32, i32* %5, align 4
  %307 = sub i32 %306, %305
  store i32 %307, i32* %5, align 4
  %308 = load i32, i32* %4, align 4
  %309 = lshr i32 %308, 13
  %310 = load i32, i32* %5, align 4
  %311 = xor i32 %310, %309
  store i32 %311, i32* %5, align 4
  %312 = load i32, i32* %4, align 4
  %313 = load i32, i32* %6, align 4
  %314 = sub i32 %313, %312
  store i32 %314, i32* %6, align 4
  %315 = load i32, i32* %5, align 4
  %316 = load i32, i32* %6, align 4
  %317 = sub i32 %316, %315
  store i32 %317, i32* %6, align 4
  %318 = load i32, i32* %5, align 4
  %319 = shl i32 %318, 8
  %320 = load i32, i32* %6, align 4
  %321 = xor i32 %320, %319
  store i32 %321, i32* %6, align 4
  %322 = load i32, i32* %5, align 4
  %323 = load i32, i32* %4, align 4
  %324 = sub i32 %323, %322
  store i32 %324, i32* %4, align 4
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* %4, align 4
  %327 = sub i32 %326, %325
  store i32 %327, i32* %4, align 4
  %328 = load i32, i32* %6, align 4
  %329 = lshr i32 %328, 13
  %330 = load i32, i32* %4, align 4
  %331 = xor i32 %330, %329
  store i32 %331, i32* %4, align 4
  %332 = load i32, i32* %6, align 4
  %333 = load i32, i32* %5, align 4
  %334 = sub i32 %333, %332
  store i32 %334, i32* %5, align 4
  %335 = load i32, i32* %4, align 4
  %336 = load i32, i32* %5, align 4
  %337 = sub i32 %336, %335
  store i32 %337, i32* %5, align 4
  %338 = load i32, i32* %4, align 4
  %339 = lshr i32 %338, 12
  %340 = load i32, i32* %5, align 4
  %341 = xor i32 %340, %339
  store i32 %341, i32* %5, align 4
  %342 = load i32, i32* %4, align 4
  %343 = load i32, i32* %6, align 4
  %344 = sub i32 %343, %342
  store i32 %344, i32* %6, align 4
  %345 = load i32, i32* %5, align 4
  %346 = load i32, i32* %6, align 4
  %347 = sub i32 %346, %345
  store i32 %347, i32* %6, align 4
  %348 = load i32, i32* %5, align 4
  %349 = shl i32 %348, 16
  %350 = load i32, i32* %6, align 4
  %351 = xor i32 %350, %349
  store i32 %351, i32* %6, align 4
  %352 = load i32, i32* %5, align 4
  %353 = load i32, i32* %4, align 4
  %354 = sub i32 %353, %352
  store i32 %354, i32* %4, align 4
  %355 = load i32, i32* %6, align 4
  %356 = load i32, i32* %4, align 4
  %357 = sub i32 %356, %355
  store i32 %357, i32* %4, align 4
  %358 = load i32, i32* %6, align 4
  %359 = lshr i32 %358, 5
  %360 = load i32, i32* %4, align 4
  %361 = xor i32 %360, %359
  store i32 %361, i32* %4, align 4
  %362 = load i32, i32* %6, align 4
  %363 = load i32, i32* %5, align 4
  %364 = sub i32 %363, %362
  store i32 %364, i32* %5, align 4
  %365 = load i32, i32* %4, align 4
  %366 = load i32, i32* %5, align 4
  %367 = sub i32 %366, %365
  store i32 %367, i32* %5, align 4
  %368 = load i32, i32* %4, align 4
  %369 = lshr i32 %368, 3
  %370 = load i32, i32* %5, align 4
  %371 = xor i32 %370, %369
  store i32 %371, i32* %5, align 4
  %372 = load i32, i32* %4, align 4
  %373 = load i32, i32* %6, align 4
  %374 = sub i32 %373, %372
  store i32 %374, i32* %6, align 4
  %375 = load i32, i32* %5, align 4
  %376 = load i32, i32* %6, align 4
  %377 = sub i32 %376, %375
  store i32 %377, i32* %6, align 4
  %378 = load i32, i32* %5, align 4
  %379 = shl i32 %378, 10
  %380 = load i32, i32* %6, align 4
  %381 = xor i32 %380, %379
  store i32 %381, i32* %6, align 4
  %382 = load i32, i32* %5, align 4
  %383 = load i32, i32* %4, align 4
  %384 = sub i32 %383, %382
  store i32 %384, i32* %4, align 4
  %385 = load i32, i32* %6, align 4
  %386 = load i32, i32* %4, align 4
  %387 = sub i32 %386, %385
  store i32 %387, i32* %4, align 4
  %388 = load i32, i32* %6, align 4
  %389 = lshr i32 %388, 15
  %390 = load i32, i32* %4, align 4
  %391 = xor i32 %390, %389
  store i32 %391, i32* %4, align 4
  br label %392

; <label>:392:                                    ; preds = %301
  br label %393

; <label>:393:                                    ; preds = %392
  br label %394

; <label>:394:                                    ; preds = %393
  br label %395

; <label>:395:                                    ; preds = %394
  %396 = load i32, i32* %4, align 4
  %397 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %398 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %398, i32 0, i32 7
  store i32 %396, i32* %399, align 4
  %400 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %401 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %400, i32 0, i32 0
  %402 = bitcast i64* %401 to i8*
  %403 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %404 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %404, i32 0, i32 5
  store i8* %402, i8** %405, align 8
  %406 = load i32, i32* %3, align 4
  %407 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %408 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %408, i32 0, i32 6
  store i32 %406, i32* %409, align 8
  %410 = load %struct.hash_struct*, %struct.hash_struct** %1, align 8
  %411 = icmp ne %struct.hash_struct* %410, null
  br i1 %411, label %499, label %412

; <label>:412:                                    ; preds = %395
  %413 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %414 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %413, i32 0, i32 2
  %415 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %414, i32 0, i32 2
  store i8* null, i8** %415, align 8
  %416 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %417 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %417, i32 0, i32 1
  store i8* null, i8** %418, align 8
  br label %419

; <label>:419:                                    ; preds = %412
  %420 = call noalias i8* @malloc(i64 64) #8
  %421 = bitcast i8* %420 to %struct.UT_hash_table*
  %422 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %423 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %422, i32 0, i32 2
  %424 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %423, i32 0, i32 0
  store %struct.UT_hash_table* %421, %struct.UT_hash_table** %424, align 8
  %425 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %426 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %425, i32 0, i32 2
  %427 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %426, i32 0, i32 0
  %428 = load %struct.UT_hash_table*, %struct.UT_hash_table** %427, align 8
  %429 = icmp ne %struct.UT_hash_table* %428, null
  br i1 %429, label %431, label %430

; <label>:430:                                    ; preds = %419
  call void @exit(i32 -1) #10
  unreachable

; <label>:431:                                    ; preds = %419
  %432 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %433 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %432, i32 0, i32 2
  %434 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %433, i32 0, i32 0
  %435 = load %struct.UT_hash_table*, %struct.UT_hash_table** %434, align 8
  %436 = bitcast %struct.UT_hash_table* %435 to i8*
  call void @llvm.memset.p0i8.i64(i8* %436, i8 0, i64 64, i32 8, i1 false)
  %437 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %438 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %437, i32 0, i32 2
  %439 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %440 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %439, i32 0, i32 2
  %441 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %440, i32 0, i32 0
  %442 = load %struct.UT_hash_table*, %struct.UT_hash_table** %441, align 8
  %443 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %442, i32 0, i32 4
  store %struct.UT_hash_handle* %438, %struct.UT_hash_handle** %443, align 8
  %444 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %445 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %445, i32 0, i32 0
  %447 = load %struct.UT_hash_table*, %struct.UT_hash_table** %446, align 8
  %448 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %447, i32 0, i32 1
  store i32 32, i32* %448, align 8
  %449 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %450 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %449, i32 0, i32 2
  %451 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %450, i32 0, i32 0
  %452 = load %struct.UT_hash_table*, %struct.UT_hash_table** %451, align 8
  %453 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %452, i32 0, i32 2
  store i32 5, i32* %453, align 4
  %454 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %455 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %454, i32 0, i32 2
  %456 = bitcast %struct.UT_hash_handle* %455 to i8*
  %457 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %458 = bitcast %struct.hash_struct* %457 to i8*
  %459 = ptrtoint i8* %456 to i64
  %460 = ptrtoint i8* %458 to i64
  %461 = sub i64 %459, %460
  %462 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %463 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %462, i32 0, i32 2
  %464 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %463, i32 0, i32 0
  %465 = load %struct.UT_hash_table*, %struct.UT_hash_table** %464, align 8
  %466 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %465, i32 0, i32 5
  store i64 %461, i64* %466, align 8
  %467 = call noalias i8* @malloc(i64 512) #8
  %468 = bitcast i8* %467 to %struct.UT_hash_bucket*
  %469 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %470 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %469, i32 0, i32 2
  %471 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %470, i32 0, i32 0
  %472 = load %struct.UT_hash_table*, %struct.UT_hash_table** %471, align 8
  %473 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %472, i32 0, i32 0
  store %struct.UT_hash_bucket* %468, %struct.UT_hash_bucket** %473, align 8
  %474 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %475 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %475, i32 0, i32 0
  %477 = load %struct.UT_hash_table*, %struct.UT_hash_table** %476, align 8
  %478 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %477, i32 0, i32 10
  store i32 -1609490463, i32* %478, align 8
  %479 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %480 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %480, i32 0, i32 0
  %482 = load %struct.UT_hash_table*, %struct.UT_hash_table** %481, align 8
  %483 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %482, i32 0, i32 0
  %484 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %483, align 8
  %485 = icmp ne %struct.UT_hash_bucket* %484, null
  br i1 %485, label %487, label %486

; <label>:486:                                    ; preds = %431
  call void @exit(i32 -1) #10
  unreachable

; <label>:487:                                    ; preds = %431
  %488 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %489 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %488, i32 0, i32 2
  %490 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %489, i32 0, i32 0
  %491 = load %struct.UT_hash_table*, %struct.UT_hash_table** %490, align 8
  %492 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %491, i32 0, i32 0
  %493 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %492, align 8
  %494 = bitcast %struct.UT_hash_bucket* %493 to i8*
  call void @llvm.memset.p0i8.i64(i8* %494, i8 0, i64 512, i32 8, i1 false)
  br label %495

; <label>:495:                                    ; preds = %487
  br label %496

; <label>:496:                                    ; preds = %495
  br label %497

; <label>:497:                                    ; preds = %496
  %498 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  store %struct.hash_struct* %498, %struct.hash_struct** %1, align 8
  br label %546

; <label>:499:                                    ; preds = %395
  %500 = load %struct.hash_struct*, %struct.hash_struct** %1, align 8
  %501 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %500, i32 0, i32 2
  %502 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %501, i32 0, i32 0
  %503 = load %struct.UT_hash_table*, %struct.UT_hash_table** %502, align 8
  %504 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %505 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %505, i32 0, i32 0
  store %struct.UT_hash_table* %503, %struct.UT_hash_table** %506, align 8
  br label %507

; <label>:507:                                    ; preds = %499
  %508 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %509 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %509, i32 0, i32 2
  store i8* null, i8** %510, align 8
  %511 = load %struct.hash_struct*, %struct.hash_struct** %1, align 8
  %512 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %511, i32 0, i32 2
  %513 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %512, i32 0, i32 0
  %514 = load %struct.UT_hash_table*, %struct.UT_hash_table** %513, align 8
  %515 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %514, i32 0, i32 4
  %516 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %515, align 8
  %517 = bitcast %struct.UT_hash_handle* %516 to i8*
  %518 = load %struct.hash_struct*, %struct.hash_struct** %1, align 8
  %519 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %518, i32 0, i32 2
  %520 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %519, i32 0, i32 0
  %521 = load %struct.UT_hash_table*, %struct.UT_hash_table** %520, align 8
  %522 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %521, i32 0, i32 5
  %523 = load i64, i64* %522, align 8
  %524 = sub i64 0, %523
  %525 = getelementptr inbounds i8, i8* %517, i64 %524
  %526 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %527 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %527, i32 0, i32 1
  store i8* %525, i8** %528, align 8
  %529 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %530 = bitcast %struct.hash_struct* %529 to i8*
  %531 = load %struct.hash_struct*, %struct.hash_struct** %1, align 8
  %532 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %531, i32 0, i32 2
  %533 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %532, i32 0, i32 0
  %534 = load %struct.UT_hash_table*, %struct.UT_hash_table** %533, align 8
  %535 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %534, i32 0, i32 4
  %536 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %535, align 8
  %537 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %536, i32 0, i32 2
  store i8* %530, i8** %537, align 8
  %538 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %539 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %538, i32 0, i32 2
  %540 = load %struct.hash_struct*, %struct.hash_struct** %1, align 8
  %541 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %540, i32 0, i32 2
  %542 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %541, i32 0, i32 0
  %543 = load %struct.UT_hash_table*, %struct.UT_hash_table** %542, align 8
  %544 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %543, i32 0, i32 4
  store %struct.UT_hash_handle* %539, %struct.UT_hash_handle** %544, align 8
  br label %545

; <label>:545:                                    ; preds = %507
  br label %546

; <label>:546:                                    ; preds = %545, %497
  br label %547

; <label>:547:                                    ; preds = %546
  %548 = load %struct.hash_struct*, %struct.hash_struct** %1, align 8
  %549 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %549, i32 0, i32 0
  %551 = load %struct.UT_hash_table*, %struct.UT_hash_table** %550, align 8
  %552 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %551, i32 0, i32 3
  %553 = load i32, i32* %552, align 8
  %554 = add i32 %553, 1
  store i32 %554, i32* %552, align 8
  br label %555

; <label>:555:                                    ; preds = %547
  %556 = load i32, i32* %4, align 4
  %557 = load %struct.hash_struct*, %struct.hash_struct** %1, align 8
  %558 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %557, i32 0, i32 2
  %559 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %558, i32 0, i32 0
  %560 = load %struct.UT_hash_table*, %struct.UT_hash_table** %559, align 8
  %561 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 8
  %563 = sub i32 %562, 1
  %564 = and i32 %556, %563
  store i32 %564, i32* %9, align 4
  br label %565

; <label>:565:                                    ; preds = %555
  br label %566

; <label>:566:                                    ; preds = %565
  %567 = load i32, i32* %9, align 4
  %568 = zext i32 %567 to i64
  %569 = load %struct.hash_struct*, %struct.hash_struct** %1, align 8
  %570 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %569, i32 0, i32 2
  %571 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %570, i32 0, i32 0
  %572 = load %struct.UT_hash_table*, %struct.UT_hash_table** %571, align 8
  %573 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %572, i32 0, i32 0
  %574 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %573, align 8
  %575 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %574, i64 %568
  store %struct.UT_hash_bucket* %575, %struct.UT_hash_bucket** %10, align 8
  %576 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %10, align 8
  %577 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 8
  %579 = add i32 %578, 1
  store i32 %579, i32* %577, align 8
  %580 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %10, align 8
  %581 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %580, i32 0, i32 0
  %582 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %581, align 8
  %583 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %584 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %583, i32 0, i32 2
  %585 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %584, i32 0, i32 4
  store %struct.UT_hash_handle* %582, %struct.UT_hash_handle** %585, align 8
  %586 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %587 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %586, i32 0, i32 2
  %588 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %587, i32 0, i32 3
  store %struct.UT_hash_handle* null, %struct.UT_hash_handle** %588, align 8
  %589 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %10, align 8
  %590 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %589, i32 0, i32 0
  %591 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %590, align 8
  %592 = icmp ne %struct.UT_hash_handle* %591, null
  br i1 %592, label %593, label %600

; <label>:593:                                    ; preds = %566
  %594 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %595 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %594, i32 0, i32 2
  %596 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %10, align 8
  %597 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %596, i32 0, i32 0
  %598 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %597, align 8
  %599 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %598, i32 0, i32 3
  store %struct.UT_hash_handle* %595, %struct.UT_hash_handle** %599, align 8
  br label %600

; <label>:600:                                    ; preds = %593, %566
  %601 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %602 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %601, i32 0, i32 2
  %603 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %10, align 8
  %604 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %603, i32 0, i32 0
  store %struct.UT_hash_handle* %602, %struct.UT_hash_handle** %604, align 8
  %605 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %10, align 8
  %606 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 8
  %608 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %10, align 8
  %609 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %608, i32 0, i32 2
  %610 = load i32, i32* %609, align 4
  %611 = add i32 %610, 1
  %612 = mul i32 %611, 10
  %613 = icmp uge i32 %607, %612
  br i1 %613, label %614, label %870

; <label>:614:                                    ; preds = %600
  %615 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %616 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %615, i32 0, i32 2
  %617 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %616, i32 0, i32 0
  %618 = load %struct.UT_hash_table*, %struct.UT_hash_table** %617, align 8
  %619 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %618, i32 0, i32 9
  %620 = load i32, i32* %619, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %870, label %622

; <label>:622:                                    ; preds = %614
  br label %623

; <label>:623:                                    ; preds = %622
  %624 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %625 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %624, i32 0, i32 2
  %626 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %625, i32 0, i32 0
  %627 = load %struct.UT_hash_table*, %struct.UT_hash_table** %626, align 8
  %628 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 8
  %630 = zext i32 %629 to i64
  %631 = mul i64 2, %630
  %632 = mul i64 %631, 16
  %633 = call noalias i8* @malloc(i64 %632) #8
  %634 = bitcast i8* %633 to %struct.UT_hash_bucket*
  store %struct.UT_hash_bucket* %634, %struct.UT_hash_bucket** %15, align 8
  %635 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %15, align 8
  %636 = icmp ne %struct.UT_hash_bucket* %635, null
  br i1 %636, label %638, label %637

; <label>:637:                                    ; preds = %623
  call void @exit(i32 -1) #10
  unreachable

; <label>:638:                                    ; preds = %623
  %639 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %15, align 8
  %640 = bitcast %struct.UT_hash_bucket* %639 to i8*
  %641 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %642 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %641, i32 0, i32 2
  %643 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %642, i32 0, i32 0
  %644 = load %struct.UT_hash_table*, %struct.UT_hash_table** %643, align 8
  %645 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 8
  %647 = zext i32 %646 to i64
  %648 = mul i64 2, %647
  %649 = mul i64 %648, 16
  call void @llvm.memset.p0i8.i64(i8* %640, i8 0, i64 %649, i32 8, i1 false)
  %650 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %651 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %650, i32 0, i32 2
  %652 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %651, i32 0, i32 0
  %653 = load %struct.UT_hash_table*, %struct.UT_hash_table** %652, align 8
  %654 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %653, i32 0, i32 3
  %655 = load i32, i32* %654, align 8
  %656 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %657 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %656, i32 0, i32 2
  %658 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %657, i32 0, i32 0
  %659 = load %struct.UT_hash_table*, %struct.UT_hash_table** %658, align 8
  %660 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %659, i32 0, i32 2
  %661 = load i32, i32* %660, align 4
  %662 = add i32 %661, 1
  %663 = lshr i32 %655, %662
  %664 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %665 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %664, i32 0, i32 2
  %666 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %665, i32 0, i32 0
  %667 = load %struct.UT_hash_table*, %struct.UT_hash_table** %666, align 8
  %668 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %667, i32 0, i32 3
  %669 = load i32, i32* %668, align 8
  %670 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %671 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %670, i32 0, i32 2
  %672 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %671, i32 0, i32 0
  %673 = load %struct.UT_hash_table*, %struct.UT_hash_table** %672, align 8
  %674 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 8
  %676 = mul i32 %675, 2
  %677 = sub i32 %676, 1
  %678 = and i32 %669, %677
  %679 = icmp ne i32 %678, 0
  %680 = select i1 %679, i32 1, i32 0
  %681 = add i32 %663, %680
  %682 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %683 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %682, i32 0, i32 2
  %684 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %683, i32 0, i32 0
  %685 = load %struct.UT_hash_table*, %struct.UT_hash_table** %684, align 8
  %686 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %685, i32 0, i32 6
  store i32 %681, i32* %686, align 8
  %687 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %688 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %687, i32 0, i32 2
  %689 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %688, i32 0, i32 0
  %690 = load %struct.UT_hash_table*, %struct.UT_hash_table** %689, align 8
  %691 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %690, i32 0, i32 7
  store i32 0, i32* %691, align 4
  store i32 0, i32* %12, align 4
  br label %692

; <label>:692:                                    ; preds = %793, %638
  %693 = load i32, i32* %12, align 4
  %694 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %695 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %694, i32 0, i32 2
  %696 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %695, i32 0, i32 0
  %697 = load %struct.UT_hash_table*, %struct.UT_hash_table** %696, align 8
  %698 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %697, i32 0, i32 1
  %699 = load i32, i32* %698, align 8
  %700 = icmp ult i32 %693, %699
  br i1 %700, label %701, label %796

; <label>:701:                                    ; preds = %692
  %702 = load i32, i32* %12, align 4
  %703 = zext i32 %702 to i64
  %704 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %705 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %704, i32 0, i32 2
  %706 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %705, i32 0, i32 0
  %707 = load %struct.UT_hash_table*, %struct.UT_hash_table** %706, align 8
  %708 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %707, i32 0, i32 0
  %709 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %708, align 8
  %710 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %709, i64 %703
  %711 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %710, i32 0, i32 0
  %712 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %711, align 8
  store %struct.UT_hash_handle* %712, %struct.UT_hash_handle** %13, align 8
  br label %713

; <label>:713:                                    ; preds = %787, %701
  %714 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %13, align 8
  %715 = icmp ne %struct.UT_hash_handle* %714, null
  br i1 %715, label %716, label %792

; <label>:716:                                    ; preds = %713
  %717 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %13, align 8
  %718 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %717, i32 0, i32 4
  %719 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %718, align 8
  store %struct.UT_hash_handle* %719, %struct.UT_hash_handle** %14, align 8
  br label %720

; <label>:720:                                    ; preds = %716
  %721 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %13, align 8
  %722 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %721, i32 0, i32 7
  %723 = load i32, i32* %722, align 4
  %724 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %725 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %724, i32 0, i32 2
  %726 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %725, i32 0, i32 0
  %727 = load %struct.UT_hash_table*, %struct.UT_hash_table** %726, align 8
  %728 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %727, i32 0, i32 1
  %729 = load i32, i32* %728, align 8
  %730 = mul i32 %729, 2
  %731 = sub i32 %730, 1
  %732 = and i32 %723, %731
  store i32 %732, i32* %11, align 4
  br label %733

; <label>:733:                                    ; preds = %720
  %734 = load i32, i32* %11, align 4
  %735 = zext i32 %734 to i64
  %736 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %15, align 8
  %737 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %736, i64 %735
  store %struct.UT_hash_bucket* %737, %struct.UT_hash_bucket** %16, align 8
  %738 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %16, align 8
  %739 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %738, i32 0, i32 1
  %740 = load i32, i32* %739, align 8
  %741 = add i32 %740, 1
  store i32 %741, i32* %739, align 8
  %742 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %743 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %742, i32 0, i32 2
  %744 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %743, i32 0, i32 0
  %745 = load %struct.UT_hash_table*, %struct.UT_hash_table** %744, align 8
  %746 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %745, i32 0, i32 6
  %747 = load i32, i32* %746, align 8
  %748 = icmp ugt i32 %741, %747
  br i1 %748, label %749, label %769

; <label>:749:                                    ; preds = %733
  %750 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %751 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %750, i32 0, i32 2
  %752 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %751, i32 0, i32 0
  %753 = load %struct.UT_hash_table*, %struct.UT_hash_table** %752, align 8
  %754 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %753, i32 0, i32 7
  %755 = load i32, i32* %754, align 4
  %756 = add i32 %755, 1
  store i32 %756, i32* %754, align 4
  %757 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %16, align 8
  %758 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %757, i32 0, i32 1
  %759 = load i32, i32* %758, align 8
  %760 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %761 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %760, i32 0, i32 2
  %762 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %761, i32 0, i32 0
  %763 = load %struct.UT_hash_table*, %struct.UT_hash_table** %762, align 8
  %764 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %763, i32 0, i32 6
  %765 = load i32, i32* %764, align 8
  %766 = udiv i32 %759, %765
  %767 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %16, align 8
  %768 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %767, i32 0, i32 2
  store i32 %766, i32* %768, align 4
  br label %769

; <label>:769:                                    ; preds = %749, %733
  %770 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %13, align 8
  %771 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %770, i32 0, i32 3
  store %struct.UT_hash_handle* null, %struct.UT_hash_handle** %771, align 8
  %772 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %16, align 8
  %773 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %772, i32 0, i32 0
  %774 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %773, align 8
  %775 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %13, align 8
  %776 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %775, i32 0, i32 4
  store %struct.UT_hash_handle* %774, %struct.UT_hash_handle** %776, align 8
  %777 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %16, align 8
  %778 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %777, i32 0, i32 0
  %779 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %778, align 8
  %780 = icmp ne %struct.UT_hash_handle* %779, null
  br i1 %780, label %781, label %787

; <label>:781:                                    ; preds = %769
  %782 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %13, align 8
  %783 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %16, align 8
  %784 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %783, i32 0, i32 0
  %785 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %784, align 8
  %786 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %785, i32 0, i32 3
  store %struct.UT_hash_handle* %782, %struct.UT_hash_handle** %786, align 8
  br label %787

; <label>:787:                                    ; preds = %781, %769
  %788 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %13, align 8
  %789 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %16, align 8
  %790 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %789, i32 0, i32 0
  store %struct.UT_hash_handle* %788, %struct.UT_hash_handle** %790, align 8
  %791 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %14, align 8
  store %struct.UT_hash_handle* %791, %struct.UT_hash_handle** %13, align 8
  br label %713

; <label>:792:                                    ; preds = %713
  br label %793

; <label>:793:                                    ; preds = %792
  %794 = load i32, i32* %12, align 4
  %795 = add i32 %794, 1
  store i32 %795, i32* %12, align 4
  br label %692

; <label>:796:                                    ; preds = %692
  %797 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %798 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %797, i32 0, i32 2
  %799 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %798, i32 0, i32 0
  %800 = load %struct.UT_hash_table*, %struct.UT_hash_table** %799, align 8
  %801 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %800, i32 0, i32 0
  %802 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %801, align 8
  %803 = bitcast %struct.UT_hash_bucket* %802 to i8*
  call void @free(i8* %803) #8
  %804 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %805 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %804, i32 0, i32 2
  %806 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %805, i32 0, i32 0
  %807 = load %struct.UT_hash_table*, %struct.UT_hash_table** %806, align 8
  %808 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %807, i32 0, i32 1
  %809 = load i32, i32* %808, align 8
  %810 = mul i32 %809, 2
  store i32 %810, i32* %808, align 8
  %811 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %812 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %811, i32 0, i32 2
  %813 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %812, i32 0, i32 0
  %814 = load %struct.UT_hash_table*, %struct.UT_hash_table** %813, align 8
  %815 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %814, i32 0, i32 2
  %816 = load i32, i32* %815, align 4
  %817 = add i32 %816, 1
  store i32 %817, i32* %815, align 4
  %818 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %15, align 8
  %819 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %820 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %819, i32 0, i32 2
  %821 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %820, i32 0, i32 0
  %822 = load %struct.UT_hash_table*, %struct.UT_hash_table** %821, align 8
  %823 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %822, i32 0, i32 0
  store %struct.UT_hash_bucket* %818, %struct.UT_hash_bucket** %823, align 8
  %824 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %825 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %824, i32 0, i32 2
  %826 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %825, i32 0, i32 0
  %827 = load %struct.UT_hash_table*, %struct.UT_hash_table** %826, align 8
  %828 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %827, i32 0, i32 7
  %829 = load i32, i32* %828, align 4
  %830 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %831 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %830, i32 0, i32 2
  %832 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %831, i32 0, i32 0
  %833 = load %struct.UT_hash_table*, %struct.UT_hash_table** %832, align 8
  %834 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %833, i32 0, i32 3
  %835 = load i32, i32* %834, align 8
  %836 = lshr i32 %835, 1
  %837 = icmp ugt i32 %829, %836
  br i1 %837, label %838, label %846

; <label>:838:                                    ; preds = %796
  %839 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %840 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %839, i32 0, i32 2
  %841 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %840, i32 0, i32 0
  %842 = load %struct.UT_hash_table*, %struct.UT_hash_table** %841, align 8
  %843 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %842, i32 0, i32 8
  %844 = load i32, i32* %843, align 8
  %845 = add i32 %844, 1
  br label %847

; <label>:846:                                    ; preds = %796
  br label %847

; <label>:847:                                    ; preds = %846, %838
  %848 = phi i32 [ %845, %838 ], [ 0, %846 ]
  %849 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %850 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %849, i32 0, i32 2
  %851 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %850, i32 0, i32 0
  %852 = load %struct.UT_hash_table*, %struct.UT_hash_table** %851, align 8
  %853 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %852, i32 0, i32 8
  store i32 %848, i32* %853, align 8
  %854 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %855 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %854, i32 0, i32 2
  %856 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %855, i32 0, i32 0
  %857 = load %struct.UT_hash_table*, %struct.UT_hash_table** %856, align 8
  %858 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %857, i32 0, i32 8
  %859 = load i32, i32* %858, align 8
  %860 = icmp ugt i32 %859, 1
  br i1 %860, label %861, label %867

; <label>:861:                                    ; preds = %847
  %862 = load %struct.hash_struct*, %struct.hash_struct** %2, align 8
  %863 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %862, i32 0, i32 2
  %864 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %863, i32 0, i32 0
  %865 = load %struct.UT_hash_table*, %struct.UT_hash_table** %864, align 8
  %866 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %865, i32 0, i32 9
  store i32 1, i32* %866, align 4
  br label %867

; <label>:867:                                    ; preds = %861, %847
  br label %868

; <label>:868:                                    ; preds = %867
  br label %869

; <label>:869:                                    ; preds = %868
  br label %870

; <label>:870:                                    ; preds = %869, %614, %600
  br label %871

; <label>:871:                                    ; preds = %870
  br label %872

; <label>:872:                                    ; preds = %871
  br label %873

; <label>:873:                                    ; preds = %872
  br label %874

; <label>:874:                                    ; preds = %873
  %875 = load %struct.hash_struct*, %struct.hash_struct** %1, align 8
  %876 = ptrtoint %struct.hash_struct* %875 to i64
  %877 = or i64 %876, 7
  ret i64 %877
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: uwtable
define i64 @prim_hash_45ref(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hash_struct*, align 8
  %6 = alloca %struct.hash_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, 7
  %16 = icmp ne i64 %15, 7
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i32 0, i32 0))
  br label %18

; <label>:18:                                     ; preds = %17, %2
  store %struct.hash_struct* null, %struct.hash_struct** %5, align 8
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  %22 = bitcast i64* %21 to %struct.hash_struct*
  store %struct.hash_struct* %22, %struct.hash_struct** %6, align 8
  store i32 8, i32* %7, align 4
  br label %23

; <label>:23:                                     ; preds = %18
  br label %24

; <label>:24:                                     ; preds = %23
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = bitcast i64* %4 to i8*
  store i8* %26, i8** %12, align 8
  store i32 -17973521, i32* %8, align 4
  store i32 -1640531527, i32* %10, align 4
  store i32 -1640531527, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %11, align 4
  br label %28

; <label>:28:                                     ; preds = %195, %25
  %29 = load i32, i32* %11, align 4
  %30 = icmp uge i32 %29, 12
  br i1 %30, label %31, label %200

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = add i32 %35, %40
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 16
  %47 = add i32 %41, %46
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 24
  %53 = add i32 %47, %52
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 5
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 8
  %65 = add i32 %59, %64
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 6
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 16
  %71 = add i32 %65, %70
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 7
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 24
  %77 = add i32 %71, %76
  %78 = load i32, i32* %10, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 9
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, 8
  %89 = add i32 %83, %88
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 10
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl i32 %93, 16
  %95 = add i32 %89, %94
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 11
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 24
  %101 = add i32 %95, %100
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

; <label>:104:                                    ; preds = %31
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sub i32 %109, %108
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = lshr i32 %111, 13
  %113 = load i32, i32* %9, align 4
  %114 = xor i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = sub i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = sub i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %9, align 4
  %122 = shl i32 %121, 8
  %123 = load i32, i32* %10, align 4
  %124 = xor i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  %127 = sub i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sub i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %10, align 4
  %132 = lshr i32 %131, 13
  %133 = load i32, i32* %8, align 4
  %134 = xor i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %9, align 4
  %137 = sub i32 %136, %135
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sub i32 %139, %138
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %8, align 4
  %142 = lshr i32 %141, 12
  %143 = load i32, i32* %9, align 4
  %144 = xor i32 %143, %142
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %10, align 4
  %147 = sub i32 %146, %145
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = sub i32 %149, %148
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %9, align 4
  %152 = shl i32 %151, 16
  %153 = load i32, i32* %10, align 4
  %154 = xor i32 %153, %152
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %8, align 4
  %157 = sub i32 %156, %155
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %8, align 4
  %160 = sub i32 %159, %158
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %10, align 4
  %162 = lshr i32 %161, 5
  %163 = load i32, i32* %8, align 4
  %164 = xor i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %9, align 4
  %167 = sub i32 %166, %165
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = sub i32 %169, %168
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %8, align 4
  %172 = lshr i32 %171, 3
  %173 = load i32, i32* %9, align 4
  %174 = xor i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %10, align 4
  %177 = sub i32 %176, %175
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = sub i32 %179, %178
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %9, align 4
  %182 = shl i32 %181, 10
  %183 = load i32, i32* %10, align 4
  %184 = xor i32 %183, %182
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %8, align 4
  %187 = sub i32 %186, %185
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %8, align 4
  %190 = sub i32 %189, %188
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %10, align 4
  %192 = lshr i32 %191, 15
  %193 = load i32, i32* %8, align 4
  %194 = xor i32 %193, %192
  store i32 %194, i32* %8, align 4
  br label %195

; <label>:195:                                    ; preds = %104
  %196 = load i8*, i8** %12, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 12
  store i8* %197, i8** %12, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sub i32 %198, 12
  store i32 %199, i32* %11, align 4
  br label %28

; <label>:200:                                    ; preds = %28
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %8, align 4
  %203 = add i32 %202, %201
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %11, align 4
  switch i32 %204, label %291 [
    i32 11, label %205
    i32 10, label %213
    i32 9, label %221
    i32 8, label %229
    i32 7, label %237
    i32 6, label %245
    i32 5, label %253
    i32 4, label %260
    i32 3, label %268
    i32 2, label %276
    i32 1, label %284
  ]

; <label>:205:                                    ; preds = %200
  %206 = load i8*, i8** %12, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 10
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = shl i32 %209, 24
  %211 = load i32, i32* %8, align 4
  %212 = add i32 %211, %210
  store i32 %212, i32* %8, align 4
  br label %213

; <label>:213:                                    ; preds = %200, %205
  %214 = load i8*, i8** %12, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 9
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = shl i32 %217, 16
  %219 = load i32, i32* %8, align 4
  %220 = add i32 %219, %218
  store i32 %220, i32* %8, align 4
  br label %221

; <label>:221:                                    ; preds = %200, %213
  %222 = load i8*, i8** %12, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 8
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = shl i32 %225, 8
  %227 = load i32, i32* %8, align 4
  %228 = add i32 %227, %226
  store i32 %228, i32* %8, align 4
  br label %229

; <label>:229:                                    ; preds = %200, %221
  %230 = load i8*, i8** %12, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 7
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = shl i32 %233, 24
  %235 = load i32, i32* %10, align 4
  %236 = add i32 %235, %234
  store i32 %236, i32* %10, align 4
  br label %237

; <label>:237:                                    ; preds = %200, %229
  %238 = load i8*, i8** %12, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 6
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = shl i32 %241, 16
  %243 = load i32, i32* %10, align 4
  %244 = add i32 %243, %242
  store i32 %244, i32* %10, align 4
  br label %245

; <label>:245:                                    ; preds = %200, %237
  %246 = load i8*, i8** %12, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 5
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = shl i32 %249, 8
  %251 = load i32, i32* %10, align 4
  %252 = add i32 %251, %250
  store i32 %252, i32* %10, align 4
  br label %253

; <label>:253:                                    ; preds = %200, %245
  %254 = load i8*, i8** %12, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 4
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = load i32, i32* %10, align 4
  %259 = add i32 %258, %257
  store i32 %259, i32* %10, align 4
  br label %260

; <label>:260:                                    ; preds = %200, %253
  %261 = load i8*, i8** %12, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 3
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = shl i32 %264, 24
  %266 = load i32, i32* %9, align 4
  %267 = add i32 %266, %265
  store i32 %267, i32* %9, align 4
  br label %268

; <label>:268:                                    ; preds = %200, %260
  %269 = load i8*, i8** %12, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 2
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = shl i32 %272, 16
  %274 = load i32, i32* %9, align 4
  %275 = add i32 %274, %273
  store i32 %275, i32* %9, align 4
  br label %276

; <label>:276:                                    ; preds = %200, %268
  %277 = load i8*, i8** %12, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 1
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = shl i32 %280, 8
  %282 = load i32, i32* %9, align 4
  %283 = add i32 %282, %281
  store i32 %283, i32* %9, align 4
  br label %284

; <label>:284:                                    ; preds = %200, %276
  %285 = load i8*, i8** %12, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 0
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = load i32, i32* %9, align 4
  %290 = add i32 %289, %288
  store i32 %290, i32* %9, align 4
  br label %291

; <label>:291:                                    ; preds = %284, %200
  br label %292

; <label>:292:                                    ; preds = %291
  %293 = load i32, i32* %10, align 4
  %294 = load i32, i32* %9, align 4
  %295 = sub i32 %294, %293
  store i32 %295, i32* %9, align 4
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* %9, align 4
  %298 = sub i32 %297, %296
  store i32 %298, i32* %9, align 4
  %299 = load i32, i32* %8, align 4
  %300 = lshr i32 %299, 13
  %301 = load i32, i32* %9, align 4
  %302 = xor i32 %301, %300
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* %10, align 4
  %305 = sub i32 %304, %303
  store i32 %305, i32* %10, align 4
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* %10, align 4
  %308 = sub i32 %307, %306
  store i32 %308, i32* %10, align 4
  %309 = load i32, i32* %9, align 4
  %310 = shl i32 %309, 8
  %311 = load i32, i32* %10, align 4
  %312 = xor i32 %311, %310
  store i32 %312, i32* %10, align 4
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %8, align 4
  %315 = sub i32 %314, %313
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* %8, align 4
  %318 = sub i32 %317, %316
  store i32 %318, i32* %8, align 4
  %319 = load i32, i32* %10, align 4
  %320 = lshr i32 %319, 13
  %321 = load i32, i32* %8, align 4
  %322 = xor i32 %321, %320
  store i32 %322, i32* %8, align 4
  %323 = load i32, i32* %10, align 4
  %324 = load i32, i32* %9, align 4
  %325 = sub i32 %324, %323
  store i32 %325, i32* %9, align 4
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* %9, align 4
  %328 = sub i32 %327, %326
  store i32 %328, i32* %9, align 4
  %329 = load i32, i32* %8, align 4
  %330 = lshr i32 %329, 12
  %331 = load i32, i32* %9, align 4
  %332 = xor i32 %331, %330
  store i32 %332, i32* %9, align 4
  %333 = load i32, i32* %8, align 4
  %334 = load i32, i32* %10, align 4
  %335 = sub i32 %334, %333
  store i32 %335, i32* %10, align 4
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* %10, align 4
  %338 = sub i32 %337, %336
  store i32 %338, i32* %10, align 4
  %339 = load i32, i32* %9, align 4
  %340 = shl i32 %339, 16
  %341 = load i32, i32* %10, align 4
  %342 = xor i32 %341, %340
  store i32 %342, i32* %10, align 4
  %343 = load i32, i32* %9, align 4
  %344 = load i32, i32* %8, align 4
  %345 = sub i32 %344, %343
  store i32 %345, i32* %8, align 4
  %346 = load i32, i32* %10, align 4
  %347 = load i32, i32* %8, align 4
  %348 = sub i32 %347, %346
  store i32 %348, i32* %8, align 4
  %349 = load i32, i32* %10, align 4
  %350 = lshr i32 %349, 5
  %351 = load i32, i32* %8, align 4
  %352 = xor i32 %351, %350
  store i32 %352, i32* %8, align 4
  %353 = load i32, i32* %10, align 4
  %354 = load i32, i32* %9, align 4
  %355 = sub i32 %354, %353
  store i32 %355, i32* %9, align 4
  %356 = load i32, i32* %8, align 4
  %357 = load i32, i32* %9, align 4
  %358 = sub i32 %357, %356
  store i32 %358, i32* %9, align 4
  %359 = load i32, i32* %8, align 4
  %360 = lshr i32 %359, 3
  %361 = load i32, i32* %9, align 4
  %362 = xor i32 %361, %360
  store i32 %362, i32* %9, align 4
  %363 = load i32, i32* %8, align 4
  %364 = load i32, i32* %10, align 4
  %365 = sub i32 %364, %363
  store i32 %365, i32* %10, align 4
  %366 = load i32, i32* %9, align 4
  %367 = load i32, i32* %10, align 4
  %368 = sub i32 %367, %366
  store i32 %368, i32* %10, align 4
  %369 = load i32, i32* %9, align 4
  %370 = shl i32 %369, 10
  %371 = load i32, i32* %10, align 4
  %372 = xor i32 %371, %370
  store i32 %372, i32* %10, align 4
  %373 = load i32, i32* %9, align 4
  %374 = load i32, i32* %8, align 4
  %375 = sub i32 %374, %373
  store i32 %375, i32* %8, align 4
  %376 = load i32, i32* %10, align 4
  %377 = load i32, i32* %8, align 4
  %378 = sub i32 %377, %376
  store i32 %378, i32* %8, align 4
  %379 = load i32, i32* %10, align 4
  %380 = lshr i32 %379, 15
  %381 = load i32, i32* %8, align 4
  %382 = xor i32 %381, %380
  store i32 %382, i32* %8, align 4
  br label %383

; <label>:383:                                    ; preds = %292
  br label %384

; <label>:384:                                    ; preds = %383
  br label %385

; <label>:385:                                    ; preds = %384
  br label %386

; <label>:386:                                    ; preds = %385
  store %struct.hash_struct* null, %struct.hash_struct** %5, align 8
  %387 = load %struct.hash_struct*, %struct.hash_struct** %6, align 8
  %388 = icmp ne %struct.hash_struct* %387, null
  br i1 %388, label %389, label %496

; <label>:389:                                    ; preds = %386
  br label %390

; <label>:390:                                    ; preds = %389
  %391 = load i32, i32* %8, align 4
  %392 = load %struct.hash_struct*, %struct.hash_struct** %6, align 8
  %393 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %393, i32 0, i32 0
  %395 = load %struct.UT_hash_table*, %struct.UT_hash_table** %394, align 8
  %396 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = sub i32 %397, 1
  %399 = and i32 %391, %398
  store i32 %399, i32* %13, align 4
  br label %400

; <label>:400:                                    ; preds = %390
  br label %401

; <label>:401:                                    ; preds = %400
  %402 = load i32, i32* %13, align 4
  %403 = zext i32 %402 to i64
  %404 = load %struct.hash_struct*, %struct.hash_struct** %6, align 8
  %405 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %405, i32 0, i32 0
  %407 = load %struct.UT_hash_table*, %struct.UT_hash_table** %406, align 8
  %408 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %407, i32 0, i32 0
  %409 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %408, align 8
  %410 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %409, i64 %403
  %411 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %410, i32 0, i32 0
  %412 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %411, align 8
  %413 = icmp ne %struct.UT_hash_handle* %412, null
  br i1 %413, label %414, label %438

; <label>:414:                                    ; preds = %401
  br label %415

; <label>:415:                                    ; preds = %414
  %416 = load i32, i32* %13, align 4
  %417 = zext i32 %416 to i64
  %418 = load %struct.hash_struct*, %struct.hash_struct** %6, align 8
  %419 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %419, i32 0, i32 0
  %421 = load %struct.UT_hash_table*, %struct.UT_hash_table** %420, align 8
  %422 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %421, i32 0, i32 0
  %423 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %422, align 8
  %424 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %423, i64 %417
  %425 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %424, i32 0, i32 0
  %426 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %425, align 8
  %427 = bitcast %struct.UT_hash_handle* %426 to i8*
  %428 = load %struct.hash_struct*, %struct.hash_struct** %6, align 8
  %429 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %428, i32 0, i32 2
  %430 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %429, i32 0, i32 0
  %431 = load %struct.UT_hash_table*, %struct.UT_hash_table** %430, align 8
  %432 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %431, i32 0, i32 5
  %433 = load i64, i64* %432, align 8
  %434 = sub i64 0, %433
  %435 = getelementptr inbounds i8, i8* %427, i64 %434
  %436 = bitcast i8* %435 to %struct.hash_struct*
  store %struct.hash_struct* %436, %struct.hash_struct** %5, align 8
  br label %437

; <label>:437:                                    ; preds = %415
  br label %439

; <label>:438:                                    ; preds = %401
  store %struct.hash_struct* null, %struct.hash_struct** %5, align 8
  br label %439

; <label>:439:                                    ; preds = %438, %437
  br label %440

; <label>:440:                                    ; preds = %493, %439
  %441 = load %struct.hash_struct*, %struct.hash_struct** %5, align 8
  %442 = icmp ne %struct.hash_struct* %441, null
  br i1 %442, label %443, label %494

; <label>:443:                                    ; preds = %440
  %444 = load %struct.hash_struct*, %struct.hash_struct** %5, align 8
  %445 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %445, i32 0, i32 7
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* %8, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %469

; <label>:450:                                    ; preds = %443
  %451 = load %struct.hash_struct*, %struct.hash_struct** %5, align 8
  %452 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %452, i32 0, i32 6
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* %7, align 4
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %457, label %469

; <label>:457:                                    ; preds = %450
  %458 = load %struct.hash_struct*, %struct.hash_struct** %5, align 8
  %459 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %458, i32 0, i32 2
  %460 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %459, i32 0, i32 5
  %461 = load i8*, i8** %460, align 8
  %462 = bitcast i64* %4 to i8*
  %463 = load i32, i32* %7, align 4
  %464 = sext i32 %463 to i64
  %465 = call i32 @memcmp(i8* %461, i8* %462, i64 %464) #9
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %468

; <label>:467:                                    ; preds = %457
  br label %494

; <label>:468:                                    ; preds = %457
  br label %469

; <label>:469:                                    ; preds = %468, %450, %443
  %470 = load %struct.hash_struct*, %struct.hash_struct** %5, align 8
  %471 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %470, i32 0, i32 2
  %472 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %471, i32 0, i32 4
  %473 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %472, align 8
  %474 = icmp ne %struct.UT_hash_handle* %473, null
  br i1 %474, label %475, label %492

; <label>:475:                                    ; preds = %469
  br label %476

; <label>:476:                                    ; preds = %475
  %477 = load %struct.hash_struct*, %struct.hash_struct** %5, align 8
  %478 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %477, i32 0, i32 2
  %479 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %478, i32 0, i32 4
  %480 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %479, align 8
  %481 = bitcast %struct.UT_hash_handle* %480 to i8*
  %482 = load %struct.hash_struct*, %struct.hash_struct** %6, align 8
  %483 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %483, i32 0, i32 0
  %485 = load %struct.UT_hash_table*, %struct.UT_hash_table** %484, align 8
  %486 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %485, i32 0, i32 5
  %487 = load i64, i64* %486, align 8
  %488 = sub i64 0, %487
  %489 = getelementptr inbounds i8, i8* %481, i64 %488
  %490 = bitcast i8* %489 to %struct.hash_struct*
  store %struct.hash_struct* %490, %struct.hash_struct** %5, align 8
  br label %491

; <label>:491:                                    ; preds = %476
  br label %493

; <label>:492:                                    ; preds = %469
  store %struct.hash_struct* null, %struct.hash_struct** %5, align 8
  br label %493

; <label>:493:                                    ; preds = %492, %491
  br label %440

; <label>:494:                                    ; preds = %467, %440
  br label %495

; <label>:495:                                    ; preds = %494
  br label %496

; <label>:496:                                    ; preds = %495, %386
  br label %497

; <label>:497:                                    ; preds = %496
  br label %498

; <label>:498:                                    ; preds = %497
  %499 = load %struct.hash_struct*, %struct.hash_struct** %5, align 8
  %500 = icmp eq %struct.hash_struct* %499, null
  br i1 %500, label %501, label %502

; <label>:501:                                    ; preds = %498
  call void @fatal_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0))
  br label %502

; <label>:502:                                    ; preds = %501, %498
  %503 = load %struct.hash_struct*, %struct.hash_struct** %5, align 8
  %504 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %503, i32 0, i32 1
  %505 = load i64, i64* %504, align 8
  ret i64 %505
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: uwtable
define i64 @applyprim_hash_45ref(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_hash_45ref(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: uwtable
define i64 @prim_hash_45set_33(i64, i64, i64) #2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hash_struct*, align 8
  %8 = alloca %struct.hash_struct*, align 8
  %9 = alloca %struct.hash_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.UT_hash_handle*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.UT_hash_bucket*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.UT_hash_bucket*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.UT_hash_handle*, align 8
  %25 = alloca %struct.UT_hash_handle*, align 8
  %26 = alloca %struct.UT_hash_bucket*, align 8
  %27 = alloca %struct.UT_hash_bucket*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, 7
  %30 = icmp ne i64 %29, 7
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %3
  call void @fatal_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i32 0, i32 0))
  br label %32

; <label>:32:                                     ; preds = %31, %3
  %33 = call noalias i8* @malloc(i64 72) #8
  %34 = bitcast i8* %33 to %struct.hash_struct*
  store %struct.hash_struct* %34, %struct.hash_struct** %7, align 8
  %35 = load i64, i64* @allocated, align 8
  %36 = add i64 %35, 72
  %37 = icmp ugt i64 %36, 268435456
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %32
  call void @fatal_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %39

; <label>:39:                                     ; preds = %38, %32
  %40 = load i64, i64* @allocated, align 8
  %41 = add i64 %40, 72
  store i64 %41, i64* @allocated, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %44 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %47 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %4, align 8
  %49 = and i64 %48, -8
  %50 = inttoptr i64 %49 to i64*
  %51 = bitcast i64* %50 to %struct.hash_struct*
  store %struct.hash_struct* %51, %struct.hash_struct** %8, align 8
  store %struct.hash_struct* null, %struct.hash_struct** %9, align 8
  store i32 8, i32* %10, align 4
  br label %52

; <label>:52:                                     ; preds = %39
  br label %53

; <label>:53:                                     ; preds = %52
  br label %54

; <label>:54:                                     ; preds = %53
  %55 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %56 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %55, i32 0, i32 0
  %57 = bitcast i64* %56 to i8*
  store i8* %57, i8** %15, align 8
  store i32 -17973521, i32* %11, align 4
  store i32 -1640531527, i32* %13, align 4
  store i32 -1640531527, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %14, align 4
  br label %59

; <label>:59:                                     ; preds = %226, %54
  %60 = load i32, i32* %14, align 4
  %61 = icmp uge i32 %60, 12
  br i1 %61, label %62, label %231

; <label>:62:                                     ; preds = %59
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8*, i8** %15, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 8
  %72 = add i32 %66, %71
  %73 = load i8*, i8** %15, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 16
  %78 = add i32 %72, %77
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 24
  %84 = add i32 %78, %83
  %85 = load i32, i32* %12, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load i8*, i8** %15, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8*, i8** %15, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 5
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %94, 8
  %96 = add i32 %90, %95
  %97 = load i8*, i8** %15, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 6
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl i32 %100, 16
  %102 = add i32 %96, %101
  %103 = load i8*, i8** %15, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 7
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl i32 %106, 24
  %108 = add i32 %102, %107
  %109 = load i32, i32* %13, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load i8*, i8** %15, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 8
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8*, i8** %15, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 9
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 %118, 8
  %120 = add i32 %114, %119
  %121 = load i8*, i8** %15, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 10
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %124, 16
  %126 = add i32 %120, %125
  %127 = load i8*, i8** %15, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 11
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = shl i32 %130, 24
  %132 = add i32 %126, %131
  %133 = load i32, i32* %11, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %11, align 4
  br label %135

; <label>:135:                                    ; preds = %62
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sub i32 %137, %136
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = sub i32 %140, %139
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %11, align 4
  %143 = lshr i32 %142, 13
  %144 = load i32, i32* %12, align 4
  %145 = xor i32 %144, %143
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %13, align 4
  %148 = sub i32 %147, %146
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = sub i32 %150, %149
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %12, align 4
  %153 = shl i32 %152, 8
  %154 = load i32, i32* %13, align 4
  %155 = xor i32 %154, %153
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %11, align 4
  %158 = sub i32 %157, %156
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %11, align 4
  %161 = sub i32 %160, %159
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %13, align 4
  %163 = lshr i32 %162, 13
  %164 = load i32, i32* %11, align 4
  %165 = xor i32 %164, %163
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %12, align 4
  %168 = sub i32 %167, %166
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %12, align 4
  %171 = sub i32 %170, %169
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %11, align 4
  %173 = lshr i32 %172, 12
  %174 = load i32, i32* %12, align 4
  %175 = xor i32 %174, %173
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %13, align 4
  %178 = sub i32 %177, %176
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %13, align 4
  %181 = sub i32 %180, %179
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %12, align 4
  %183 = shl i32 %182, 16
  %184 = load i32, i32* %13, align 4
  %185 = xor i32 %184, %183
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %11, align 4
  %188 = sub i32 %187, %186
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %11, align 4
  %191 = sub i32 %190, %189
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %13, align 4
  %193 = lshr i32 %192, 5
  %194 = load i32, i32* %11, align 4
  %195 = xor i32 %194, %193
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %12, align 4
  %198 = sub i32 %197, %196
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %12, align 4
  %201 = sub i32 %200, %199
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %11, align 4
  %203 = lshr i32 %202, 3
  %204 = load i32, i32* %12, align 4
  %205 = xor i32 %204, %203
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %13, align 4
  %208 = sub i32 %207, %206
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* %13, align 4
  %211 = sub i32 %210, %209
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %12, align 4
  %213 = shl i32 %212, 10
  %214 = load i32, i32* %13, align 4
  %215 = xor i32 %214, %213
  store i32 %215, i32* %13, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %11, align 4
  %218 = sub i32 %217, %216
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %11, align 4
  %221 = sub i32 %220, %219
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %13, align 4
  %223 = lshr i32 %222, 15
  %224 = load i32, i32* %11, align 4
  %225 = xor i32 %224, %223
  store i32 %225, i32* %11, align 4
  br label %226

; <label>:226:                                    ; preds = %135
  %227 = load i8*, i8** %15, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 12
  store i8* %228, i8** %15, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sub i32 %229, 12
  store i32 %230, i32* %14, align 4
  br label %59

; <label>:231:                                    ; preds = %59
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %11, align 4
  %234 = add i32 %233, %232
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* %14, align 4
  switch i32 %235, label %322 [
    i32 11, label %236
    i32 10, label %244
    i32 9, label %252
    i32 8, label %260
    i32 7, label %268
    i32 6, label %276
    i32 5, label %284
    i32 4, label %291
    i32 3, label %299
    i32 2, label %307
    i32 1, label %315
  ]

; <label>:236:                                    ; preds = %231
  %237 = load i8*, i8** %15, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 10
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = shl i32 %240, 24
  %242 = load i32, i32* %11, align 4
  %243 = add i32 %242, %241
  store i32 %243, i32* %11, align 4
  br label %244

; <label>:244:                                    ; preds = %231, %236
  %245 = load i8*, i8** %15, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 9
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = shl i32 %248, 16
  %250 = load i32, i32* %11, align 4
  %251 = add i32 %250, %249
  store i32 %251, i32* %11, align 4
  br label %252

; <label>:252:                                    ; preds = %231, %244
  %253 = load i8*, i8** %15, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 8
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = shl i32 %256, 8
  %258 = load i32, i32* %11, align 4
  %259 = add i32 %258, %257
  store i32 %259, i32* %11, align 4
  br label %260

; <label>:260:                                    ; preds = %231, %252
  %261 = load i8*, i8** %15, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 7
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = shl i32 %264, 24
  %266 = load i32, i32* %13, align 4
  %267 = add i32 %266, %265
  store i32 %267, i32* %13, align 4
  br label %268

; <label>:268:                                    ; preds = %231, %260
  %269 = load i8*, i8** %15, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 6
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = shl i32 %272, 16
  %274 = load i32, i32* %13, align 4
  %275 = add i32 %274, %273
  store i32 %275, i32* %13, align 4
  br label %276

; <label>:276:                                    ; preds = %231, %268
  %277 = load i8*, i8** %15, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 5
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = shl i32 %280, 8
  %282 = load i32, i32* %13, align 4
  %283 = add i32 %282, %281
  store i32 %283, i32* %13, align 4
  br label %284

; <label>:284:                                    ; preds = %231, %276
  %285 = load i8*, i8** %15, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 4
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = load i32, i32* %13, align 4
  %290 = add i32 %289, %288
  store i32 %290, i32* %13, align 4
  br label %291

; <label>:291:                                    ; preds = %231, %284
  %292 = load i8*, i8** %15, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 3
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = shl i32 %295, 24
  %297 = load i32, i32* %12, align 4
  %298 = add i32 %297, %296
  store i32 %298, i32* %12, align 4
  br label %299

; <label>:299:                                    ; preds = %231, %291
  %300 = load i8*, i8** %15, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 2
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = shl i32 %303, 16
  %305 = load i32, i32* %12, align 4
  %306 = add i32 %305, %304
  store i32 %306, i32* %12, align 4
  br label %307

; <label>:307:                                    ; preds = %231, %299
  %308 = load i8*, i8** %15, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 1
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = shl i32 %311, 8
  %313 = load i32, i32* %12, align 4
  %314 = add i32 %313, %312
  store i32 %314, i32* %12, align 4
  br label %315

; <label>:315:                                    ; preds = %231, %307
  %316 = load i8*, i8** %15, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 0
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  %320 = load i32, i32* %12, align 4
  %321 = add i32 %320, %319
  store i32 %321, i32* %12, align 4
  br label %322

; <label>:322:                                    ; preds = %315, %231
  br label %323

; <label>:323:                                    ; preds = %322
  %324 = load i32, i32* %13, align 4
  %325 = load i32, i32* %12, align 4
  %326 = sub i32 %325, %324
  store i32 %326, i32* %12, align 4
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* %12, align 4
  %329 = sub i32 %328, %327
  store i32 %329, i32* %12, align 4
  %330 = load i32, i32* %11, align 4
  %331 = lshr i32 %330, 13
  %332 = load i32, i32* %12, align 4
  %333 = xor i32 %332, %331
  store i32 %333, i32* %12, align 4
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* %13, align 4
  %336 = sub i32 %335, %334
  store i32 %336, i32* %13, align 4
  %337 = load i32, i32* %12, align 4
  %338 = load i32, i32* %13, align 4
  %339 = sub i32 %338, %337
  store i32 %339, i32* %13, align 4
  %340 = load i32, i32* %12, align 4
  %341 = shl i32 %340, 8
  %342 = load i32, i32* %13, align 4
  %343 = xor i32 %342, %341
  store i32 %343, i32* %13, align 4
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* %11, align 4
  %346 = sub i32 %345, %344
  store i32 %346, i32* %11, align 4
  %347 = load i32, i32* %13, align 4
  %348 = load i32, i32* %11, align 4
  %349 = sub i32 %348, %347
  store i32 %349, i32* %11, align 4
  %350 = load i32, i32* %13, align 4
  %351 = lshr i32 %350, 13
  %352 = load i32, i32* %11, align 4
  %353 = xor i32 %352, %351
  store i32 %353, i32* %11, align 4
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %12, align 4
  %356 = sub i32 %355, %354
  store i32 %356, i32* %12, align 4
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* %12, align 4
  %359 = sub i32 %358, %357
  store i32 %359, i32* %12, align 4
  %360 = load i32, i32* %11, align 4
  %361 = lshr i32 %360, 12
  %362 = load i32, i32* %12, align 4
  %363 = xor i32 %362, %361
  store i32 %363, i32* %12, align 4
  %364 = load i32, i32* %11, align 4
  %365 = load i32, i32* %13, align 4
  %366 = sub i32 %365, %364
  store i32 %366, i32* %13, align 4
  %367 = load i32, i32* %12, align 4
  %368 = load i32, i32* %13, align 4
  %369 = sub i32 %368, %367
  store i32 %369, i32* %13, align 4
  %370 = load i32, i32* %12, align 4
  %371 = shl i32 %370, 16
  %372 = load i32, i32* %13, align 4
  %373 = xor i32 %372, %371
  store i32 %373, i32* %13, align 4
  %374 = load i32, i32* %12, align 4
  %375 = load i32, i32* %11, align 4
  %376 = sub i32 %375, %374
  store i32 %376, i32* %11, align 4
  %377 = load i32, i32* %13, align 4
  %378 = load i32, i32* %11, align 4
  %379 = sub i32 %378, %377
  store i32 %379, i32* %11, align 4
  %380 = load i32, i32* %13, align 4
  %381 = lshr i32 %380, 5
  %382 = load i32, i32* %11, align 4
  %383 = xor i32 %382, %381
  store i32 %383, i32* %11, align 4
  %384 = load i32, i32* %13, align 4
  %385 = load i32, i32* %12, align 4
  %386 = sub i32 %385, %384
  store i32 %386, i32* %12, align 4
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* %12, align 4
  %389 = sub i32 %388, %387
  store i32 %389, i32* %12, align 4
  %390 = load i32, i32* %11, align 4
  %391 = lshr i32 %390, 3
  %392 = load i32, i32* %12, align 4
  %393 = xor i32 %392, %391
  store i32 %393, i32* %12, align 4
  %394 = load i32, i32* %11, align 4
  %395 = load i32, i32* %13, align 4
  %396 = sub i32 %395, %394
  store i32 %396, i32* %13, align 4
  %397 = load i32, i32* %12, align 4
  %398 = load i32, i32* %13, align 4
  %399 = sub i32 %398, %397
  store i32 %399, i32* %13, align 4
  %400 = load i32, i32* %12, align 4
  %401 = shl i32 %400, 10
  %402 = load i32, i32* %13, align 4
  %403 = xor i32 %402, %401
  store i32 %403, i32* %13, align 4
  %404 = load i32, i32* %12, align 4
  %405 = load i32, i32* %11, align 4
  %406 = sub i32 %405, %404
  store i32 %406, i32* %11, align 4
  %407 = load i32, i32* %13, align 4
  %408 = load i32, i32* %11, align 4
  %409 = sub i32 %408, %407
  store i32 %409, i32* %11, align 4
  %410 = load i32, i32* %13, align 4
  %411 = lshr i32 %410, 15
  %412 = load i32, i32* %11, align 4
  %413 = xor i32 %412, %411
  store i32 %413, i32* %11, align 4
  br label %414

; <label>:414:                                    ; preds = %323
  br label %415

; <label>:415:                                    ; preds = %414
  br label %416

; <label>:416:                                    ; preds = %415
  br label %417

; <label>:417:                                    ; preds = %416
  store %struct.hash_struct* null, %struct.hash_struct** %9, align 8
  br label %418

; <label>:418:                                    ; preds = %417
  store %struct.hash_struct* null, %struct.hash_struct** %9, align 8
  %419 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %420 = icmp ne %struct.hash_struct* %419, null
  br i1 %420, label %421, label %530

; <label>:421:                                    ; preds = %418
  br label %422

; <label>:422:                                    ; preds = %421
  %423 = load i32, i32* %11, align 4
  %424 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %425 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %425, i32 0, i32 0
  %427 = load %struct.UT_hash_table*, %struct.UT_hash_table** %426, align 8
  %428 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = sub i32 %429, 1
  %431 = and i32 %423, %430
  store i32 %431, i32* %16, align 4
  br label %432

; <label>:432:                                    ; preds = %422
  br label %433

; <label>:433:                                    ; preds = %432
  %434 = load i32, i32* %16, align 4
  %435 = zext i32 %434 to i64
  %436 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %437 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %437, i32 0, i32 0
  %439 = load %struct.UT_hash_table*, %struct.UT_hash_table** %438, align 8
  %440 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %439, i32 0, i32 0
  %441 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %440, align 8
  %442 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %441, i64 %435
  %443 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %442, i32 0, i32 0
  %444 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %443, align 8
  %445 = icmp ne %struct.UT_hash_handle* %444, null
  br i1 %445, label %446, label %470

; <label>:446:                                    ; preds = %433
  br label %447

; <label>:447:                                    ; preds = %446
  %448 = load i32, i32* %16, align 4
  %449 = zext i32 %448 to i64
  %450 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %451 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %451, i32 0, i32 0
  %453 = load %struct.UT_hash_table*, %struct.UT_hash_table** %452, align 8
  %454 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %453, i32 0, i32 0
  %455 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %454, align 8
  %456 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %455, i64 %449
  %457 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %456, i32 0, i32 0
  %458 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %457, align 8
  %459 = bitcast %struct.UT_hash_handle* %458 to i8*
  %460 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %461 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %461, i32 0, i32 0
  %463 = load %struct.UT_hash_table*, %struct.UT_hash_table** %462, align 8
  %464 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %463, i32 0, i32 5
  %465 = load i64, i64* %464, align 8
  %466 = sub i64 0, %465
  %467 = getelementptr inbounds i8, i8* %459, i64 %466
  %468 = bitcast i8* %467 to %struct.hash_struct*
  store %struct.hash_struct* %468, %struct.hash_struct** %9, align 8
  br label %469

; <label>:469:                                    ; preds = %447
  br label %471

; <label>:470:                                    ; preds = %433
  store %struct.hash_struct* null, %struct.hash_struct** %9, align 8
  br label %471

; <label>:471:                                    ; preds = %470, %469
  br label %472

; <label>:472:                                    ; preds = %527, %471
  %473 = load %struct.hash_struct*, %struct.hash_struct** %9, align 8
  %474 = icmp ne %struct.hash_struct* %473, null
  br i1 %474, label %475, label %528

; <label>:475:                                    ; preds = %472
  %476 = load %struct.hash_struct*, %struct.hash_struct** %9, align 8
  %477 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %476, i32 0, i32 2
  %478 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %477, i32 0, i32 7
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* %11, align 4
  %481 = icmp eq i32 %479, %480
  br i1 %481, label %482, label %503

; <label>:482:                                    ; preds = %475
  %483 = load %struct.hash_struct*, %struct.hash_struct** %9, align 8
  %484 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %483, i32 0, i32 2
  %485 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* %10, align 4
  %488 = icmp eq i32 %486, %487
  br i1 %488, label %489, label %503

; <label>:489:                                    ; preds = %482
  %490 = load %struct.hash_struct*, %struct.hash_struct** %9, align 8
  %491 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %491, i32 0, i32 5
  %493 = load i8*, i8** %492, align 8
  %494 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %495 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %494, i32 0, i32 0
  %496 = bitcast i64* %495 to i8*
  %497 = load i32, i32* %10, align 4
  %498 = sext i32 %497 to i64
  %499 = call i32 @memcmp(i8* %493, i8* %496, i64 %498) #9
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %502

; <label>:501:                                    ; preds = %489
  br label %528

; <label>:502:                                    ; preds = %489
  br label %503

; <label>:503:                                    ; preds = %502, %482, %475
  %504 = load %struct.hash_struct*, %struct.hash_struct** %9, align 8
  %505 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %505, i32 0, i32 4
  %507 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %506, align 8
  %508 = icmp ne %struct.UT_hash_handle* %507, null
  br i1 %508, label %509, label %526

; <label>:509:                                    ; preds = %503
  br label %510

; <label>:510:                                    ; preds = %509
  %511 = load %struct.hash_struct*, %struct.hash_struct** %9, align 8
  %512 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %511, i32 0, i32 2
  %513 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %512, i32 0, i32 4
  %514 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %513, align 8
  %515 = bitcast %struct.UT_hash_handle* %514 to i8*
  %516 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %517 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %516, i32 0, i32 2
  %518 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %517, i32 0, i32 0
  %519 = load %struct.UT_hash_table*, %struct.UT_hash_table** %518, align 8
  %520 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %519, i32 0, i32 5
  %521 = load i64, i64* %520, align 8
  %522 = sub i64 0, %521
  %523 = getelementptr inbounds i8, i8* %515, i64 %522
  %524 = bitcast i8* %523 to %struct.hash_struct*
  store %struct.hash_struct* %524, %struct.hash_struct** %9, align 8
  br label %525

; <label>:525:                                    ; preds = %510
  br label %527

; <label>:526:                                    ; preds = %503
  store %struct.hash_struct* null, %struct.hash_struct** %9, align 8
  br label %527

; <label>:527:                                    ; preds = %526, %525
  br label %472

; <label>:528:                                    ; preds = %501, %472
  br label %529

; <label>:529:                                    ; preds = %528
  br label %530

; <label>:530:                                    ; preds = %529, %418
  br label %531

; <label>:531:                                    ; preds = %530
  %532 = load %struct.hash_struct*, %struct.hash_struct** %9, align 8
  %533 = icmp ne %struct.hash_struct* %532, null
  br i1 %533, label %534, label %711

; <label>:534:                                    ; preds = %531
  br label %535

; <label>:535:                                    ; preds = %534
  %536 = load %struct.hash_struct*, %struct.hash_struct** %9, align 8
  %537 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %536, i32 0, i32 2
  store %struct.UT_hash_handle* %537, %struct.UT_hash_handle** %17, align 8
  %538 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %539 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %538, i32 0, i32 1
  %540 = load i8*, i8** %539, align 8
  %541 = icmp eq i8* %540, null
  br i1 %541, label %542, label %560

; <label>:542:                                    ; preds = %535
  %543 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %544 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %543, i32 0, i32 2
  %545 = load i8*, i8** %544, align 8
  %546 = icmp eq i8* %545, null
  br i1 %546, label %547, label %560

; <label>:547:                                    ; preds = %542
  %548 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %549 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %549, i32 0, i32 0
  %551 = load %struct.UT_hash_table*, %struct.UT_hash_table** %550, align 8
  %552 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %551, i32 0, i32 0
  %553 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %552, align 8
  %554 = bitcast %struct.UT_hash_bucket* %553 to i8*
  call void @free(i8* %554) #8
  %555 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %556 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %555, i32 0, i32 2
  %557 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %556, i32 0, i32 0
  %558 = load %struct.UT_hash_table*, %struct.UT_hash_table** %557, align 8
  %559 = bitcast %struct.UT_hash_table* %558 to i8*
  call void @free(i8* %559) #8
  store %struct.hash_struct* null, %struct.hash_struct** %8, align 8
  br label %709

; <label>:560:                                    ; preds = %542, %535
  %561 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %562 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %563 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %562, i32 0, i32 2
  %564 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %563, i32 0, i32 0
  %565 = load %struct.UT_hash_table*, %struct.UT_hash_table** %564, align 8
  %566 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %565, i32 0, i32 4
  %567 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %566, align 8
  %568 = icmp eq %struct.UT_hash_handle* %561, %567
  br i1 %568, label %569, label %586

; <label>:569:                                    ; preds = %560
  %570 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %571 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %570, i32 0, i32 1
  %572 = load i8*, i8** %571, align 8
  %573 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %574 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %573, i32 0, i32 2
  %575 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %574, i32 0, i32 0
  %576 = load %struct.UT_hash_table*, %struct.UT_hash_table** %575, align 8
  %577 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %576, i32 0, i32 5
  %578 = load i64, i64* %577, align 8
  %579 = getelementptr inbounds i8, i8* %572, i64 %578
  %580 = bitcast i8* %579 to %struct.UT_hash_handle*
  %581 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %582 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %581, i32 0, i32 2
  %583 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %582, i32 0, i32 0
  %584 = load %struct.UT_hash_table*, %struct.UT_hash_table** %583, align 8
  %585 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %584, i32 0, i32 4
  store %struct.UT_hash_handle* %580, %struct.UT_hash_handle** %585, align 8
  br label %586

; <label>:586:                                    ; preds = %569, %560
  %587 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %588 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %587, i32 0, i32 1
  %589 = load i8*, i8** %588, align 8
  %590 = icmp ne i8* %589, null
  br i1 %590, label %591, label %607

; <label>:591:                                    ; preds = %586
  %592 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %593 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %592, i32 0, i32 2
  %594 = load i8*, i8** %593, align 8
  %595 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %596 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %595, i32 0, i32 1
  %597 = load i8*, i8** %596, align 8
  %598 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %599 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %598, i32 0, i32 2
  %600 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %599, i32 0, i32 0
  %601 = load %struct.UT_hash_table*, %struct.UT_hash_table** %600, align 8
  %602 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %601, i32 0, i32 5
  %603 = load i64, i64* %602, align 8
  %604 = getelementptr inbounds i8, i8* %597, i64 %603
  %605 = bitcast i8* %604 to %struct.UT_hash_handle*
  %606 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %605, i32 0, i32 2
  store i8* %594, i8** %606, align 8
  br label %614

; <label>:607:                                    ; preds = %586
  br label %608

; <label>:608:                                    ; preds = %607
  %609 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %610 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %609, i32 0, i32 2
  %611 = load i8*, i8** %610, align 8
  %612 = bitcast i8* %611 to %struct.hash_struct*
  store %struct.hash_struct* %612, %struct.hash_struct** %8, align 8
  br label %613

; <label>:613:                                    ; preds = %608
  br label %614

; <label>:614:                                    ; preds = %613, %591
  %615 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %616 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %615, i32 0, i32 2
  %617 = load i8*, i8** %616, align 8
  %618 = icmp ne i8* %617, null
  br i1 %618, label %619, label %635

; <label>:619:                                    ; preds = %614
  %620 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %621 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %620, i32 0, i32 1
  %622 = load i8*, i8** %621, align 8
  %623 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %624 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %623, i32 0, i32 2
  %625 = load i8*, i8** %624, align 8
  %626 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %627 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %626, i32 0, i32 2
  %628 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %627, i32 0, i32 0
  %629 = load %struct.UT_hash_table*, %struct.UT_hash_table** %628, align 8
  %630 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %629, i32 0, i32 5
  %631 = load i64, i64* %630, align 8
  %632 = getelementptr inbounds i8, i8* %625, i64 %631
  %633 = bitcast i8* %632 to %struct.UT_hash_handle*
  %634 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %633, i32 0, i32 1
  store i8* %622, i8** %634, align 8
  br label %635

; <label>:635:                                    ; preds = %619, %614
  br label %636

; <label>:636:                                    ; preds = %635
  %637 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %638 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %637, i32 0, i32 7
  %639 = load i32, i32* %638, align 4
  %640 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %641 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %640, i32 0, i32 2
  %642 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %641, i32 0, i32 0
  %643 = load %struct.UT_hash_table*, %struct.UT_hash_table** %642, align 8
  %644 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %643, i32 0, i32 1
  %645 = load i32, i32* %644, align 8
  %646 = sub i32 %645, 1
  %647 = and i32 %639, %646
  store i32 %647, i32* %18, align 4
  br label %648

; <label>:648:                                    ; preds = %636
  br label %649

; <label>:649:                                    ; preds = %648
  %650 = load i32, i32* %18, align 4
  %651 = zext i32 %650 to i64
  %652 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %653 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %652, i32 0, i32 2
  %654 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %653, i32 0, i32 0
  %655 = load %struct.UT_hash_table*, %struct.UT_hash_table** %654, align 8
  %656 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %655, i32 0, i32 0
  %657 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %656, align 8
  %658 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %657, i64 %651
  store %struct.UT_hash_bucket* %658, %struct.UT_hash_bucket** %19, align 8
  %659 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %19, align 8
  %660 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 8
  %662 = add i32 %661, -1
  store i32 %662, i32* %660, align 8
  %663 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %19, align 8
  %664 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %663, i32 0, i32 0
  %665 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %664, align 8
  %666 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %667 = icmp eq %struct.UT_hash_handle* %665, %666
  br i1 %667, label %668, label %674

; <label>:668:                                    ; preds = %649
  %669 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %670 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %669, i32 0, i32 4
  %671 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %670, align 8
  %672 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %19, align 8
  %673 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %672, i32 0, i32 0
  store %struct.UT_hash_handle* %671, %struct.UT_hash_handle** %673, align 8
  br label %674

; <label>:674:                                    ; preds = %668, %649
  %675 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %676 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %675, i32 0, i32 3
  %677 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %676, align 8
  %678 = icmp ne %struct.UT_hash_handle* %677, null
  br i1 %678, label %679, label %687

; <label>:679:                                    ; preds = %674
  %680 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %681 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %680, i32 0, i32 4
  %682 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %681, align 8
  %683 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %684 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %683, i32 0, i32 3
  %685 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %684, align 8
  %686 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %685, i32 0, i32 4
  store %struct.UT_hash_handle* %682, %struct.UT_hash_handle** %686, align 8
  br label %687

; <label>:687:                                    ; preds = %679, %674
  %688 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %689 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %688, i32 0, i32 4
  %690 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %689, align 8
  %691 = icmp ne %struct.UT_hash_handle* %690, null
  br i1 %691, label %692, label %700

; <label>:692:                                    ; preds = %687
  %693 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %694 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %693, i32 0, i32 3
  %695 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %694, align 8
  %696 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %17, align 8
  %697 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %696, i32 0, i32 4
  %698 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %697, align 8
  %699 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %698, i32 0, i32 3
  store %struct.UT_hash_handle* %695, %struct.UT_hash_handle** %699, align 8
  br label %700

; <label>:700:                                    ; preds = %692, %687
  br label %701

; <label>:701:                                    ; preds = %700
  %702 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %703 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %702, i32 0, i32 2
  %704 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %703, i32 0, i32 0
  %705 = load %struct.UT_hash_table*, %struct.UT_hash_table** %704, align 8
  %706 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %705, i32 0, i32 3
  %707 = load i32, i32* %706, align 8
  %708 = add i32 %707, -1
  store i32 %708, i32* %706, align 8
  br label %709

; <label>:709:                                    ; preds = %701, %547
  br label %710

; <label>:710:                                    ; preds = %709
  br label %711

; <label>:711:                                    ; preds = %710, %531
  br label %712

; <label>:712:                                    ; preds = %711
  %713 = load i32, i32* %11, align 4
  %714 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %715 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %714, i32 0, i32 2
  %716 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %715, i32 0, i32 7
  store i32 %713, i32* %716, align 4
  %717 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %718 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %717, i32 0, i32 0
  %719 = bitcast i64* %718 to i8*
  %720 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %721 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %720, i32 0, i32 2
  %722 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %721, i32 0, i32 5
  store i8* %719, i8** %722, align 8
  %723 = load i32, i32* %10, align 4
  %724 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %725 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %724, i32 0, i32 2
  %726 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %725, i32 0, i32 6
  store i32 %723, i32* %726, align 8
  %727 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %728 = icmp ne %struct.hash_struct* %727, null
  br i1 %728, label %816, label %729

; <label>:729:                                    ; preds = %712
  %730 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %731 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %730, i32 0, i32 2
  %732 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %731, i32 0, i32 2
  store i8* null, i8** %732, align 8
  %733 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %734 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %733, i32 0, i32 2
  %735 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %734, i32 0, i32 1
  store i8* null, i8** %735, align 8
  br label %736

; <label>:736:                                    ; preds = %729
  %737 = call noalias i8* @malloc(i64 64) #8
  %738 = bitcast i8* %737 to %struct.UT_hash_table*
  %739 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %740 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %739, i32 0, i32 2
  %741 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %740, i32 0, i32 0
  store %struct.UT_hash_table* %738, %struct.UT_hash_table** %741, align 8
  %742 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %743 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %742, i32 0, i32 2
  %744 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %743, i32 0, i32 0
  %745 = load %struct.UT_hash_table*, %struct.UT_hash_table** %744, align 8
  %746 = icmp ne %struct.UT_hash_table* %745, null
  br i1 %746, label %748, label %747

; <label>:747:                                    ; preds = %736
  call void @exit(i32 -1) #10
  unreachable

; <label>:748:                                    ; preds = %736
  %749 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %750 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %749, i32 0, i32 2
  %751 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %750, i32 0, i32 0
  %752 = load %struct.UT_hash_table*, %struct.UT_hash_table** %751, align 8
  %753 = bitcast %struct.UT_hash_table* %752 to i8*
  call void @llvm.memset.p0i8.i64(i8* %753, i8 0, i64 64, i32 8, i1 false)
  %754 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %755 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %754, i32 0, i32 2
  %756 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %757 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %756, i32 0, i32 2
  %758 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %757, i32 0, i32 0
  %759 = load %struct.UT_hash_table*, %struct.UT_hash_table** %758, align 8
  %760 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %759, i32 0, i32 4
  store %struct.UT_hash_handle* %755, %struct.UT_hash_handle** %760, align 8
  %761 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %762 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %761, i32 0, i32 2
  %763 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %762, i32 0, i32 0
  %764 = load %struct.UT_hash_table*, %struct.UT_hash_table** %763, align 8
  %765 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %764, i32 0, i32 1
  store i32 32, i32* %765, align 8
  %766 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %767 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %766, i32 0, i32 2
  %768 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %767, i32 0, i32 0
  %769 = load %struct.UT_hash_table*, %struct.UT_hash_table** %768, align 8
  %770 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %769, i32 0, i32 2
  store i32 5, i32* %770, align 4
  %771 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %772 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %771, i32 0, i32 2
  %773 = bitcast %struct.UT_hash_handle* %772 to i8*
  %774 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %775 = bitcast %struct.hash_struct* %774 to i8*
  %776 = ptrtoint i8* %773 to i64
  %777 = ptrtoint i8* %775 to i64
  %778 = sub i64 %776, %777
  %779 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %780 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %779, i32 0, i32 2
  %781 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %780, i32 0, i32 0
  %782 = load %struct.UT_hash_table*, %struct.UT_hash_table** %781, align 8
  %783 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %782, i32 0, i32 5
  store i64 %778, i64* %783, align 8
  %784 = call noalias i8* @malloc(i64 512) #8
  %785 = bitcast i8* %784 to %struct.UT_hash_bucket*
  %786 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %787 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %786, i32 0, i32 2
  %788 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %787, i32 0, i32 0
  %789 = load %struct.UT_hash_table*, %struct.UT_hash_table** %788, align 8
  %790 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %789, i32 0, i32 0
  store %struct.UT_hash_bucket* %785, %struct.UT_hash_bucket** %790, align 8
  %791 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %792 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %791, i32 0, i32 2
  %793 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %792, i32 0, i32 0
  %794 = load %struct.UT_hash_table*, %struct.UT_hash_table** %793, align 8
  %795 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %794, i32 0, i32 10
  store i32 -1609490463, i32* %795, align 8
  %796 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %797 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %796, i32 0, i32 2
  %798 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %797, i32 0, i32 0
  %799 = load %struct.UT_hash_table*, %struct.UT_hash_table** %798, align 8
  %800 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %799, i32 0, i32 0
  %801 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %800, align 8
  %802 = icmp ne %struct.UT_hash_bucket* %801, null
  br i1 %802, label %804, label %803

; <label>:803:                                    ; preds = %748
  call void @exit(i32 -1) #10
  unreachable

; <label>:804:                                    ; preds = %748
  %805 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %806 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %805, i32 0, i32 2
  %807 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %806, i32 0, i32 0
  %808 = load %struct.UT_hash_table*, %struct.UT_hash_table** %807, align 8
  %809 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %808, i32 0, i32 0
  %810 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %809, align 8
  %811 = bitcast %struct.UT_hash_bucket* %810 to i8*
  call void @llvm.memset.p0i8.i64(i8* %811, i8 0, i64 512, i32 8, i1 false)
  br label %812

; <label>:812:                                    ; preds = %804
  br label %813

; <label>:813:                                    ; preds = %812
  br label %814

; <label>:814:                                    ; preds = %813
  %815 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  store %struct.hash_struct* %815, %struct.hash_struct** %8, align 8
  br label %863

; <label>:816:                                    ; preds = %712
  %817 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %818 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %817, i32 0, i32 2
  %819 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %818, i32 0, i32 0
  %820 = load %struct.UT_hash_table*, %struct.UT_hash_table** %819, align 8
  %821 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %822 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %821, i32 0, i32 2
  %823 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %822, i32 0, i32 0
  store %struct.UT_hash_table* %820, %struct.UT_hash_table** %823, align 8
  br label %824

; <label>:824:                                    ; preds = %816
  %825 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %826 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %825, i32 0, i32 2
  %827 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %826, i32 0, i32 2
  store i8* null, i8** %827, align 8
  %828 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %829 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %828, i32 0, i32 2
  %830 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %829, i32 0, i32 0
  %831 = load %struct.UT_hash_table*, %struct.UT_hash_table** %830, align 8
  %832 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %831, i32 0, i32 4
  %833 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %832, align 8
  %834 = bitcast %struct.UT_hash_handle* %833 to i8*
  %835 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %836 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %835, i32 0, i32 2
  %837 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %836, i32 0, i32 0
  %838 = load %struct.UT_hash_table*, %struct.UT_hash_table** %837, align 8
  %839 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %838, i32 0, i32 5
  %840 = load i64, i64* %839, align 8
  %841 = sub i64 0, %840
  %842 = getelementptr inbounds i8, i8* %834, i64 %841
  %843 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %844 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %843, i32 0, i32 2
  %845 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %844, i32 0, i32 1
  store i8* %842, i8** %845, align 8
  %846 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %847 = bitcast %struct.hash_struct* %846 to i8*
  %848 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %849 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %848, i32 0, i32 2
  %850 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %849, i32 0, i32 0
  %851 = load %struct.UT_hash_table*, %struct.UT_hash_table** %850, align 8
  %852 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %851, i32 0, i32 4
  %853 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %852, align 8
  %854 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %853, i32 0, i32 2
  store i8* %847, i8** %854, align 8
  %855 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %856 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %855, i32 0, i32 2
  %857 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %858 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %857, i32 0, i32 2
  %859 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %858, i32 0, i32 0
  %860 = load %struct.UT_hash_table*, %struct.UT_hash_table** %859, align 8
  %861 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %860, i32 0, i32 4
  store %struct.UT_hash_handle* %856, %struct.UT_hash_handle** %861, align 8
  br label %862

; <label>:862:                                    ; preds = %824
  br label %863

; <label>:863:                                    ; preds = %862, %814
  br label %864

; <label>:864:                                    ; preds = %863
  %865 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %866 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %865, i32 0, i32 2
  %867 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %866, i32 0, i32 0
  %868 = load %struct.UT_hash_table*, %struct.UT_hash_table** %867, align 8
  %869 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %868, i32 0, i32 3
  %870 = load i32, i32* %869, align 8
  %871 = add i32 %870, 1
  store i32 %871, i32* %869, align 8
  br label %872

; <label>:872:                                    ; preds = %864
  %873 = load i32, i32* %11, align 4
  %874 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %875 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %874, i32 0, i32 2
  %876 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %875, i32 0, i32 0
  %877 = load %struct.UT_hash_table*, %struct.UT_hash_table** %876, align 8
  %878 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %877, i32 0, i32 1
  %879 = load i32, i32* %878, align 8
  %880 = sub i32 %879, 1
  %881 = and i32 %873, %880
  store i32 %881, i32* %20, align 4
  br label %882

; <label>:882:                                    ; preds = %872
  br label %883

; <label>:883:                                    ; preds = %882
  %884 = load i32, i32* %20, align 4
  %885 = zext i32 %884 to i64
  %886 = load %struct.hash_struct*, %struct.hash_struct** %8, align 8
  %887 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %886, i32 0, i32 2
  %888 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %887, i32 0, i32 0
  %889 = load %struct.UT_hash_table*, %struct.UT_hash_table** %888, align 8
  %890 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %889, i32 0, i32 0
  %891 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %890, align 8
  %892 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %891, i64 %885
  store %struct.UT_hash_bucket* %892, %struct.UT_hash_bucket** %21, align 8
  %893 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %21, align 8
  %894 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %893, i32 0, i32 1
  %895 = load i32, i32* %894, align 8
  %896 = add i32 %895, 1
  store i32 %896, i32* %894, align 8
  %897 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %21, align 8
  %898 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %897, i32 0, i32 0
  %899 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %898, align 8
  %900 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %901 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %900, i32 0, i32 2
  %902 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %901, i32 0, i32 4
  store %struct.UT_hash_handle* %899, %struct.UT_hash_handle** %902, align 8
  %903 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %904 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %903, i32 0, i32 2
  %905 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %904, i32 0, i32 3
  store %struct.UT_hash_handle* null, %struct.UT_hash_handle** %905, align 8
  %906 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %21, align 8
  %907 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %906, i32 0, i32 0
  %908 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %907, align 8
  %909 = icmp ne %struct.UT_hash_handle* %908, null
  br i1 %909, label %910, label %917

; <label>:910:                                    ; preds = %883
  %911 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %912 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %911, i32 0, i32 2
  %913 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %21, align 8
  %914 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %913, i32 0, i32 0
  %915 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %914, align 8
  %916 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %915, i32 0, i32 3
  store %struct.UT_hash_handle* %912, %struct.UT_hash_handle** %916, align 8
  br label %917

; <label>:917:                                    ; preds = %910, %883
  %918 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %919 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %918, i32 0, i32 2
  %920 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %21, align 8
  %921 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %920, i32 0, i32 0
  store %struct.UT_hash_handle* %919, %struct.UT_hash_handle** %921, align 8
  %922 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %21, align 8
  %923 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %922, i32 0, i32 1
  %924 = load i32, i32* %923, align 8
  %925 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %21, align 8
  %926 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %925, i32 0, i32 2
  %927 = load i32, i32* %926, align 4
  %928 = add i32 %927, 1
  %929 = mul i32 %928, 10
  %930 = icmp uge i32 %924, %929
  br i1 %930, label %931, label %1187

; <label>:931:                                    ; preds = %917
  %932 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %933 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %932, i32 0, i32 2
  %934 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %933, i32 0, i32 0
  %935 = load %struct.UT_hash_table*, %struct.UT_hash_table** %934, align 8
  %936 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %935, i32 0, i32 9
  %937 = load i32, i32* %936, align 4
  %938 = icmp ne i32 %937, 0
  br i1 %938, label %1187, label %939

; <label>:939:                                    ; preds = %931
  br label %940

; <label>:940:                                    ; preds = %939
  %941 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %942 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %941, i32 0, i32 2
  %943 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %942, i32 0, i32 0
  %944 = load %struct.UT_hash_table*, %struct.UT_hash_table** %943, align 8
  %945 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %944, i32 0, i32 1
  %946 = load i32, i32* %945, align 8
  %947 = zext i32 %946 to i64
  %948 = mul i64 2, %947
  %949 = mul i64 %948, 16
  %950 = call noalias i8* @malloc(i64 %949) #8
  %951 = bitcast i8* %950 to %struct.UT_hash_bucket*
  store %struct.UT_hash_bucket* %951, %struct.UT_hash_bucket** %26, align 8
  %952 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %26, align 8
  %953 = icmp ne %struct.UT_hash_bucket* %952, null
  br i1 %953, label %955, label %954

; <label>:954:                                    ; preds = %940
  call void @exit(i32 -1) #10
  unreachable

; <label>:955:                                    ; preds = %940
  %956 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %26, align 8
  %957 = bitcast %struct.UT_hash_bucket* %956 to i8*
  %958 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %959 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %958, i32 0, i32 2
  %960 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %959, i32 0, i32 0
  %961 = load %struct.UT_hash_table*, %struct.UT_hash_table** %960, align 8
  %962 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %961, i32 0, i32 1
  %963 = load i32, i32* %962, align 8
  %964 = zext i32 %963 to i64
  %965 = mul i64 2, %964
  %966 = mul i64 %965, 16
  call void @llvm.memset.p0i8.i64(i8* %957, i8 0, i64 %966, i32 8, i1 false)
  %967 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %968 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %967, i32 0, i32 2
  %969 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %968, i32 0, i32 0
  %970 = load %struct.UT_hash_table*, %struct.UT_hash_table** %969, align 8
  %971 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %970, i32 0, i32 3
  %972 = load i32, i32* %971, align 8
  %973 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %974 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %973, i32 0, i32 2
  %975 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %974, i32 0, i32 0
  %976 = load %struct.UT_hash_table*, %struct.UT_hash_table** %975, align 8
  %977 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %976, i32 0, i32 2
  %978 = load i32, i32* %977, align 4
  %979 = add i32 %978, 1
  %980 = lshr i32 %972, %979
  %981 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %982 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %981, i32 0, i32 2
  %983 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %982, i32 0, i32 0
  %984 = load %struct.UT_hash_table*, %struct.UT_hash_table** %983, align 8
  %985 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %984, i32 0, i32 3
  %986 = load i32, i32* %985, align 8
  %987 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %988 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %987, i32 0, i32 2
  %989 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %988, i32 0, i32 0
  %990 = load %struct.UT_hash_table*, %struct.UT_hash_table** %989, align 8
  %991 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %990, i32 0, i32 1
  %992 = load i32, i32* %991, align 8
  %993 = mul i32 %992, 2
  %994 = sub i32 %993, 1
  %995 = and i32 %986, %994
  %996 = icmp ne i32 %995, 0
  %997 = select i1 %996, i32 1, i32 0
  %998 = add i32 %980, %997
  %999 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1000 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %999, i32 0, i32 2
  %1001 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1000, i32 0, i32 0
  %1002 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1001, align 8
  %1003 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1002, i32 0, i32 6
  store i32 %998, i32* %1003, align 8
  %1004 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1005 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1004, i32 0, i32 2
  %1006 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1005, i32 0, i32 0
  %1007 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1006, align 8
  %1008 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1007, i32 0, i32 7
  store i32 0, i32* %1008, align 4
  store i32 0, i32* %23, align 4
  br label %1009

; <label>:1009:                                   ; preds = %1110, %955
  %1010 = load i32, i32* %23, align 4
  %1011 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1012 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1011, i32 0, i32 2
  %1013 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1012, i32 0, i32 0
  %1014 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1013, align 8
  %1015 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1014, i32 0, i32 1
  %1016 = load i32, i32* %1015, align 8
  %1017 = icmp ult i32 %1010, %1016
  br i1 %1017, label %1018, label %1113

; <label>:1018:                                   ; preds = %1009
  %1019 = load i32, i32* %23, align 4
  %1020 = zext i32 %1019 to i64
  %1021 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1022 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1021, i32 0, i32 2
  %1023 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1022, i32 0, i32 0
  %1024 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1023, align 8
  %1025 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1024, i32 0, i32 0
  %1026 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1025, align 8
  %1027 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1026, i64 %1020
  %1028 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1027, i32 0, i32 0
  %1029 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1028, align 8
  store %struct.UT_hash_handle* %1029, %struct.UT_hash_handle** %24, align 8
  br label %1030

; <label>:1030:                                   ; preds = %1104, %1018
  %1031 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %24, align 8
  %1032 = icmp ne %struct.UT_hash_handle* %1031, null
  br i1 %1032, label %1033, label %1109

; <label>:1033:                                   ; preds = %1030
  %1034 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %24, align 8
  %1035 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1034, i32 0, i32 4
  %1036 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1035, align 8
  store %struct.UT_hash_handle* %1036, %struct.UT_hash_handle** %25, align 8
  br label %1037

; <label>:1037:                                   ; preds = %1033
  %1038 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %24, align 8
  %1039 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1038, i32 0, i32 7
  %1040 = load i32, i32* %1039, align 4
  %1041 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1042 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1041, i32 0, i32 2
  %1043 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1042, i32 0, i32 0
  %1044 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1043, align 8
  %1045 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1044, i32 0, i32 1
  %1046 = load i32, i32* %1045, align 8
  %1047 = mul i32 %1046, 2
  %1048 = sub i32 %1047, 1
  %1049 = and i32 %1040, %1048
  store i32 %1049, i32* %22, align 4
  br label %1050

; <label>:1050:                                   ; preds = %1037
  %1051 = load i32, i32* %22, align 4
  %1052 = zext i32 %1051 to i64
  %1053 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %26, align 8
  %1054 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1053, i64 %1052
  store %struct.UT_hash_bucket* %1054, %struct.UT_hash_bucket** %27, align 8
  %1055 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %27, align 8
  %1056 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1055, i32 0, i32 1
  %1057 = load i32, i32* %1056, align 8
  %1058 = add i32 %1057, 1
  store i32 %1058, i32* %1056, align 8
  %1059 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1060 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1059, i32 0, i32 2
  %1061 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1060, i32 0, i32 0
  %1062 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1061, align 8
  %1063 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1062, i32 0, i32 6
  %1064 = load i32, i32* %1063, align 8
  %1065 = icmp ugt i32 %1058, %1064
  br i1 %1065, label %1066, label %1086

; <label>:1066:                                   ; preds = %1050
  %1067 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1068 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1067, i32 0, i32 2
  %1069 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1068, i32 0, i32 0
  %1070 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1069, align 8
  %1071 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1070, i32 0, i32 7
  %1072 = load i32, i32* %1071, align 4
  %1073 = add i32 %1072, 1
  store i32 %1073, i32* %1071, align 4
  %1074 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %27, align 8
  %1075 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1074, i32 0, i32 1
  %1076 = load i32, i32* %1075, align 8
  %1077 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1078 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1077, i32 0, i32 2
  %1079 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1078, i32 0, i32 0
  %1080 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1079, align 8
  %1081 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1080, i32 0, i32 6
  %1082 = load i32, i32* %1081, align 8
  %1083 = udiv i32 %1076, %1082
  %1084 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %27, align 8
  %1085 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1084, i32 0, i32 2
  store i32 %1083, i32* %1085, align 4
  br label %1086

; <label>:1086:                                   ; preds = %1066, %1050
  %1087 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %24, align 8
  %1088 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1087, i32 0, i32 3
  store %struct.UT_hash_handle* null, %struct.UT_hash_handle** %1088, align 8
  %1089 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %27, align 8
  %1090 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1089, i32 0, i32 0
  %1091 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1090, align 8
  %1092 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %24, align 8
  %1093 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1092, i32 0, i32 4
  store %struct.UT_hash_handle* %1091, %struct.UT_hash_handle** %1093, align 8
  %1094 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %27, align 8
  %1095 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1094, i32 0, i32 0
  %1096 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1095, align 8
  %1097 = icmp ne %struct.UT_hash_handle* %1096, null
  br i1 %1097, label %1098, label %1104

; <label>:1098:                                   ; preds = %1086
  %1099 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %24, align 8
  %1100 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %27, align 8
  %1101 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1100, i32 0, i32 0
  %1102 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %1101, align 8
  %1103 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1102, i32 0, i32 3
  store %struct.UT_hash_handle* %1099, %struct.UT_hash_handle** %1103, align 8
  br label %1104

; <label>:1104:                                   ; preds = %1098, %1086
  %1105 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %24, align 8
  %1106 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %27, align 8
  %1107 = getelementptr inbounds %struct.UT_hash_bucket, %struct.UT_hash_bucket* %1106, i32 0, i32 0
  store %struct.UT_hash_handle* %1105, %struct.UT_hash_handle** %1107, align 8
  %1108 = load %struct.UT_hash_handle*, %struct.UT_hash_handle** %25, align 8
  store %struct.UT_hash_handle* %1108, %struct.UT_hash_handle** %24, align 8
  br label %1030

; <label>:1109:                                   ; preds = %1030
  br label %1110

; <label>:1110:                                   ; preds = %1109
  %1111 = load i32, i32* %23, align 4
  %1112 = add i32 %1111, 1
  store i32 %1112, i32* %23, align 4
  br label %1009

; <label>:1113:                                   ; preds = %1009
  %1114 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1115 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1114, i32 0, i32 2
  %1116 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1115, i32 0, i32 0
  %1117 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1116, align 8
  %1118 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1117, i32 0, i32 0
  %1119 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %1118, align 8
  %1120 = bitcast %struct.UT_hash_bucket* %1119 to i8*
  call void @free(i8* %1120) #8
  %1121 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1122 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1121, i32 0, i32 2
  %1123 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1122, i32 0, i32 0
  %1124 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1123, align 8
  %1125 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1124, i32 0, i32 1
  %1126 = load i32, i32* %1125, align 8
  %1127 = mul i32 %1126, 2
  store i32 %1127, i32* %1125, align 8
  %1128 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1129 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1128, i32 0, i32 2
  %1130 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1129, i32 0, i32 0
  %1131 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1130, align 8
  %1132 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1131, i32 0, i32 2
  %1133 = load i32, i32* %1132, align 4
  %1134 = add i32 %1133, 1
  store i32 %1134, i32* %1132, align 4
  %1135 = load %struct.UT_hash_bucket*, %struct.UT_hash_bucket** %26, align 8
  %1136 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1137 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1136, i32 0, i32 2
  %1138 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1137, i32 0, i32 0
  %1139 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1138, align 8
  %1140 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1139, i32 0, i32 0
  store %struct.UT_hash_bucket* %1135, %struct.UT_hash_bucket** %1140, align 8
  %1141 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1142 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1141, i32 0, i32 2
  %1143 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1142, i32 0, i32 0
  %1144 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1143, align 8
  %1145 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1144, i32 0, i32 7
  %1146 = load i32, i32* %1145, align 4
  %1147 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1148 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1147, i32 0, i32 2
  %1149 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1148, i32 0, i32 0
  %1150 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1149, align 8
  %1151 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1150, i32 0, i32 3
  %1152 = load i32, i32* %1151, align 8
  %1153 = lshr i32 %1152, 1
  %1154 = icmp ugt i32 %1146, %1153
  br i1 %1154, label %1155, label %1163

; <label>:1155:                                   ; preds = %1113
  %1156 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1157 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1156, i32 0, i32 2
  %1158 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1157, i32 0, i32 0
  %1159 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1158, align 8
  %1160 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1159, i32 0, i32 8
  %1161 = load i32, i32* %1160, align 8
  %1162 = add i32 %1161, 1
  br label %1164

; <label>:1163:                                   ; preds = %1113
  br label %1164

; <label>:1164:                                   ; preds = %1163, %1155
  %1165 = phi i32 [ %1162, %1155 ], [ 0, %1163 ]
  %1166 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1167 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1166, i32 0, i32 2
  %1168 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1167, i32 0, i32 0
  %1169 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1168, align 8
  %1170 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1169, i32 0, i32 8
  store i32 %1165, i32* %1170, align 8
  %1171 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1172 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1171, i32 0, i32 2
  %1173 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1172, i32 0, i32 0
  %1174 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1173, align 8
  %1175 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1174, i32 0, i32 8
  %1176 = load i32, i32* %1175, align 8
  %1177 = icmp ugt i32 %1176, 1
  br i1 %1177, label %1178, label %1184

; <label>:1178:                                   ; preds = %1164
  %1179 = load %struct.hash_struct*, %struct.hash_struct** %7, align 8
  %1180 = getelementptr inbounds %struct.hash_struct, %struct.hash_struct* %1179, i32 0, i32 2
  %1181 = getelementptr inbounds %struct.UT_hash_handle, %struct.UT_hash_handle* %1180, i32 0, i32 0
  %1182 = load %struct.UT_hash_table*, %struct.UT_hash_table** %1181, align 8
  %1183 = getelementptr inbounds %struct.UT_hash_table, %struct.UT_hash_table* %1182, i32 0, i32 9
  store i32 1, i32* %1183, align 4
  br label %1184

; <label>:1184:                                   ; preds = %1178, %1164
  br label %1185

; <label>:1185:                                   ; preds = %1184
  br label %1186

; <label>:1186:                                   ; preds = %1185
  br label %1187

; <label>:1187:                                   ; preds = %1186, %931, %917
  br label %1188

; <label>:1188:                                   ; preds = %1187
  br label %1189

; <label>:1189:                                   ; preds = %1188
  br label %1190

; <label>:1190:                                   ; preds = %1189
  br label %1191

; <label>:1191:                                   ; preds = %1190
  br label %1192

; <label>:1192:                                   ; preds = %1191
  ret i64 39
}

; Function Attrs: uwtable
define i64 @applyprim_hash_45set_33(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @expect_cons(i64 %7, i64* %3)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @expect_cons(i64 %9, i64* %3)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @expect_cons(i64 %11, i64* %3)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0))
  br label %16

; <label>:16:                                     ; preds = %15, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @prim_hash_45set_33(i64 %17, i64 %18, i64 %19)
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define i64 @prim_void() #0 {
  ret i64 39
}

; Function Attrs: nounwind uwtable
define i64 @prim_eq_63(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store i64 31, i64* %3, align 8
  br label %11

; <label>:10:                                     ; preds = %2
  store i64 15, i64* %3, align 8
  br label %11

; <label>:11:                                     ; preds = %10, %9
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @applyprim_eq_63(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_eq_63(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define i64 @prim_eqv_63(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store i64 31, i64* %3, align 8
  br label %11

; <label>:10:                                     ; preds = %2
  store i64 15, i64* %3, align 8
  br label %11

; <label>:11:                                     ; preds = %10, %9
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @applyprim_eqv_63(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_eqv_63(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define i64 @prim_number_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: uwtable
define i64 @applyprim_number_63(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_number_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @prim_integer_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: uwtable
define i64 @applyprim_integer_63(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_integer_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @prim_void_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 39
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8:                                      ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_void_63(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_void_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @prim_procedure_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: uwtable
define i64 @applyprim_procedure_63(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_procedure_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @prim_null_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8:                                      ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_null_63(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_null_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @prim_cons_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: uwtable
define i64 @applyprim_cons_63(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_cons_63(i64 %6)
  ret i64 %7
}

; Function Attrs: uwtable
define i64 @prim_cons(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i64* @alloc(i64 16)
  store i64* %6, i64** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %10, i64* %12, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = ptrtoint i64* %13 to i64
  %15 = or i64 %14, 1
  ret i64 %15
}

; Function Attrs: uwtable
define i64 @applyprim_cons(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_cons(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: uwtable
define i64 @prim_car(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @expect_cons(i64 %5, i64* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  ret i64 %7
}

; Function Attrs: uwtable
define i64 @applyprim_car(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_car(i64 %6)
  ret i64 %7
}

; Function Attrs: uwtable
define i64 @prim_cdr(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @expect_cons(i64 %5, i64* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  ret i64 %7
}

; Function Attrs: uwtable
define i64 @applyprim_cdr(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_cdr(i64 %6)
  ret i64 %7
}

; Function Attrs: uwtable
define i64 @prim__43(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %32

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, -8
  %23 = lshr i64 %22, 32
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %3, align 8
  %26 = and i64 %25, -8
  %27 = lshr i64 %26, 32
  %28 = trunc i64 %27 to i32
  %29 = sub nsw i32 2147483647, %28
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %20
  call void @fatal_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  br label %51

; <label>:32:                                     ; preds = %20, %14
  %33 = load i64, i64* %3, align 8
  %34 = and i64 %33, -8
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %50

; <label>:38:                                     ; preds = %32
  %39 = load i64, i64* %4, align 8
  %40 = and i64 %39, -8
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* %3, align 8
  %44 = and i64 %43, -8
  %45 = lshr i64 %44, 32
  %46 = trunc i64 %45 to i32
  %47 = sub nsw i32 -2147483648, %46
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %38
  call void @fatal_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0))
  br label %50

; <label>:50:                                     ; preds = %49, %38, %32
  br label %51

; <label>:51:                                     ; preds = %50, %31
  %52 = load i64, i64* %3, align 8
  %53 = and i64 %52, -8
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %4, align 8
  %57 = and i64 %56, -8
  %58 = lshr i64 %57, 32
  %59 = trunc i64 %58 to i32
  %60 = add nsw i32 %55, %59
  %61 = zext i32 %60 to i64
  %62 = shl i64 %61, 32
  %63 = or i64 %62, 2
  ret i64 %63
}

; Function Attrs: uwtable
define i64 @applyprim__43(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i64 2, i64* %2, align 8
  br label %81

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 1
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %4, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @applyprim__43(i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %43

; <label>:29:                                     ; preds = %14
  %30 = load i64, i64* %5, align 8
  %31 = and i64 %30, -8
  %32 = lshr i64 %31, 32
  %33 = trunc i64 %32 to i32
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %36, -8
  %38 = lshr i64 %37, 32
  %39 = trunc i64 %38 to i32
  %40 = sub nsw i32 2147483647, %39
  %41 = icmp sgt i32 %33, %40
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %29
  call void @fatal_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  br label %66

; <label>:43:                                     ; preds = %29, %14
  %44 = load i64*, i64** %4, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %46, -8
  %48 = lshr i64 %47, 32
  %49 = trunc i64 %48 to i32
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %65

; <label>:51:                                     ; preds = %43
  %52 = load i64, i64* %5, align 8
  %53 = and i64 %52, -8
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  %56 = load i64*, i64** %4, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %58, -8
  %60 = lshr i64 %59, 32
  %61 = trunc i64 %60 to i32
  %62 = sub nsw i32 -2147483648, %61
  %63 = icmp slt i32 %55, %62
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %51
  call void @fatal_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0))
  br label %65

; <label>:65:                                     ; preds = %64, %51, %43
  br label %66

; <label>:66:                                     ; preds = %65, %42
  %67 = load i64*, i64** %4, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = and i64 %69, -8
  %71 = lshr i64 %70, 32
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* %5, align 8
  %74 = and i64 %73, -8
  %75 = lshr i64 %74, 32
  %76 = trunc i64 %75 to i32
  %77 = add nsw i32 %72, %76
  %78 = zext i32 %77 to i64
  %79 = shl i64 %78, 32
  %80 = or i64 %79, 2
  store i64 %80, i64* %2, align 8
  br label %81

; <label>:81:                                     ; preds = %66, %8
  %82 = load i64, i64* %2, align 8
  ret i64 %82
}

; Function Attrs: uwtable
define i64 @prim__45(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %32

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %3, align 8
  %22 = and i64 %21, -8
  %23 = lshr i64 %22, 32
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %4, align 8
  %26 = and i64 %25, -8
  %27 = lshr i64 %26, 32
  %28 = trunc i64 %27 to i32
  %29 = add nsw i32 2147483647, %28
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %20
  call void @fatal_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  br label %51

; <label>:32:                                     ; preds = %20, %14
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, -8
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %50

; <label>:38:                                     ; preds = %32
  %39 = load i64, i64* %3, align 8
  %40 = and i64 %39, -8
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* %4, align 8
  %44 = and i64 %43, -8
  %45 = lshr i64 %44, 32
  %46 = trunc i64 %45 to i32
  %47 = add nsw i32 -2147483648, %46
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %38
  call void @fatal_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0))
  br label %50

; <label>:50:                                     ; preds = %49, %38, %32
  br label %51

; <label>:51:                                     ; preds = %50, %31
  %52 = load i64, i64* %3, align 8
  %53 = and i64 %52, -8
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %4, align 8
  %57 = and i64 %56, -8
  %58 = lshr i64 %57, 32
  %59 = trunc i64 %58 to i32
  %60 = sub nsw i32 %55, %59
  %61 = zext i32 %60 to i64
  %62 = shl i64 %61, 32
  %63 = or i64 %62, 2
  ret i64 %63
}

; Function Attrs: uwtable
define i64 @applyprim__45(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i64 2, i64* %2, align 8
  br label %93

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 1
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %4, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %33

; <label>:22:                                     ; preds = %14
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %25, -8
  %27 = lshr i64 %26, 32
  %28 = trunc i64 %27 to i32
  %29 = sub nsw i32 0, %28
  %30 = zext i32 %29 to i64
  %31 = shl i64 %30, 32
  %32 = or i64 %31, 2
  store i64 %32, i64* %2, align 8
  br label %93

; <label>:33:                                     ; preds = %14
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @applyprim__43(i64 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = and i64 %38, -8
  %40 = lshr i64 %39, 32
  %41 = trunc i64 %40 to i32
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %57

; <label>:43:                                     ; preds = %33
  %44 = load i64*, i64** %4, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %46, -8
  %48 = lshr i64 %47, 32
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %5, align 8
  %51 = and i64 %50, -8
  %52 = lshr i64 %51, 32
  %53 = trunc i64 %52 to i32
  %54 = add nsw i32 2147483647, %53
  %55 = icmp sgt i32 %49, %54
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %43
  call void @fatal_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  br label %78

; <label>:57:                                     ; preds = %43, %33
  %58 = load i64, i64* %5, align 8
  %59 = and i64 %58, -8
  %60 = lshr i64 %59, 32
  %61 = trunc i64 %60 to i32
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %77

; <label>:63:                                     ; preds = %57
  %64 = load i64*, i64** %4, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %66, -8
  %68 = lshr i64 %67, 32
  %69 = trunc i64 %68 to i32
  %70 = load i64, i64* %5, align 8
  %71 = and i64 %70, -8
  %72 = lshr i64 %71, 32
  %73 = trunc i64 %72 to i32
  %74 = add nsw i32 -2147483648, %73
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %63
  call void @fatal_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0))
  br label %77

; <label>:77:                                     ; preds = %76, %63, %57
  br label %78

; <label>:78:                                     ; preds = %77, %56
  %79 = load i64*, i64** %4, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = and i64 %81, -8
  %83 = lshr i64 %82, 32
  %84 = trunc i64 %83 to i32
  %85 = load i64, i64* %5, align 8
  %86 = and i64 %85, -8
  %87 = lshr i64 %86, 32
  %88 = trunc i64 %87 to i32
  %89 = sub nsw i32 %84, %88
  %90 = zext i32 %89 to i64
  %91 = shl i64 %90, 32
  %92 = or i64 %91, 2
  store i64 %92, i64* %2, align 8
  br label %93

; <label>:93:                                     ; preds = %78, %22, %8
  %94 = load i64, i64* %2, align 8
  ret i64 %94
}

; Function Attrs: uwtable
define i64 @prim__42(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %76

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, -8
  %23 = lshr i64 %22, 32
  %24 = trunc i64 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %76

; <label>:26:                                     ; preds = %20
  %27 = load i64, i64* %3, align 8
  %28 = and i64 %27, -8
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %26
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, -8
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %36, -2147483648
  br i1 %37, label %61, label %38

; <label>:38:                                     ; preds = %32, %26
  %39 = load i64, i64* %4, align 8
  %40 = and i64 %39, -8
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %50

; <label>:44:                                     ; preds = %38
  %45 = load i64, i64* %3, align 8
  %46 = and i64 %45, -8
  %47 = lshr i64 %46, 32
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, -2147483648
  br i1 %49, label %61, label %50

; <label>:50:                                     ; preds = %44, %38
  %51 = load i64, i64* %3, align 8
  %52 = and i64 %51, -8
  %53 = lshr i64 %52, 32
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %4, align 8
  %56 = and i64 %55, -8
  %57 = lshr i64 %56, 32
  %58 = trunc i64 %57 to i32
  %59 = sdiv i32 2147483647, %58
  %60 = icmp sgt i32 %54, %59
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %50, %44, %32
  call void @fatal_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  br label %75

; <label>:62:                                     ; preds = %50
  %63 = load i64, i64* %3, align 8
  %64 = and i64 %63, -8
  %65 = lshr i64 %64, 32
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* %4, align 8
  %68 = and i64 %67, -8
  %69 = lshr i64 %68, 32
  %70 = trunc i64 %69 to i32
  %71 = sdiv i32 -2147483648, %70
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %62
  call void @fatal_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0))
  br label %74

; <label>:74:                                     ; preds = %73, %62
  br label %75

; <label>:75:                                     ; preds = %74, %61
  br label %76

; <label>:76:                                     ; preds = %75, %20, %14
  %77 = load i64, i64* %3, align 8
  %78 = and i64 %77, -8
  %79 = lshr i64 %78, 32
  %80 = trunc i64 %79 to i32
  %81 = load i64, i64* %4, align 8
  %82 = and i64 %81, -8
  %83 = lshr i64 %82, 32
  %84 = trunc i64 %83 to i32
  %85 = mul nsw i32 %80, %84
  %86 = zext i32 %85 to i64
  %87 = shl i64 %86, 32
  %88 = or i64 %87, 2
  ret i64 %88
}

; Function Attrs: uwtable
define i64 @applyprim__42(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i64 4294967298, i64* %2, align 8
  br label %111

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 1
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %4, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @applyprim__42(i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %93

; <label>:29:                                     ; preds = %14
  %30 = load i64, i64* %5, align 8
  %31 = and i64 %30, -8
  %32 = lshr i64 %31, 32
  %33 = trunc i64 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %93

; <label>:35:                                     ; preds = %29
  %36 = load i64*, i64** %4, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, -8
  %40 = lshr i64 %39, 32
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %35
  %44 = load i64, i64* %5, align 8
  %45 = and i64 %44, -8
  %46 = lshr i64 %45, 32
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %47, -2147483648
  br i1 %48, label %76, label %49

; <label>:49:                                     ; preds = %43, %35
  %50 = load i64, i64* %5, align 8
  %51 = and i64 %50, -8
  %52 = lshr i64 %51, 32
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %63

; <label>:55:                                     ; preds = %49
  %56 = load i64*, i64** %4, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %58, -8
  %60 = lshr i64 %59, 32
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %61, -2147483648
  br i1 %62, label %76, label %63

; <label>:63:                                     ; preds = %55, %49
  %64 = load i64*, i64** %4, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %66, -8
  %68 = lshr i64 %67, 32
  %69 = trunc i64 %68 to i32
  %70 = load i64, i64* %5, align 8
  %71 = and i64 %70, -8
  %72 = lshr i64 %71, 32
  %73 = trunc i64 %72 to i32
  %74 = sdiv i32 2147483647, %73
  %75 = icmp sgt i32 %69, %74
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %63, %55, %43
  call void @fatal_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  br label %92

; <label>:77:                                     ; preds = %63
  %78 = load i64*, i64** %4, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %80, -8
  %82 = lshr i64 %81, 32
  %83 = trunc i64 %82 to i32
  %84 = load i64, i64* %5, align 8
  %85 = and i64 %84, -8
  %86 = lshr i64 %85, 32
  %87 = trunc i64 %86 to i32
  %88 = sdiv i32 -2147483648, %87
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %77
  call void @fatal_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0))
  br label %91

; <label>:91:                                     ; preds = %90, %77
  br label %92

; <label>:92:                                     ; preds = %91, %76
  br label %93

; <label>:93:                                     ; preds = %92, %29, %14
  %94 = load i64*, i64** %4, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = and i64 %96, -8
  %98 = lshr i64 %97, 32
  %99 = trunc i64 %98 to i32
  %100 = load i64*, i64** %4, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @applyprim__42(i64 %102)
  %104 = and i64 %103, -8
  %105 = lshr i64 %104, 32
  %106 = trunc i64 %105 to i32
  %107 = mul nsw i32 %99, %106
  %108 = zext i32 %107 to i64
  %109 = shl i64 %108, 32
  %110 = or i64 %109, 2
  store i64 %110, i64* %2, align 8
  br label %111

; <label>:111:                                    ; preds = %93, %8
  %112 = load i64, i64* %2, align 8
  ret i64 %112
}

; Function Attrs: uwtable
define i64 @prim__47(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %14
  call void @fatal_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0))
  br label %35

; <label>:21:                                     ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = and i64 %22, -8
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %25, -2147483648
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, -8
  %30 = lshr i64 %29, 32
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  call void @fatal_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  br label %34

; <label>:34:                                     ; preds = %33, %27, %21
  br label %35

; <label>:35:                                     ; preds = %34, %20
  %36 = load i64, i64* %3, align 8
  %37 = and i64 %36, -8
  %38 = lshr i64 %37, 32
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = and i64 %40, -8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = sdiv i32 %39, %43
  %45 = zext i32 %44 to i64
  %46 = shl i64 %45, 32
  %47 = or i64 %46, 2
  ret i64 %47
}

; Function Attrs: uwtable
define i64 @prim__61(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0))
  br label %15

; <label>:15:                                     ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26:                                     ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: uwtable
define i64 @prim__60(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i32 0, i32 0))
  br label %15

; <label>:15:                                     ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26:                                     ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: uwtable
define i64 @prim__60_61(i64, i64) #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0))
  br label %15

; <label>:15:                                     ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp sle i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26:                                     ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define i64 @prim_not(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 15
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8:                                      ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_not(i64) #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_not(i64 %6)
  ret i64 %7
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1-17ubuntu1 (tags/RELEASE_391/rc2)"}


;;;;;;

define void @proc_main() {
  %cloptr156308 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156309 = getelementptr inbounds i64, i64* %cloptr156308, i64 0                ; &cloptr156308[0]
  %f156310 = ptrtoint void(i64,i64,i64)* @lam156306 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156310, i64* %eptr156309                                               ; store fptr
  %arg154932 = ptrtoint i64* %cloptr156308 to i64                                    ; closure cast; i64* -> i64
  %cloptr156311 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156312 = getelementptr inbounds i64, i64* %cloptr156311, i64 0                ; &cloptr156311[0]
  %f156313 = ptrtoint void(i64,i64,i64)* @lam156304 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156313, i64* %eptr156312                                               ; store fptr
  %arg154931 = ptrtoint i64* %cloptr156311 to i64                                    ; closure cast; i64* -> i64
  %cloptr156314 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156315 = getelementptr inbounds i64, i64* %cloptr156314, i64 0                ; &cloptr156314[0]
  %f156316 = ptrtoint void(i64,i64,i64)* @lam155832 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156316, i64* %eptr156315                                               ; store fptr
  %arg154930 = ptrtoint i64* %cloptr156314 to i64                                    ; closure cast; i64* -> i64
  %cloptr156317 = inttoptr i64 %arg154932 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156318 = getelementptr inbounds i64, i64* %cloptr156317, i64 0               ; &cloptr156317[0]
  %f156320 = load i64, i64* %i0ptr156318, align 8                                    ; load; *i0ptr156318
  %fptr156319 = inttoptr i64 %f156320 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156319(i64 %arg154932, i64 %arg154931, i64 %arg154930); tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam156306(i64 %env156307, i64 %cont154922, i64 %RBk$yu) {
  %cloptr156321 = inttoptr i64 %RBk$yu to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr156322 = getelementptr inbounds i64, i64* %cloptr156321, i64 0               ; &cloptr156321[0]
  %f156324 = load i64, i64* %i0ptr156322, align 8                                    ; load; *i0ptr156322
  %fptr156323 = inttoptr i64 %f156324 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156323(i64 %RBk$yu, i64 %cont154922, i64 %RBk$yu)   ; tail call
  ret void
}


define void @lam156304(i64 %env156305, i64 %_95154732, i64 %BWA$Ycmb) {
  %cloptr156325 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr156327 = getelementptr inbounds i64, i64* %cloptr156325, i64 1                ; &eptr156327[1]
  store i64 %BWA$Ycmb, i64* %eptr156327                                              ; *eptr156327 = %BWA$Ycmb
  %eptr156326 = getelementptr inbounds i64, i64* %cloptr156325, i64 0                ; &cloptr156325[0]
  %f156328 = ptrtoint void(i64,i64,i64)* @lam156302 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156328, i64* %eptr156326                                               ; store fptr
  %arg154937 = ptrtoint i64* %cloptr156325 to i64                                    ; closure cast; i64* -> i64
  %cloptr156329 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156330 = getelementptr inbounds i64, i64* %cloptr156329, i64 0                ; &cloptr156329[0]
  %f156331 = ptrtoint void(i64,i64,i64)* @lam155840 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156331, i64* %eptr156330                                               ; store fptr
  %arg154936 = ptrtoint i64* %cloptr156329 to i64                                    ; closure cast; i64* -> i64
  %cloptr156332 = inttoptr i64 %BWA$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr156333 = getelementptr inbounds i64, i64* %cloptr156332, i64 0               ; &cloptr156332[0]
  %f156335 = load i64, i64* %i0ptr156333, align 8                                    ; load; *i0ptr156333
  %fptr156334 = inttoptr i64 %f156335 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156334(i64 %BWA$Ycmb, i64 %arg154937, i64 %arg154936); tail call
  ret void
}


define void @lam156302(i64 %env156303, i64 %_95154733, i64 %e2X$_37foldr1) {
  %envptr156336 = inttoptr i64 %env156303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156337 = getelementptr inbounds i64, i64* %envptr156336, i64 1              ; &envptr156336[1]
  %BWA$Ycmb = load i64, i64* %envptr156337, align 8                                  ; load; *envptr156337
  %cloptr156338 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156340 = getelementptr inbounds i64, i64* %cloptr156338, i64 1                ; &eptr156340[1]
  %eptr156341 = getelementptr inbounds i64, i64* %cloptr156338, i64 2                ; &eptr156341[2]
  store i64 %e2X$_37foldr1, i64* %eptr156340                                         ; *eptr156340 = %e2X$_37foldr1
  store i64 %BWA$Ycmb, i64* %eptr156341                                              ; *eptr156341 = %BWA$Ycmb
  %eptr156339 = getelementptr inbounds i64, i64* %cloptr156338, i64 0                ; &cloptr156338[0]
  %f156342 = ptrtoint void(i64,i64,i64)* @lam156300 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156342, i64* %eptr156339                                               ; store fptr
  %arg154940 = ptrtoint i64* %cloptr156338 to i64                                    ; closure cast; i64* -> i64
  %cloptr156343 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156344 = getelementptr inbounds i64, i64* %cloptr156343, i64 0                ; &cloptr156343[0]
  %f156345 = ptrtoint void(i64,i64,i64)* @lam155852 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156345, i64* %eptr156344                                               ; store fptr
  %arg154939 = ptrtoint i64* %cloptr156343 to i64                                    ; closure cast; i64* -> i64
  %cloptr156346 = inttoptr i64 %BWA$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr156347 = getelementptr inbounds i64, i64* %cloptr156346, i64 0               ; &cloptr156346[0]
  %f156349 = load i64, i64* %i0ptr156347, align 8                                    ; load; *i0ptr156347
  %fptr156348 = inttoptr i64 %f156349 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156348(i64 %BWA$Ycmb, i64 %arg154940, i64 %arg154939); tail call
  ret void
}


define void @lam156300(i64 %env156301, i64 %_95154734, i64 %x9O$_37map1) {
  %envptr156350 = inttoptr i64 %env156301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156351 = getelementptr inbounds i64, i64* %envptr156350, i64 2              ; &envptr156350[2]
  %BWA$Ycmb = load i64, i64* %envptr156351, align 8                                  ; load; *envptr156351
  %envptr156352 = inttoptr i64 %env156301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156353 = getelementptr inbounds i64, i64* %envptr156352, i64 1              ; &envptr156352[1]
  %e2X$_37foldr1 = load i64, i64* %envptr156353, align 8                             ; load; *envptr156353
  %cloptr156354 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156356 = getelementptr inbounds i64, i64* %cloptr156354, i64 1                ; &eptr156356[1]
  %eptr156357 = getelementptr inbounds i64, i64* %cloptr156354, i64 2                ; &eptr156357[2]
  %eptr156358 = getelementptr inbounds i64, i64* %cloptr156354, i64 3                ; &eptr156358[3]
  store i64 %e2X$_37foldr1, i64* %eptr156356                                         ; *eptr156356 = %e2X$_37foldr1
  store i64 %x9O$_37map1, i64* %eptr156357                                           ; *eptr156357 = %x9O$_37map1
  store i64 %BWA$Ycmb, i64* %eptr156358                                              ; *eptr156358 = %BWA$Ycmb
  %eptr156355 = getelementptr inbounds i64, i64* %cloptr156354, i64 0                ; &cloptr156354[0]
  %f156359 = ptrtoint void(i64,i64,i64)* @lam156298 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156359, i64* %eptr156355                                               ; store fptr
  %arg154943 = ptrtoint i64* %cloptr156354 to i64                                    ; closure cast; i64* -> i64
  %cloptr156360 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156361 = getelementptr inbounds i64, i64* %cloptr156360, i64 0                ; &cloptr156360[0]
  %f156362 = ptrtoint void(i64,i64,i64)* @lam155866 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156362, i64* %eptr156361                                               ; store fptr
  %arg154942 = ptrtoint i64* %cloptr156360 to i64                                    ; closure cast; i64* -> i64
  %cloptr156363 = inttoptr i64 %BWA$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr156364 = getelementptr inbounds i64, i64* %cloptr156363, i64 0               ; &cloptr156363[0]
  %f156366 = load i64, i64* %i0ptr156364, align 8                                    ; load; *i0ptr156364
  %fptr156365 = inttoptr i64 %f156366 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156365(i64 %BWA$Ycmb, i64 %arg154943, i64 %arg154942); tail call
  ret void
}


define void @lam156298(i64 %env156299, i64 %_95154735, i64 %sxD$_37take) {
  %envptr156367 = inttoptr i64 %env156299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156368 = getelementptr inbounds i64, i64* %envptr156367, i64 3              ; &envptr156367[3]
  %BWA$Ycmb = load i64, i64* %envptr156368, align 8                                  ; load; *envptr156368
  %envptr156369 = inttoptr i64 %env156299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156370 = getelementptr inbounds i64, i64* %envptr156369, i64 2              ; &envptr156369[2]
  %x9O$_37map1 = load i64, i64* %envptr156370, align 8                               ; load; *envptr156370
  %envptr156371 = inttoptr i64 %env156299 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156372 = getelementptr inbounds i64, i64* %envptr156371, i64 1              ; &envptr156371[1]
  %e2X$_37foldr1 = load i64, i64* %envptr156372, align 8                             ; load; *envptr156372
  %cloptr156373 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr156375 = getelementptr inbounds i64, i64* %cloptr156373, i64 1                ; &eptr156375[1]
  %eptr156376 = getelementptr inbounds i64, i64* %cloptr156373, i64 2                ; &eptr156376[2]
  %eptr156377 = getelementptr inbounds i64, i64* %cloptr156373, i64 3                ; &eptr156377[3]
  %eptr156378 = getelementptr inbounds i64, i64* %cloptr156373, i64 4                ; &eptr156378[4]
  store i64 %sxD$_37take, i64* %eptr156375                                           ; *eptr156375 = %sxD$_37take
  store i64 %e2X$_37foldr1, i64* %eptr156376                                         ; *eptr156376 = %e2X$_37foldr1
  store i64 %x9O$_37map1, i64* %eptr156377                                           ; *eptr156377 = %x9O$_37map1
  store i64 %BWA$Ycmb, i64* %eptr156378                                              ; *eptr156378 = %BWA$Ycmb
  %eptr156374 = getelementptr inbounds i64, i64* %cloptr156373, i64 0                ; &cloptr156373[0]
  %f156379 = ptrtoint void(i64,i64,i64)* @lam156296 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156379, i64* %eptr156374                                               ; store fptr
  %arg154946 = ptrtoint i64* %cloptr156373 to i64                                    ; closure cast; i64* -> i64
  %cloptr156380 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156381 = getelementptr inbounds i64, i64* %cloptr156380, i64 0                ; &cloptr156380[0]
  %f156382 = ptrtoint void(i64,i64,i64)* @lam155877 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156382, i64* %eptr156381                                               ; store fptr
  %arg154945 = ptrtoint i64* %cloptr156380 to i64                                    ; closure cast; i64* -> i64
  %cloptr156383 = inttoptr i64 %BWA$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr156384 = getelementptr inbounds i64, i64* %cloptr156383, i64 0               ; &cloptr156383[0]
  %f156386 = load i64, i64* %i0ptr156384, align 8                                    ; load; *i0ptr156384
  %fptr156385 = inttoptr i64 %f156386 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156385(i64 %BWA$Ycmb, i64 %arg154946, i64 %arg154945); tail call
  ret void
}


define void @lam156296(i64 %env156297, i64 %_95154736, i64 %VE0$_37length) {
  %envptr156387 = inttoptr i64 %env156297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156388 = getelementptr inbounds i64, i64* %envptr156387, i64 4              ; &envptr156387[4]
  %BWA$Ycmb = load i64, i64* %envptr156388, align 8                                  ; load; *envptr156388
  %envptr156389 = inttoptr i64 %env156297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156390 = getelementptr inbounds i64, i64* %envptr156389, i64 3              ; &envptr156389[3]
  %x9O$_37map1 = load i64, i64* %envptr156390, align 8                               ; load; *envptr156390
  %envptr156391 = inttoptr i64 %env156297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156392 = getelementptr inbounds i64, i64* %envptr156391, i64 2              ; &envptr156391[2]
  %e2X$_37foldr1 = load i64, i64* %envptr156392, align 8                             ; load; *envptr156392
  %envptr156393 = inttoptr i64 %env156297 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156394 = getelementptr inbounds i64, i64* %envptr156393, i64 1              ; &envptr156393[1]
  %sxD$_37take = load i64, i64* %envptr156394, align 8                               ; load; *envptr156394
  %cloptr156395 = call i64* @alloc(i64 48)                                           ; malloc
  %eptr156397 = getelementptr inbounds i64, i64* %cloptr156395, i64 1                ; &eptr156397[1]
  %eptr156398 = getelementptr inbounds i64, i64* %cloptr156395, i64 2                ; &eptr156398[2]
  %eptr156399 = getelementptr inbounds i64, i64* %cloptr156395, i64 3                ; &eptr156399[3]
  %eptr156400 = getelementptr inbounds i64, i64* %cloptr156395, i64 4                ; &eptr156400[4]
  %eptr156401 = getelementptr inbounds i64, i64* %cloptr156395, i64 5                ; &eptr156401[5]
  store i64 %sxD$_37take, i64* %eptr156397                                           ; *eptr156397 = %sxD$_37take
  store i64 %VE0$_37length, i64* %eptr156398                                         ; *eptr156398 = %VE0$_37length
  store i64 %e2X$_37foldr1, i64* %eptr156399                                         ; *eptr156399 = %e2X$_37foldr1
  store i64 %x9O$_37map1, i64* %eptr156400                                           ; *eptr156400 = %x9O$_37map1
  store i64 %BWA$Ycmb, i64* %eptr156401                                              ; *eptr156401 = %BWA$Ycmb
  %eptr156396 = getelementptr inbounds i64, i64* %cloptr156395, i64 0                ; &cloptr156395[0]
  %f156402 = ptrtoint void(i64,i64,i64)* @lam156294 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156402, i64* %eptr156396                                               ; store fptr
  %arg154949 = ptrtoint i64* %cloptr156395 to i64                                    ; closure cast; i64* -> i64
  %cloptr156403 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156404 = getelementptr inbounds i64, i64* %cloptr156403, i64 0                ; &cloptr156403[0]
  %f156405 = ptrtoint void(i64,i64,i64)* @lam155885 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156405, i64* %eptr156404                                               ; store fptr
  %arg154948 = ptrtoint i64* %cloptr156403 to i64                                    ; closure cast; i64* -> i64
  %cloptr156406 = inttoptr i64 %BWA$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr156407 = getelementptr inbounds i64, i64* %cloptr156406, i64 0               ; &cloptr156406[0]
  %f156409 = load i64, i64* %i0ptr156407, align 8                                    ; load; *i0ptr156407
  %fptr156408 = inttoptr i64 %f156409 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156408(i64 %BWA$Ycmb, i64 %arg154949, i64 %arg154948); tail call
  ret void
}


define void @lam156294(i64 %env156295, i64 %_95154737, i64 %osj$_37foldl1) {
  %envptr156410 = inttoptr i64 %env156295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156411 = getelementptr inbounds i64, i64* %envptr156410, i64 5              ; &envptr156410[5]
  %BWA$Ycmb = load i64, i64* %envptr156411, align 8                                  ; load; *envptr156411
  %envptr156412 = inttoptr i64 %env156295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156413 = getelementptr inbounds i64, i64* %envptr156412, i64 4              ; &envptr156412[4]
  %x9O$_37map1 = load i64, i64* %envptr156413, align 8                               ; load; *envptr156413
  %envptr156414 = inttoptr i64 %env156295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156415 = getelementptr inbounds i64, i64* %envptr156414, i64 3              ; &envptr156414[3]
  %e2X$_37foldr1 = load i64, i64* %envptr156415, align 8                             ; load; *envptr156415
  %envptr156416 = inttoptr i64 %env156295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156417 = getelementptr inbounds i64, i64* %envptr156416, i64 2              ; &envptr156416[2]
  %VE0$_37length = load i64, i64* %envptr156417, align 8                             ; load; *envptr156417
  %envptr156418 = inttoptr i64 %env156295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156419 = getelementptr inbounds i64, i64* %envptr156418, i64 1              ; &envptr156418[1]
  %sxD$_37take = load i64, i64* %envptr156419, align 8                               ; load; *envptr156419
  %cloptr156420 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr156422 = getelementptr inbounds i64, i64* %cloptr156420, i64 1                ; &eptr156422[1]
  store i64 %osj$_37foldl1, i64* %eptr156422                                         ; *eptr156422 = %osj$_37foldl1
  %eptr156421 = getelementptr inbounds i64, i64* %cloptr156420, i64 0                ; &cloptr156420[0]
  %f156423 = ptrtoint void(i64,i64,i64)* @lam156292 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156423, i64* %eptr156421                                               ; store fptr
  %Of4$_37last = ptrtoint i64* %cloptr156420 to i64                                  ; closure cast; i64* -> i64
  %cloptr156424 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156426 = getelementptr inbounds i64, i64* %cloptr156424, i64 1                ; &eptr156426[1]
  %eptr156427 = getelementptr inbounds i64, i64* %cloptr156424, i64 2                ; &eptr156427[2]
  store i64 %sxD$_37take, i64* %eptr156426                                           ; *eptr156426 = %sxD$_37take
  store i64 %VE0$_37length, i64* %eptr156427                                         ; *eptr156427 = %VE0$_37length
  %eptr156425 = getelementptr inbounds i64, i64* %cloptr156424, i64 0                ; &cloptr156424[0]
  %f156428 = ptrtoint void(i64,i64,i64,i64)* @lam156286 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f156428, i64* %eptr156425                                               ; store fptr
  %B1K$_37drop_45right = ptrtoint i64* %cloptr156424 to i64                          ; closure cast; i64* -> i64
  %cloptr156429 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr156431 = getelementptr inbounds i64, i64* %cloptr156429, i64 1                ; &eptr156431[1]
  %eptr156432 = getelementptr inbounds i64, i64* %cloptr156429, i64 2                ; &eptr156432[2]
  %eptr156433 = getelementptr inbounds i64, i64* %cloptr156429, i64 3                ; &eptr156433[3]
  %eptr156434 = getelementptr inbounds i64, i64* %cloptr156429, i64 4                ; &eptr156434[4]
  %eptr156435 = getelementptr inbounds i64, i64* %cloptr156429, i64 5                ; &eptr156435[5]
  %eptr156436 = getelementptr inbounds i64, i64* %cloptr156429, i64 6                ; &eptr156436[6]
  store i64 %VE0$_37length, i64* %eptr156431                                         ; *eptr156431 = %VE0$_37length
  store i64 %e2X$_37foldr1, i64* %eptr156432                                         ; *eptr156432 = %e2X$_37foldr1
  store i64 %osj$_37foldl1, i64* %eptr156433                                         ; *eptr156433 = %osj$_37foldl1
  store i64 %BWA$Ycmb, i64* %eptr156434                                              ; *eptr156434 = %BWA$Ycmb
  store i64 %Of4$_37last, i64* %eptr156435                                           ; *eptr156435 = %Of4$_37last
  store i64 %B1K$_37drop_45right, i64* %eptr156436                                   ; *eptr156436 = %B1K$_37drop_45right
  %eptr156430 = getelementptr inbounds i64, i64* %cloptr156429, i64 0                ; &cloptr156429[0]
  %f156437 = ptrtoint void(i64,i64,i64)* @lam156282 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156437, i64* %eptr156430                                               ; store fptr
  %arg154969 = ptrtoint i64* %cloptr156429 to i64                                    ; closure cast; i64* -> i64
  %cloptr156438 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156440 = getelementptr inbounds i64, i64* %cloptr156438, i64 1                ; &eptr156440[1]
  %eptr156441 = getelementptr inbounds i64, i64* %cloptr156438, i64 2                ; &eptr156441[2]
  store i64 %e2X$_37foldr1, i64* %eptr156440                                         ; *eptr156440 = %e2X$_37foldr1
  store i64 %x9O$_37map1, i64* %eptr156441                                           ; *eptr156441 = %x9O$_37map1
  %eptr156439 = getelementptr inbounds i64, i64* %cloptr156438, i64 0                ; &cloptr156438[0]
  %f156442 = ptrtoint void(i64,i64,i64)* @lam155922 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156442, i64* %eptr156439                                               ; store fptr
  %arg154968 = ptrtoint i64* %cloptr156438 to i64                                    ; closure cast; i64* -> i64
  %cloptr156443 = inttoptr i64 %BWA$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr156444 = getelementptr inbounds i64, i64* %cloptr156443, i64 0               ; &cloptr156443[0]
  %f156446 = load i64, i64* %i0ptr156444, align 8                                    ; load; *i0ptr156444
  %fptr156445 = inttoptr i64 %f156446 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156445(i64 %BWA$Ycmb, i64 %arg154969, i64 %arg154968); tail call
  ret void
}


define void @lam156292(i64 %env156293, i64 %cont154738, i64 %vES$lst) {
  %envptr156447 = inttoptr i64 %env156293 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156448 = getelementptr inbounds i64, i64* %envptr156447, i64 1              ; &envptr156447[1]
  %osj$_37foldl1 = load i64, i64* %envptr156448, align 8                             ; load; *envptr156448
  %cloptr156449 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156450 = getelementptr inbounds i64, i64* %cloptr156449, i64 0                ; &cloptr156449[0]
  %f156451 = ptrtoint void(i64,i64,i64,i64)* @lam156290 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f156451, i64* %eptr156450                                               ; store fptr
  %arg154953 = ptrtoint i64* %cloptr156449 to i64                                    ; closure cast; i64* -> i64
  %arg154952 = add i64 0, 0                                                          ; quoted ()
  %cloptr156452 = inttoptr i64 %osj$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr156453 = getelementptr inbounds i64, i64* %cloptr156452, i64 0               ; &cloptr156452[0]
  %f156455 = load i64, i64* %i0ptr156453, align 8                                    ; load; *i0ptr156453
  %fptr156454 = inttoptr i64 %f156455 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156454(i64 %osj$_37foldl1, i64 %cont154738, i64 %arg154953, i64 %arg154952, i64 %vES$lst); tail call
  ret void
}


define void @lam156290(i64 %env156291, i64 %cont154739, i64 %rrM$x, i64 %CWV$y) {
  %arg154957 = add i64 0, 0                                                          ; quoted ()
  %cloptr156456 = inttoptr i64 %cont154739 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156457 = getelementptr inbounds i64, i64* %cloptr156456, i64 0               ; &cloptr156456[0]
  %f156459 = load i64, i64* %i0ptr156457, align 8                                    ; load; *i0ptr156457
  %fptr156458 = inttoptr i64 %f156459 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156458(i64 %cont154739, i64 %arg154957, i64 %rrM$x) ; tail call
  ret void
}


define void @lam156286(i64 %env156287, i64 %cont154740, i64 %lNA$lst, i64 %hAy$n) {
  %envptr156460 = inttoptr i64 %env156287 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156461 = getelementptr inbounds i64, i64* %envptr156460, i64 2              ; &envptr156460[2]
  %VE0$_37length = load i64, i64* %envptr156461, align 8                             ; load; *envptr156461
  %envptr156462 = inttoptr i64 %env156287 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156463 = getelementptr inbounds i64, i64* %envptr156462, i64 1              ; &envptr156462[1]
  %sxD$_37take = load i64, i64* %envptr156463, align 8                               ; load; *envptr156463
  %cloptr156464 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr156466 = getelementptr inbounds i64, i64* %cloptr156464, i64 1                ; &eptr156466[1]
  %eptr156467 = getelementptr inbounds i64, i64* %cloptr156464, i64 2                ; &eptr156467[2]
  %eptr156468 = getelementptr inbounds i64, i64* %cloptr156464, i64 3                ; &eptr156468[3]
  %eptr156469 = getelementptr inbounds i64, i64* %cloptr156464, i64 4                ; &eptr156469[4]
  store i64 %hAy$n, i64* %eptr156466                                                 ; *eptr156466 = %hAy$n
  store i64 %sxD$_37take, i64* %eptr156467                                           ; *eptr156467 = %sxD$_37take
  store i64 %lNA$lst, i64* %eptr156468                                               ; *eptr156468 = %lNA$lst
  store i64 %cont154740, i64* %eptr156469                                            ; *eptr156469 = %cont154740
  %eptr156465 = getelementptr inbounds i64, i64* %cloptr156464, i64 0                ; &cloptr156464[0]
  %f156470 = ptrtoint void(i64,i64,i64)* @lam156284 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156470, i64* %eptr156465                                               ; store fptr
  %arg154960 = ptrtoint i64* %cloptr156464 to i64                                    ; closure cast; i64* -> i64
  %cloptr156471 = inttoptr i64 %VE0$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr156472 = getelementptr inbounds i64, i64* %cloptr156471, i64 0               ; &cloptr156471[0]
  %f156474 = load i64, i64* %i0ptr156472, align 8                                    ; load; *i0ptr156472
  %fptr156473 = inttoptr i64 %f156474 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156473(i64 %VE0$_37length, i64 %arg154960, i64 %lNA$lst); tail call
  ret void
}


define void @lam156284(i64 %env156285, i64 %_95154741, i64 %a154631) {
  %envptr156475 = inttoptr i64 %env156285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156476 = getelementptr inbounds i64, i64* %envptr156475, i64 4              ; &envptr156475[4]
  %cont154740 = load i64, i64* %envptr156476, align 8                                ; load; *envptr156476
  %envptr156477 = inttoptr i64 %env156285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156478 = getelementptr inbounds i64, i64* %envptr156477, i64 3              ; &envptr156477[3]
  %lNA$lst = load i64, i64* %envptr156478, align 8                                   ; load; *envptr156478
  %envptr156479 = inttoptr i64 %env156285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156480 = getelementptr inbounds i64, i64* %envptr156479, i64 2              ; &envptr156479[2]
  %sxD$_37take = load i64, i64* %envptr156480, align 8                               ; load; *envptr156480
  %envptr156481 = inttoptr i64 %env156285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156482 = getelementptr inbounds i64, i64* %envptr156481, i64 1              ; &envptr156481[1]
  %hAy$n = load i64, i64* %envptr156482, align 8                                     ; load; *envptr156482
  %a154632 = call i64 @prim__45(i64 %a154631, i64 %hAy$n)                            ; call prim__45
  %cloptr156483 = inttoptr i64 %sxD$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr156484 = getelementptr inbounds i64, i64* %cloptr156483, i64 0               ; &cloptr156483[0]
  %f156486 = load i64, i64* %i0ptr156484, align 8                                    ; load; *i0ptr156484
  %fptr156485 = inttoptr i64 %f156486 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156485(i64 %sxD$_37take, i64 %cont154740, i64 %lNA$lst, i64 %a154632); tail call
  ret void
}


define void @lam156282(i64 %env156283, i64 %_95154742, i64 %eN1$_37foldr) {
  %envptr156487 = inttoptr i64 %env156283 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156488 = getelementptr inbounds i64, i64* %envptr156487, i64 6              ; &envptr156487[6]
  %B1K$_37drop_45right = load i64, i64* %envptr156488, align 8                       ; load; *envptr156488
  %envptr156489 = inttoptr i64 %env156283 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156490 = getelementptr inbounds i64, i64* %envptr156489, i64 5              ; &envptr156489[5]
  %Of4$_37last = load i64, i64* %envptr156490, align 8                               ; load; *envptr156490
  %envptr156491 = inttoptr i64 %env156283 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156492 = getelementptr inbounds i64, i64* %envptr156491, i64 4              ; &envptr156491[4]
  %BWA$Ycmb = load i64, i64* %envptr156492, align 8                                  ; load; *envptr156492
  %envptr156493 = inttoptr i64 %env156283 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156494 = getelementptr inbounds i64, i64* %envptr156493, i64 3              ; &envptr156493[3]
  %osj$_37foldl1 = load i64, i64* %envptr156494, align 8                             ; load; *envptr156494
  %envptr156495 = inttoptr i64 %env156283 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156496 = getelementptr inbounds i64, i64* %envptr156495, i64 2              ; &envptr156495[2]
  %e2X$_37foldr1 = load i64, i64* %envptr156496, align 8                             ; load; *envptr156496
  %envptr156497 = inttoptr i64 %env156283 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156498 = getelementptr inbounds i64, i64* %envptr156497, i64 1              ; &envptr156497[1]
  %VE0$_37length = load i64, i64* %envptr156498, align 8                             ; load; *envptr156498
  %cloptr156499 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr156501 = getelementptr inbounds i64, i64* %cloptr156499, i64 1                ; &eptr156501[1]
  store i64 %e2X$_37foldr1, i64* %eptr156501                                         ; *eptr156501 = %e2X$_37foldr1
  %eptr156500 = getelementptr inbounds i64, i64* %cloptr156499, i64 0                ; &cloptr156499[0]
  %f156502 = ptrtoint void(i64,i64,i64,i64)* @lam156280 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f156502, i64* %eptr156500                                               ; store fptr
  %KWI$_37map1 = ptrtoint i64* %cloptr156499 to i64                                  ; closure cast; i64* -> i64
  %cloptr156503 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156505 = getelementptr inbounds i64, i64* %cloptr156503, i64 1                ; &eptr156505[1]
  %eptr156506 = getelementptr inbounds i64, i64* %cloptr156503, i64 2                ; &eptr156506[2]
  %eptr156507 = getelementptr inbounds i64, i64* %cloptr156503, i64 3                ; &eptr156507[3]
  store i64 %Of4$_37last, i64* %eptr156505                                           ; *eptr156505 = %Of4$_37last
  store i64 %eN1$_37foldr, i64* %eptr156506                                          ; *eptr156506 = %eN1$_37foldr
  store i64 %B1K$_37drop_45right, i64* %eptr156507                                   ; *eptr156507 = %B1K$_37drop_45right
  %eptr156504 = getelementptr inbounds i64, i64* %cloptr156503, i64 0                ; &cloptr156503[0]
  %f156508 = ptrtoint void(i64,i64)* @lam156272 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f156508, i64* %eptr156504                                               ; store fptr
  %qfA$_37map = ptrtoint i64* %cloptr156503 to i64                                   ; closure cast; i64* -> i64
  %cloptr156509 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156511 = getelementptr inbounds i64, i64* %cloptr156509, i64 1                ; &eptr156511[1]
  %eptr156512 = getelementptr inbounds i64, i64* %cloptr156509, i64 2                ; &eptr156512[2]
  store i64 %VE0$_37length, i64* %eptr156511                                         ; *eptr156511 = %VE0$_37length
  store i64 %osj$_37foldl1, i64* %eptr156512                                         ; *eptr156512 = %osj$_37foldl1
  %eptr156510 = getelementptr inbounds i64, i64* %cloptr156509, i64 0                ; &cloptr156509[0]
  %f156513 = ptrtoint void(i64,i64,i64)* @lam156259 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156513, i64* %eptr156510                                               ; store fptr
  %arg155011 = ptrtoint i64* %cloptr156509 to i64                                    ; closure cast; i64* -> i64
  %cloptr156514 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156516 = getelementptr inbounds i64, i64* %cloptr156514, i64 1                ; &eptr156516[1]
  %eptr156517 = getelementptr inbounds i64, i64* %cloptr156514, i64 2                ; &eptr156517[2]
  %eptr156518 = getelementptr inbounds i64, i64* %cloptr156514, i64 3                ; &eptr156518[3]
  store i64 %KWI$_37map1, i64* %eptr156516                                           ; *eptr156516 = %KWI$_37map1
  store i64 %e2X$_37foldr1, i64* %eptr156517                                         ; *eptr156517 = %e2X$_37foldr1
  store i64 %eN1$_37foldr, i64* %eptr156518                                          ; *eptr156518 = %eN1$_37foldr
  %eptr156515 = getelementptr inbounds i64, i64* %cloptr156514, i64 0                ; &cloptr156514[0]
  %f156519 = ptrtoint void(i64,i64,i64)* @lam155959 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156519, i64* %eptr156515                                               ; store fptr
  %arg155010 = ptrtoint i64* %cloptr156514 to i64                                    ; closure cast; i64* -> i64
  %cloptr156520 = inttoptr i64 %BWA$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr156521 = getelementptr inbounds i64, i64* %cloptr156520, i64 0               ; &cloptr156520[0]
  %f156523 = load i64, i64* %i0ptr156521, align 8                                    ; load; *i0ptr156521
  %fptr156522 = inttoptr i64 %f156523 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156522(i64 %BWA$Ycmb, i64 %arg155011, i64 %arg155010); tail call
  ret void
}


define void @lam156280(i64 %env156281, i64 %cont154743, i64 %b7a$f, i64 %A4Q$lst) {
  %envptr156524 = inttoptr i64 %env156281 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156525 = getelementptr inbounds i64, i64* %envptr156524, i64 1              ; &envptr156524[1]
  %e2X$_37foldr1 = load i64, i64* %envptr156525, align 8                             ; load; *envptr156525
  %cloptr156526 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr156528 = getelementptr inbounds i64, i64* %cloptr156526, i64 1                ; &eptr156528[1]
  store i64 %b7a$f, i64* %eptr156528                                                 ; *eptr156528 = %b7a$f
  %eptr156527 = getelementptr inbounds i64, i64* %cloptr156526, i64 0                ; &cloptr156526[0]
  %f156529 = ptrtoint void(i64,i64,i64,i64)* @lam156278 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f156529, i64* %eptr156527                                               ; store fptr
  %arg154973 = ptrtoint i64* %cloptr156526 to i64                                    ; closure cast; i64* -> i64
  %arg154972 = add i64 0, 0                                                          ; quoted ()
  %cloptr156530 = inttoptr i64 %e2X$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr156531 = getelementptr inbounds i64, i64* %cloptr156530, i64 0               ; &cloptr156530[0]
  %f156533 = load i64, i64* %i0ptr156531, align 8                                    ; load; *i0ptr156531
  %fptr156532 = inttoptr i64 %f156533 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156532(i64 %e2X$_37foldr1, i64 %cont154743, i64 %arg154973, i64 %arg154972, i64 %A4Q$lst); tail call
  ret void
}


define void @lam156278(i64 %env156279, i64 %cont154744, i64 %B3u$v, i64 %Vzz$r) {
  %envptr156534 = inttoptr i64 %env156279 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156535 = getelementptr inbounds i64, i64* %envptr156534, i64 1              ; &envptr156534[1]
  %b7a$f = load i64, i64* %envptr156535, align 8                                     ; load; *envptr156535
  %cloptr156536 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156538 = getelementptr inbounds i64, i64* %cloptr156536, i64 1                ; &eptr156538[1]
  %eptr156539 = getelementptr inbounds i64, i64* %cloptr156536, i64 2                ; &eptr156539[2]
  store i64 %cont154744, i64* %eptr156538                                            ; *eptr156538 = %cont154744
  store i64 %Vzz$r, i64* %eptr156539                                                 ; *eptr156539 = %Vzz$r
  %eptr156537 = getelementptr inbounds i64, i64* %cloptr156536, i64 0                ; &cloptr156536[0]
  %f156540 = ptrtoint void(i64,i64,i64)* @lam156276 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156540, i64* %eptr156537                                               ; store fptr
  %arg154977 = ptrtoint i64* %cloptr156536 to i64                                    ; closure cast; i64* -> i64
  %cloptr156541 = inttoptr i64 %b7a$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr156542 = getelementptr inbounds i64, i64* %cloptr156541, i64 0               ; &cloptr156541[0]
  %f156544 = load i64, i64* %i0ptr156542, align 8                                    ; load; *i0ptr156542
  %fptr156543 = inttoptr i64 %f156544 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156543(i64 %b7a$f, i64 %arg154977, i64 %B3u$v)      ; tail call
  ret void
}


define void @lam156276(i64 %env156277, i64 %_95154745, i64 %a154641) {
  %envptr156545 = inttoptr i64 %env156277 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156546 = getelementptr inbounds i64, i64* %envptr156545, i64 2              ; &envptr156545[2]
  %Vzz$r = load i64, i64* %envptr156546, align 8                                     ; load; *envptr156546
  %envptr156547 = inttoptr i64 %env156277 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156548 = getelementptr inbounds i64, i64* %envptr156547, i64 1              ; &envptr156547[1]
  %cont154744 = load i64, i64* %envptr156548, align 8                                ; load; *envptr156548
  %retprim154746 = call i64 @prim_cons(i64 %a154641, i64 %Vzz$r)                     ; call prim_cons
  %arg154982 = add i64 0, 0                                                          ; quoted ()
  %cloptr156549 = inttoptr i64 %cont154744 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156550 = getelementptr inbounds i64, i64* %cloptr156549, i64 0               ; &cloptr156549[0]
  %f156552 = load i64, i64* %i0ptr156550, align 8                                    ; load; *i0ptr156550
  %fptr156551 = inttoptr i64 %f156552 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156551(i64 %cont154744, i64 %arg154982, i64 %retprim154746); tail call
  ret void
}


define void @lam156272(i64 %env156273, i64 %quN$args154748) {
  %envptr156553 = inttoptr i64 %env156273 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156554 = getelementptr inbounds i64, i64* %envptr156553, i64 3              ; &envptr156553[3]
  %B1K$_37drop_45right = load i64, i64* %envptr156554, align 8                       ; load; *envptr156554
  %envptr156555 = inttoptr i64 %env156273 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156556 = getelementptr inbounds i64, i64* %envptr156555, i64 2              ; &envptr156555[2]
  %eN1$_37foldr = load i64, i64* %envptr156556, align 8                              ; load; *envptr156556
  %envptr156557 = inttoptr i64 %env156273 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156558 = getelementptr inbounds i64, i64* %envptr156557, i64 1              ; &envptr156557[1]
  %Of4$_37last = load i64, i64* %envptr156558, align 8                               ; load; *envptr156558
  %cont154747 = call i64 @prim_car(i64 %quN$args154748)                              ; call prim_car
  %quN$args = call i64 @prim_cdr(i64 %quN$args154748)                                ; call prim_cdr
  %jX6$f = call i64 @prim_car(i64 %quN$args)                                         ; call prim_car
  %FiP$lsts = call i64 @prim_cdr(i64 %quN$args)                                      ; call prim_cdr
  %arg154989 = add i64 0, 0                                                          ; quoted ()
  %a154645 = call i64 @prim_cons(i64 %arg154989, i64 %FiP$lsts)                      ; call prim_cons
  %cloptr156559 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156561 = getelementptr inbounds i64, i64* %cloptr156559, i64 1                ; &eptr156561[1]
  %eptr156562 = getelementptr inbounds i64, i64* %cloptr156559, i64 2                ; &eptr156562[2]
  %eptr156563 = getelementptr inbounds i64, i64* %cloptr156559, i64 3                ; &eptr156563[3]
  store i64 %Of4$_37last, i64* %eptr156561                                           ; *eptr156561 = %Of4$_37last
  store i64 %B1K$_37drop_45right, i64* %eptr156562                                   ; *eptr156562 = %B1K$_37drop_45right
  store i64 %jX6$f, i64* %eptr156563                                                 ; *eptr156563 = %jX6$f
  %eptr156560 = getelementptr inbounds i64, i64* %cloptr156559, i64 0                ; &cloptr156559[0]
  %f156564 = ptrtoint void(i64,i64)* @lam156269 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f156564, i64* %eptr156560                                               ; store fptr
  %arg154991 = ptrtoint i64* %cloptr156559 to i64                                    ; closure cast; i64* -> i64
  %a154646 = call i64 @prim_cons(i64 %arg154991, i64 %a154645)                       ; call prim_cons
  %cps_45lst154756 = call i64 @prim_cons(i64 %cont154747, i64 %a154646)              ; call prim_cons
  %cloptr156565 = inttoptr i64 %eN1$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr156566 = getelementptr inbounds i64, i64* %cloptr156565, i64 0               ; &cloptr156565[0]
  %f156568 = load i64, i64* %i0ptr156566, align 8                                    ; load; *i0ptr156566
  %fptr156567 = inttoptr i64 %f156568 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156567(i64 %eN1$_37foldr, i64 %cps_45lst154756)     ; tail call
  ret void
}


define void @lam156269(i64 %env156270, i64 %ixp$fargs154750) {
  %envptr156569 = inttoptr i64 %env156270 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156570 = getelementptr inbounds i64, i64* %envptr156569, i64 3              ; &envptr156569[3]
  %jX6$f = load i64, i64* %envptr156570, align 8                                     ; load; *envptr156570
  %envptr156571 = inttoptr i64 %env156270 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156572 = getelementptr inbounds i64, i64* %envptr156571, i64 2              ; &envptr156571[2]
  %B1K$_37drop_45right = load i64, i64* %envptr156572, align 8                       ; load; *envptr156572
  %envptr156573 = inttoptr i64 %env156270 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156574 = getelementptr inbounds i64, i64* %envptr156573, i64 1              ; &envptr156573[1]
  %Of4$_37last = load i64, i64* %envptr156574, align 8                               ; load; *envptr156574
  %cont154749 = call i64 @prim_car(i64 %ixp$fargs154750)                             ; call prim_car
  %ixp$fargs = call i64 @prim_cdr(i64 %ixp$fargs154750)                              ; call prim_cdr
  %cloptr156575 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr156577 = getelementptr inbounds i64, i64* %cloptr156575, i64 1                ; &eptr156577[1]
  %eptr156578 = getelementptr inbounds i64, i64* %cloptr156575, i64 2                ; &eptr156578[2]
  %eptr156579 = getelementptr inbounds i64, i64* %cloptr156575, i64 3                ; &eptr156579[3]
  %eptr156580 = getelementptr inbounds i64, i64* %cloptr156575, i64 4                ; &eptr156580[4]
  store i64 %Of4$_37last, i64* %eptr156577                                           ; *eptr156577 = %Of4$_37last
  store i64 %ixp$fargs, i64* %eptr156578                                             ; *eptr156578 = %ixp$fargs
  store i64 %cont154749, i64* %eptr156579                                            ; *eptr156579 = %cont154749
  store i64 %jX6$f, i64* %eptr156580                                                 ; *eptr156580 = %jX6$f
  %eptr156576 = getelementptr inbounds i64, i64* %cloptr156575, i64 0                ; &cloptr156575[0]
  %f156581 = ptrtoint void(i64,i64,i64)* @lam156267 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156581, i64* %eptr156576                                               ; store fptr
  %arg154996 = ptrtoint i64* %cloptr156575 to i64                                    ; closure cast; i64* -> i64
  %arg154994 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr156582 = inttoptr i64 %B1K$_37drop_45right to i64*                          ; closure/env cast; i64 -> i64*
  %i0ptr156583 = getelementptr inbounds i64, i64* %cloptr156582, i64 0               ; &cloptr156582[0]
  %f156585 = load i64, i64* %i0ptr156583, align 8                                    ; load; *i0ptr156583
  %fptr156584 = inttoptr i64 %f156585 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156584(i64 %B1K$_37drop_45right, i64 %arg154996, i64 %ixp$fargs, i64 %arg154994); tail call
  ret void
}


define void @lam156267(i64 %env156268, i64 %_95154751, i64 %a154642) {
  %envptr156586 = inttoptr i64 %env156268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156587 = getelementptr inbounds i64, i64* %envptr156586, i64 4              ; &envptr156586[4]
  %jX6$f = load i64, i64* %envptr156587, align 8                                     ; load; *envptr156587
  %envptr156588 = inttoptr i64 %env156268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156589 = getelementptr inbounds i64, i64* %envptr156588, i64 3              ; &envptr156588[3]
  %cont154749 = load i64, i64* %envptr156589, align 8                                ; load; *envptr156589
  %envptr156590 = inttoptr i64 %env156268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156591 = getelementptr inbounds i64, i64* %envptr156590, i64 2              ; &envptr156590[2]
  %ixp$fargs = load i64, i64* %envptr156591, align 8                                 ; load; *envptr156591
  %envptr156592 = inttoptr i64 %env156268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156593 = getelementptr inbounds i64, i64* %envptr156592, i64 1              ; &envptr156592[1]
  %Of4$_37last = load i64, i64* %envptr156593, align 8                               ; load; *envptr156593
  %cloptr156594 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156596 = getelementptr inbounds i64, i64* %cloptr156594, i64 1                ; &eptr156596[1]
  %eptr156597 = getelementptr inbounds i64, i64* %cloptr156594, i64 2                ; &eptr156597[2]
  %eptr156598 = getelementptr inbounds i64, i64* %cloptr156594, i64 3                ; &eptr156598[3]
  store i64 %Of4$_37last, i64* %eptr156596                                           ; *eptr156596 = %Of4$_37last
  store i64 %ixp$fargs, i64* %eptr156597                                             ; *eptr156597 = %ixp$fargs
  store i64 %cont154749, i64* %eptr156598                                            ; *eptr156598 = %cont154749
  %eptr156595 = getelementptr inbounds i64, i64* %cloptr156594, i64 0                ; &cloptr156594[0]
  %f156599 = ptrtoint void(i64,i64,i64)* @lam156265 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156599, i64* %eptr156595                                               ; store fptr
  %arg154999 = ptrtoint i64* %cloptr156594 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst154755 = call i64 @prim_cons(i64 %arg154999, i64 %a154642)               ; call prim_cons
  %cloptr156600 = inttoptr i64 %jX6$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr156601 = getelementptr inbounds i64, i64* %cloptr156600, i64 0               ; &cloptr156600[0]
  %f156603 = load i64, i64* %i0ptr156601, align 8                                    ; load; *i0ptr156601
  %fptr156602 = inttoptr i64 %f156603 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156602(i64 %jX6$f, i64 %cps_45lst154755)            ; tail call
  ret void
}


define void @lam156265(i64 %env156266, i64 %_95154752, i64 %a154643) {
  %envptr156604 = inttoptr i64 %env156266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156605 = getelementptr inbounds i64, i64* %envptr156604, i64 3              ; &envptr156604[3]
  %cont154749 = load i64, i64* %envptr156605, align 8                                ; load; *envptr156605
  %envptr156606 = inttoptr i64 %env156266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156607 = getelementptr inbounds i64, i64* %envptr156606, i64 2              ; &envptr156606[2]
  %ixp$fargs = load i64, i64* %envptr156607, align 8                                 ; load; *envptr156607
  %envptr156608 = inttoptr i64 %env156266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156609 = getelementptr inbounds i64, i64* %envptr156608, i64 1              ; &envptr156608[1]
  %Of4$_37last = load i64, i64* %envptr156609, align 8                               ; load; *envptr156609
  %cloptr156610 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156612 = getelementptr inbounds i64, i64* %cloptr156610, i64 1                ; &eptr156612[1]
  %eptr156613 = getelementptr inbounds i64, i64* %cloptr156610, i64 2                ; &eptr156613[2]
  store i64 %a154643, i64* %eptr156612                                               ; *eptr156612 = %a154643
  store i64 %cont154749, i64* %eptr156613                                            ; *eptr156613 = %cont154749
  %eptr156611 = getelementptr inbounds i64, i64* %cloptr156610, i64 0                ; &cloptr156610[0]
  %f156614 = ptrtoint void(i64,i64,i64)* @lam156263 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156614, i64* %eptr156611                                               ; store fptr
  %arg155001 = ptrtoint i64* %cloptr156610 to i64                                    ; closure cast; i64* -> i64
  %cloptr156615 = inttoptr i64 %Of4$_37last to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr156616 = getelementptr inbounds i64, i64* %cloptr156615, i64 0               ; &cloptr156615[0]
  %f156618 = load i64, i64* %i0ptr156616, align 8                                    ; load; *i0ptr156616
  %fptr156617 = inttoptr i64 %f156618 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156617(i64 %Of4$_37last, i64 %arg155001, i64 %ixp$fargs); tail call
  ret void
}


define void @lam156263(i64 %env156264, i64 %_95154753, i64 %a154644) {
  %envptr156619 = inttoptr i64 %env156264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156620 = getelementptr inbounds i64, i64* %envptr156619, i64 2              ; &envptr156619[2]
  %cont154749 = load i64, i64* %envptr156620, align 8                                ; load; *envptr156620
  %envptr156621 = inttoptr i64 %env156264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156622 = getelementptr inbounds i64, i64* %envptr156621, i64 1              ; &envptr156621[1]
  %a154643 = load i64, i64* %envptr156622, align 8                                   ; load; *envptr156622
  %retprim154754 = call i64 @prim_cons(i64 %a154643, i64 %a154644)                   ; call prim_cons
  %arg155006 = add i64 0, 0                                                          ; quoted ()
  %cloptr156623 = inttoptr i64 %cont154749 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156624 = getelementptr inbounds i64, i64* %cloptr156623, i64 0               ; &cloptr156623[0]
  %f156626 = load i64, i64* %i0ptr156624, align 8                                    ; load; *i0ptr156624
  %fptr156625 = inttoptr i64 %f156626 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156625(i64 %cont154749, i64 %arg155006, i64 %retprim154754); tail call
  ret void
}


define void @lam156259(i64 %env156260, i64 %_95154757, i64 %RlB$_37foldl) {
  %envptr156627 = inttoptr i64 %env156260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156628 = getelementptr inbounds i64, i64* %envptr156627, i64 2              ; &envptr156627[2]
  %osj$_37foldl1 = load i64, i64* %envptr156628, align 8                             ; load; *envptr156628
  %envptr156629 = inttoptr i64 %env156260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156630 = getelementptr inbounds i64, i64* %envptr156629, i64 1              ; &envptr156629[1]
  %VE0$_37length = load i64, i64* %envptr156630, align 8                             ; load; *envptr156630
  %cloptr156631 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156632 = getelementptr inbounds i64, i64* %cloptr156631, i64 0                ; &cloptr156631[0]
  %f156633 = ptrtoint void(i64,i64,i64,i64)* @lam156257 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f156633, i64* %eptr156632                                               ; store fptr
  %SGA$_37_62 = ptrtoint i64* %cloptr156631 to i64                                   ; closure cast; i64* -> i64
  %cloptr156634 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156635 = getelementptr inbounds i64, i64* %cloptr156634, i64 0                ; &cloptr156634[0]
  %f156636 = ptrtoint void(i64,i64,i64,i64)* @lam156254 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f156636, i64* %eptr156635                                               ; store fptr
  %j80$_37_62_61 = ptrtoint i64* %cloptr156634 to i64                                ; closure cast; i64* -> i64
  %arg155026 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg155025 = add i64 0, 0                                                          ; quoted ()
  %npx$_37append = call i64 @prim_make_45vector(i64 %arg155026, i64 %arg155025)      ; call prim_make_45vector
  %arg155028 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg155027 = add i64 0, 0                                                          ; quoted ()
  %uLv$_37append2 = call i64 @prim_make_45vector(i64 %arg155028, i64 %arg155027)     ; call prim_make_45vector
  %arg155030 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr156637 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr156639 = getelementptr inbounds i64, i64* %cloptr156637, i64 1                ; &eptr156639[1]
  store i64 %uLv$_37append2, i64* %eptr156639                                        ; *eptr156639 = %uLv$_37append2
  %eptr156638 = getelementptr inbounds i64, i64* %cloptr156637, i64 0                ; &cloptr156637[0]
  %f156640 = ptrtoint void(i64,i64,i64,i64)* @lam156246 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f156640, i64* %eptr156638                                               ; store fptr
  %arg155029 = ptrtoint i64* %cloptr156637 to i64                                    ; closure cast; i64* -> i64
  %agK$_950 = call i64 @prim_vector_45set_33(i64 %uLv$_37append2, i64 %arg155030, i64 %arg155029); call prim_vector_45set_33
  %arg155050 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr156641 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156643 = getelementptr inbounds i64, i64* %cloptr156641, i64 1                ; &eptr156643[1]
  %eptr156644 = getelementptr inbounds i64, i64* %cloptr156641, i64 2                ; &eptr156644[2]
  store i64 %npx$_37append, i64* %eptr156643                                         ; *eptr156643 = %npx$_37append
  store i64 %uLv$_37append2, i64* %eptr156644                                        ; *eptr156644 = %uLv$_37append2
  %eptr156642 = getelementptr inbounds i64, i64* %cloptr156641, i64 0                ; &cloptr156641[0]
  %f156645 = ptrtoint void(i64,i64)* @lam156238 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f156645, i64* %eptr156642                                               ; store fptr
  %arg155049 = ptrtoint i64* %cloptr156641 to i64                                    ; closure cast; i64* -> i64
  %cfH$_951 = call i64 @prim_vector_45set_33(i64 %npx$_37append, i64 %arg155050, i64 %arg155049); call prim_vector_45set_33
  %arg155070 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154858 = call i64 @prim_vector_45ref(i64 %npx$_37append, i64 %arg155070)   ; call prim_vector_45ref
  %cloptr156646 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156648 = getelementptr inbounds i64, i64* %cloptr156646, i64 1                ; &eptr156648[1]
  %eptr156649 = getelementptr inbounds i64, i64* %cloptr156646, i64 2                ; &eptr156649[2]
  %eptr156650 = getelementptr inbounds i64, i64* %cloptr156646, i64 3                ; &eptr156650[3]
  store i64 %VE0$_37length, i64* %eptr156648                                         ; *eptr156648 = %VE0$_37length
  store i64 %osj$_37foldl1, i64* %eptr156649                                         ; *eptr156649 = %osj$_37foldl1
  store i64 %SGA$_37_62, i64* %eptr156650                                            ; *eptr156650 = %SGA$_37_62
  %eptr156647 = getelementptr inbounds i64, i64* %cloptr156646, i64 0                ; &cloptr156646[0]
  %f156651 = ptrtoint void(i64,i64,i64)* @lam156229 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156651, i64* %eptr156647                                               ; store fptr
  %arg155074 = ptrtoint i64* %cloptr156646 to i64                                    ; closure cast; i64* -> i64
  %arg155073 = add i64 0, 0                                                          ; quoted ()
  %cloptr156652 = inttoptr i64 %arg155074 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156653 = getelementptr inbounds i64, i64* %cloptr156652, i64 0               ; &cloptr156652[0]
  %f156655 = load i64, i64* %i0ptr156653, align 8                                    ; load; *i0ptr156653
  %fptr156654 = inttoptr i64 %f156655 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156654(i64 %arg155074, i64 %arg155073, i64 %retprim154858); tail call
  ret void
}


define void @lam156257(i64 %env156258, i64 %cont154758, i64 %yQX$a, i64 %bF0$b) {
  %a154654 = call i64 @prim__60_61(i64 %yQX$a, i64 %bF0$b)                           ; call prim__60_61
  %retprim154759 = call i64 @prim_not(i64 %a154654)                                  ; call prim_not
  %arg155017 = add i64 0, 0                                                          ; quoted ()
  %cloptr156656 = inttoptr i64 %cont154758 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156657 = getelementptr inbounds i64, i64* %cloptr156656, i64 0               ; &cloptr156656[0]
  %f156659 = load i64, i64* %i0ptr156657, align 8                                    ; load; *i0ptr156657
  %fptr156658 = inttoptr i64 %f156659 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156658(i64 %cont154758, i64 %arg155017, i64 %retprim154759); tail call
  ret void
}


define void @lam156254(i64 %env156255, i64 %cont154760, i64 %yNE$a, i64 %lvV$b) {
  %a154655 = call i64 @prim__60(i64 %yNE$a, i64 %lvV$b)                              ; call prim__60
  %retprim154761 = call i64 @prim_not(i64 %a154655)                                  ; call prim_not
  %arg155023 = add i64 0, 0                                                          ; quoted ()
  %cloptr156660 = inttoptr i64 %cont154760 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156661 = getelementptr inbounds i64, i64* %cloptr156660, i64 0               ; &cloptr156660[0]
  %f156663 = load i64, i64* %i0ptr156661, align 8                                    ; load; *i0ptr156661
  %fptr156662 = inttoptr i64 %f156663 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156662(i64 %cont154760, i64 %arg155023, i64 %retprim154761); tail call
  ret void
}


define void @lam156246(i64 %env156247, i64 %cont154851, i64 %dwd$ls0, i64 %Z6Z$ls1) {
  %envptr156664 = inttoptr i64 %env156247 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156665 = getelementptr inbounds i64, i64* %envptr156664, i64 1              ; &envptr156664[1]
  %uLv$_37append2 = load i64, i64* %envptr156665, align 8                            ; load; *envptr156665
  %a154656 = call i64 @prim_null_63(i64 %dwd$ls0)                                    ; call prim_null_63
  %cmp156666 = icmp eq i64 %a154656, 15                                              ; false?
  br i1 %cmp156666, label %else156668, label %then156667                             ; if

then156667:
  %arg155034 = add i64 0, 0                                                          ; quoted ()
  %cloptr156669 = inttoptr i64 %cont154851 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156670 = getelementptr inbounds i64, i64* %cloptr156669, i64 0               ; &cloptr156669[0]
  %f156672 = load i64, i64* %i0ptr156670, align 8                                    ; load; *i0ptr156670
  %fptr156671 = inttoptr i64 %f156672 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156671(i64 %cont154851, i64 %arg155034, i64 %Z6Z$ls1); tail call
  ret void

else156668:
  %a154657 = call i64 @prim_car(i64 %dwd$ls0)                                        ; call prim_car
  %arg155037 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154658 = call i64 @prim_vector_45ref(i64 %uLv$_37append2, i64 %arg155037)        ; call prim_vector_45ref
  %a154659 = call i64 @prim_cdr(i64 %dwd$ls0)                                        ; call prim_cdr
  %cloptr156673 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156675 = getelementptr inbounds i64, i64* %cloptr156673, i64 1                ; &eptr156675[1]
  %eptr156676 = getelementptr inbounds i64, i64* %cloptr156673, i64 2                ; &eptr156676[2]
  store i64 %cont154851, i64* %eptr156675                                            ; *eptr156675 = %cont154851
  store i64 %a154657, i64* %eptr156676                                               ; *eptr156676 = %a154657
  %eptr156674 = getelementptr inbounds i64, i64* %cloptr156673, i64 0                ; &cloptr156673[0]
  %f156677 = ptrtoint void(i64,i64,i64)* @lam156243 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156677, i64* %eptr156674                                               ; store fptr
  %arg155042 = ptrtoint i64* %cloptr156673 to i64                                    ; closure cast; i64* -> i64
  %cloptr156678 = inttoptr i64 %a154658 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr156679 = getelementptr inbounds i64, i64* %cloptr156678, i64 0               ; &cloptr156678[0]
  %f156681 = load i64, i64* %i0ptr156679, align 8                                    ; load; *i0ptr156679
  %fptr156680 = inttoptr i64 %f156681 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156680(i64 %a154658, i64 %arg155042, i64 %a154659, i64 %Z6Z$ls1); tail call
  ret void
}


define void @lam156243(i64 %env156244, i64 %_95154852, i64 %a154660) {
  %envptr156682 = inttoptr i64 %env156244 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156683 = getelementptr inbounds i64, i64* %envptr156682, i64 2              ; &envptr156682[2]
  %a154657 = load i64, i64* %envptr156683, align 8                                   ; load; *envptr156683
  %envptr156684 = inttoptr i64 %env156244 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156685 = getelementptr inbounds i64, i64* %envptr156684, i64 1              ; &envptr156684[1]
  %cont154851 = load i64, i64* %envptr156685, align 8                                ; load; *envptr156685
  %retprim154853 = call i64 @prim_cons(i64 %a154657, i64 %a154660)                   ; call prim_cons
  %arg155047 = add i64 0, 0                                                          ; quoted ()
  %cloptr156686 = inttoptr i64 %cont154851 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156687 = getelementptr inbounds i64, i64* %cloptr156686, i64 0               ; &cloptr156686[0]
  %f156689 = load i64, i64* %i0ptr156687, align 8                                    ; load; *i0ptr156687
  %fptr156688 = inttoptr i64 %f156689 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156688(i64 %cont154851, i64 %arg155047, i64 %retprim154853); tail call
  ret void
}


define void @lam156238(i64 %env156239, i64 %bD9$xs154855) {
  %envptr156690 = inttoptr i64 %env156239 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156691 = getelementptr inbounds i64, i64* %envptr156690, i64 2              ; &envptr156690[2]
  %uLv$_37append2 = load i64, i64* %envptr156691, align 8                            ; load; *envptr156691
  %envptr156692 = inttoptr i64 %env156239 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156693 = getelementptr inbounds i64, i64* %envptr156692, i64 1              ; &envptr156692[1]
  %npx$_37append = load i64, i64* %envptr156693, align 8                             ; load; *envptr156693
  %cont154854 = call i64 @prim_car(i64 %bD9$xs154855)                                ; call prim_car
  %bD9$xs = call i64 @prim_cdr(i64 %bD9$xs154855)                                    ; call prim_cdr
  %a154661 = call i64 @prim_null_63(i64 %bD9$xs)                                     ; call prim_null_63
  %cmp156694 = icmp eq i64 %a154661, 15                                              ; false?
  br i1 %cmp156694, label %else156696, label %then156695                             ; if

then156695:
  %arg155056 = add i64 0, 0                                                          ; quoted ()
  %arg155055 = add i64 0, 0                                                          ; quoted ()
  %cloptr156697 = inttoptr i64 %cont154854 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156698 = getelementptr inbounds i64, i64* %cloptr156697, i64 0               ; &cloptr156697[0]
  %f156700 = load i64, i64* %i0ptr156698, align 8                                    ; load; *i0ptr156698
  %fptr156699 = inttoptr i64 %f156700 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156699(i64 %cont154854, i64 %arg155056, i64 %arg155055); tail call
  ret void

else156696:
  %Gto$hd = call i64 @prim_car(i64 %bD9$xs)                                          ; call prim_car
  %to4$tl = call i64 @prim_cdr(i64 %bD9$xs)                                          ; call prim_cdr
  %arg155060 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154662 = call i64 @prim_vector_45ref(i64 %npx$_37append, i64 %arg155060)         ; call prim_vector_45ref
  %cloptr156701 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156703 = getelementptr inbounds i64, i64* %cloptr156701, i64 1                ; &eptr156703[1]
  %eptr156704 = getelementptr inbounds i64, i64* %cloptr156701, i64 2                ; &eptr156704[2]
  %eptr156705 = getelementptr inbounds i64, i64* %cloptr156701, i64 3                ; &eptr156705[3]
  store i64 %Gto$hd, i64* %eptr156703                                                ; *eptr156703 = %Gto$hd
  store i64 %cont154854, i64* %eptr156704                                            ; *eptr156704 = %cont154854
  store i64 %uLv$_37append2, i64* %eptr156705                                        ; *eptr156705 = %uLv$_37append2
  %eptr156702 = getelementptr inbounds i64, i64* %cloptr156701, i64 0                ; &cloptr156701[0]
  %f156706 = ptrtoint void(i64,i64,i64)* @lam156235 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156706, i64* %eptr156702                                               ; store fptr
  %arg155063 = ptrtoint i64* %cloptr156701 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst154857 = call i64 @prim_cons(i64 %arg155063, i64 %to4$tl)                ; call prim_cons
  %cloptr156707 = inttoptr i64 %a154662 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr156708 = getelementptr inbounds i64, i64* %cloptr156707, i64 0               ; &cloptr156707[0]
  %f156710 = load i64, i64* %i0ptr156708, align 8                                    ; load; *i0ptr156708
  %fptr156709 = inttoptr i64 %f156710 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156709(i64 %a154662, i64 %cps_45lst154857)          ; tail call
  ret void
}


define void @lam156235(i64 %env156236, i64 %_95154856, i64 %KXR$result1) {
  %envptr156711 = inttoptr i64 %env156236 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156712 = getelementptr inbounds i64, i64* %envptr156711, i64 3              ; &envptr156711[3]
  %uLv$_37append2 = load i64, i64* %envptr156712, align 8                            ; load; *envptr156712
  %envptr156713 = inttoptr i64 %env156236 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156714 = getelementptr inbounds i64, i64* %envptr156713, i64 2              ; &envptr156713[2]
  %cont154854 = load i64, i64* %envptr156714, align 8                                ; load; *envptr156714
  %envptr156715 = inttoptr i64 %env156236 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156716 = getelementptr inbounds i64, i64* %envptr156715, i64 1              ; &envptr156715[1]
  %Gto$hd = load i64, i64* %envptr156716, align 8                                    ; load; *envptr156716
  %arg155064 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154663 = call i64 @prim_vector_45ref(i64 %uLv$_37append2, i64 %arg155064)        ; call prim_vector_45ref
  %cloptr156717 = inttoptr i64 %a154663 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr156718 = getelementptr inbounds i64, i64* %cloptr156717, i64 0               ; &cloptr156717[0]
  %f156720 = load i64, i64* %i0ptr156718, align 8                                    ; load; *i0ptr156718
  %fptr156719 = inttoptr i64 %f156720 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156719(i64 %a154663, i64 %cont154854, i64 %Gto$hd, i64 %KXR$result1); tail call
  ret void
}


define void @lam156229(i64 %env156230, i64 %_95154762, i64 %BMR$_37append) {
  %envptr156721 = inttoptr i64 %env156230 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156722 = getelementptr inbounds i64, i64* %envptr156721, i64 3              ; &envptr156721[3]
  %SGA$_37_62 = load i64, i64* %envptr156722, align 8                                ; load; *envptr156722
  %envptr156723 = inttoptr i64 %env156230 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156724 = getelementptr inbounds i64, i64* %envptr156723, i64 2              ; &envptr156723[2]
  %osj$_37foldl1 = load i64, i64* %envptr156724, align 8                             ; load; *envptr156724
  %envptr156725 = inttoptr i64 %env156230 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156726 = getelementptr inbounds i64, i64* %envptr156725, i64 1              ; &envptr156725[1]
  %VE0$_37length = load i64, i64* %envptr156726, align 8                             ; load; *envptr156726
  %cloptr156727 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156728 = getelementptr inbounds i64, i64* %cloptr156727, i64 0                ; &cloptr156727[0]
  %f156729 = ptrtoint void(i64,i64,i64)* @lam156227 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156729, i64* %eptr156728                                               ; store fptr
  %SqY$_37list_63 = ptrtoint i64* %cloptr156727 to i64                               ; closure cast; i64* -> i64
  %cloptr156730 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156731 = getelementptr inbounds i64, i64* %cloptr156730, i64 0                ; &cloptr156730[0]
  %f156732 = ptrtoint void(i64,i64,i64,i64)* @lam156187 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f156732, i64* %eptr156731                                               ; store fptr
  %Gl0$_37drop = ptrtoint i64* %cloptr156730 to i64                                  ; closure cast; i64* -> i64
  %cloptr156733 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156734 = getelementptr inbounds i64, i64* %cloptr156733, i64 0                ; &cloptr156733[0]
  %f156735 = ptrtoint void(i64,i64,i64,i64)* @lam156147 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f156735, i64* %eptr156734                                               ; store fptr
  %Cez$_37memv = ptrtoint i64* %cloptr156733 to i64                                  ; closure cast; i64* -> i64
  %cloptr156736 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr156738 = getelementptr inbounds i64, i64* %cloptr156736, i64 1                ; &eptr156738[1]
  store i64 %osj$_37foldl1, i64* %eptr156738                                         ; *eptr156738 = %osj$_37foldl1
  %eptr156737 = getelementptr inbounds i64, i64* %cloptr156736, i64 0                ; &cloptr156736[0]
  %f156739 = ptrtoint void(i64,i64)* @lam156116 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f156739, i64* %eptr156737                                               ; store fptr
  %fEK$_37_47 = ptrtoint i64* %cloptr156736 to i64                                   ; closure cast; i64* -> i64
  %cloptr156740 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156741 = getelementptr inbounds i64, i64* %cloptr156740, i64 0                ; &cloptr156740[0]
  %f156742 = ptrtoint void(i64,i64,i64)* @lam156108 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156742, i64* %eptr156741                                               ; store fptr
  %Pq9$_37first = ptrtoint i64* %cloptr156740 to i64                                 ; closure cast; i64* -> i64
  %cloptr156743 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156744 = getelementptr inbounds i64, i64* %cloptr156743, i64 0                ; &cloptr156743[0]
  %f156745 = ptrtoint void(i64,i64,i64)* @lam156105 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156745, i64* %eptr156744                                               ; store fptr
  %TFK$_37second = ptrtoint i64* %cloptr156743 to i64                                ; closure cast; i64* -> i64
  %cloptr156746 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156747 = getelementptr inbounds i64, i64* %cloptr156746, i64 0                ; &cloptr156746[0]
  %f156748 = ptrtoint void(i64,i64,i64)* @lam156102 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156748, i64* %eptr156747                                               ; store fptr
  %jMx$_37third = ptrtoint i64* %cloptr156746 to i64                                 ; closure cast; i64* -> i64
  %cloptr156749 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156750 = getelementptr inbounds i64, i64* %cloptr156749, i64 0                ; &cloptr156749[0]
  %f156751 = ptrtoint void(i64,i64,i64)* @lam156099 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156751, i64* %eptr156750                                               ; store fptr
  %xVc$_37fourth = ptrtoint i64* %cloptr156749 to i64                                ; closure cast; i64* -> i64
  %cloptr156752 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156753 = getelementptr inbounds i64, i64* %cloptr156752, i64 0                ; &cloptr156752[0]
  %f156754 = ptrtoint void(i64,i64,i64)* @lam156096 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156754, i64* %eptr156753                                               ; store fptr
  %Vxs$promise_63 = ptrtoint i64* %cloptr156752 to i64                               ; closure cast; i64* -> i64
  %cloptr156755 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156756 = getelementptr inbounds i64, i64* %cloptr156755, i64 0                ; &cloptr156755[0]
  %f156757 = ptrtoint void(i64,i64)* @lam156090 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f156757, i64* %eptr156756                                               ; store fptr
  %arg155336 = ptrtoint i64* %cloptr156755 to i64                                    ; closure cast; i64* -> i64
  %cloptr156758 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156760 = getelementptr inbounds i64, i64* %cloptr156758, i64 1                ; &eptr156760[1]
  %eptr156761 = getelementptr inbounds i64, i64* %cloptr156758, i64 2                ; &eptr156761[2]
  %eptr156762 = getelementptr inbounds i64, i64* %cloptr156758, i64 3                ; &eptr156762[3]
  store i64 %VE0$_37length, i64* %eptr156760                                         ; *eptr156760 = %VE0$_37length
  store i64 %Gl0$_37drop, i64* %eptr156761                                           ; *eptr156761 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr156762                                            ; *eptr156762 = %SGA$_37_62
  %eptr156759 = getelementptr inbounds i64, i64* %cloptr156758, i64 0                ; &cloptr156758[0]
  %f156763 = ptrtoint void(i64,i64,i64)* @lam156087 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156763, i64* %eptr156759                                               ; store fptr
  %arg155335 = ptrtoint i64* %cloptr156758 to i64                                    ; closure cast; i64* -> i64
  %rva155822 = add i64 0, 0                                                          ; quoted ()
  %rva155821 = call i64 @prim_cons(i64 %arg155335, i64 %rva155822)                   ; call prim_cons
  %cloptr156764 = inttoptr i64 %arg155336 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156765 = getelementptr inbounds i64, i64* %cloptr156764, i64 0               ; &cloptr156764[0]
  %f156767 = load i64, i64* %i0ptr156765, align 8                                    ; load; *i0ptr156765
  %fptr156766 = inttoptr i64 %f156767 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156766(i64 %arg155336, i64 %rva155821)              ; tail call
  ret void
}


define void @lam156227(i64 %env156228, i64 %cont154763, i64 %uo2$a) {
  %arg155076 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %mcO$a = call i64 @prim_make_45vector(i64 %arg155076, i64 %uo2$a)                  ; call prim_make_45vector
  %cloptr156768 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156769 = getelementptr inbounds i64, i64* %cloptr156768, i64 0                ; &cloptr156768[0]
  %f156770 = ptrtoint void(i64,i64,i64)* @lam156224 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156770, i64* %eptr156769                                               ; store fptr
  %arg155079 = ptrtoint i64* %cloptr156768 to i64                                    ; closure cast; i64* -> i64
  %cloptr156771 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156773 = getelementptr inbounds i64, i64* %cloptr156771, i64 1                ; &eptr156773[1]
  %eptr156774 = getelementptr inbounds i64, i64* %cloptr156771, i64 2                ; &eptr156774[2]
  store i64 %cont154763, i64* %eptr156773                                            ; *eptr156773 = %cont154763
  store i64 %mcO$a, i64* %eptr156774                                                 ; *eptr156774 = %mcO$a
  %eptr156772 = getelementptr inbounds i64, i64* %cloptr156771, i64 0                ; &cloptr156771[0]
  %f156775 = ptrtoint void(i64,i64,i64)* @lam156221 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156775, i64* %eptr156772                                               ; store fptr
  %arg155078 = ptrtoint i64* %cloptr156771 to i64                                    ; closure cast; i64* -> i64
  %cloptr156776 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156778 = getelementptr inbounds i64, i64* %cloptr156776, i64 1                ; &eptr156778[1]
  %eptr156779 = getelementptr inbounds i64, i64* %cloptr156776, i64 2                ; &eptr156779[2]
  store i64 %cont154763, i64* %eptr156778                                            ; *eptr156778 = %cont154763
  store i64 %mcO$a, i64* %eptr156779                                                 ; *eptr156779 = %mcO$a
  %eptr156777 = getelementptr inbounds i64, i64* %cloptr156776, i64 0                ; &cloptr156776[0]
  %f156780 = ptrtoint void(i64,i64,i64)* @lam156204 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156780, i64* %eptr156777                                               ; store fptr
  %arg155077 = ptrtoint i64* %cloptr156776 to i64                                    ; closure cast; i64* -> i64
  %cloptr156781 = inttoptr i64 %arg155079 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156782 = getelementptr inbounds i64, i64* %cloptr156781, i64 0               ; &cloptr156781[0]
  %f156784 = load i64, i64* %i0ptr156782, align 8                                    ; load; *i0ptr156782
  %fptr156783 = inttoptr i64 %f156784 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156783(i64 %arg155079, i64 %arg155078, i64 %arg155077); tail call
  ret void
}


define void @lam156224(i64 %env156225, i64 %cont154769, i64 %zrK$k) {
  %arg155081 = add i64 0, 0                                                          ; quoted ()
  %cloptr156785 = inttoptr i64 %cont154769 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156786 = getelementptr inbounds i64, i64* %cloptr156785, i64 0               ; &cloptr156785[0]
  %f156788 = load i64, i64* %i0ptr156786, align 8                                    ; load; *i0ptr156786
  %fptr156787 = inttoptr i64 %f156788 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156787(i64 %cont154769, i64 %arg155081, i64 %zrK$k) ; tail call
  ret void
}


define void @lam156221(i64 %env156222, i64 %_95154764, i64 %A6d$cc) {
  %envptr156789 = inttoptr i64 %env156222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156790 = getelementptr inbounds i64, i64* %envptr156789, i64 2              ; &envptr156789[2]
  %mcO$a = load i64, i64* %envptr156790, align 8                                     ; load; *envptr156790
  %envptr156791 = inttoptr i64 %env156222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156792 = getelementptr inbounds i64, i64* %envptr156791, i64 1              ; &envptr156791[1]
  %cont154763 = load i64, i64* %envptr156792, align 8                                ; load; *envptr156792
  %arg155083 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154664 = call i64 @prim_vector_45ref(i64 %mcO$a, i64 %arg155083)                 ; call prim_vector_45ref
  %a154665 = call i64 @prim_null_63(i64 %a154664)                                    ; call prim_null_63
  %cmp156793 = icmp eq i64 %a154665, 15                                              ; false?
  br i1 %cmp156793, label %else156795, label %then156794                             ; if

then156794:
  %arg155087 = add i64 0, 0                                                          ; quoted ()
  %arg155086 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr156796 = inttoptr i64 %cont154763 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156797 = getelementptr inbounds i64, i64* %cloptr156796, i64 0               ; &cloptr156796[0]
  %f156799 = load i64, i64* %i0ptr156797, align 8                                    ; load; *i0ptr156797
  %fptr156798 = inttoptr i64 %f156799 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156798(i64 %cont154763, i64 %arg155087, i64 %arg155086); tail call
  ret void

else156795:
  %arg155089 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154666 = call i64 @prim_vector_45ref(i64 %mcO$a, i64 %arg155089)                 ; call prim_vector_45ref
  %a154667 = call i64 @prim_cons_63(i64 %a154666)                                    ; call prim_cons_63
  %cmp156800 = icmp eq i64 %a154667, 15                                              ; false?
  br i1 %cmp156800, label %else156802, label %then156801                             ; if

then156801:
  %arg155092 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154668 = call i64 @prim_vector_45ref(i64 %mcO$a, i64 %arg155092)                 ; call prim_vector_45ref
  %retprim154768 = call i64 @prim_cdr(i64 %a154668)                                  ; call prim_cdr
  %cloptr156803 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156805 = getelementptr inbounds i64, i64* %cloptr156803, i64 1                ; &eptr156805[1]
  %eptr156806 = getelementptr inbounds i64, i64* %cloptr156803, i64 2                ; &eptr156806[2]
  %eptr156807 = getelementptr inbounds i64, i64* %cloptr156803, i64 3                ; &eptr156807[3]
  store i64 %cont154763, i64* %eptr156805                                            ; *eptr156805 = %cont154763
  store i64 %A6d$cc, i64* %eptr156806                                                ; *eptr156806 = %A6d$cc
  store i64 %mcO$a, i64* %eptr156807                                                 ; *eptr156807 = %mcO$a
  %eptr156804 = getelementptr inbounds i64, i64* %cloptr156803, i64 0                ; &cloptr156803[0]
  %f156808 = ptrtoint void(i64,i64,i64)* @lam156214 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156808, i64* %eptr156804                                               ; store fptr
  %arg155097 = ptrtoint i64* %cloptr156803 to i64                                    ; closure cast; i64* -> i64
  %arg155096 = add i64 0, 0                                                          ; quoted ()
  %cloptr156809 = inttoptr i64 %arg155097 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156810 = getelementptr inbounds i64, i64* %cloptr156809, i64 0               ; &cloptr156809[0]
  %f156812 = load i64, i64* %i0ptr156810, align 8                                    ; load; *i0ptr156810
  %fptr156811 = inttoptr i64 %f156812 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156811(i64 %arg155097, i64 %arg155096, i64 %retprim154768); tail call
  ret void

else156802:
  %arg155111 = add i64 0, 0                                                          ; quoted ()
  %arg155110 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr156813 = inttoptr i64 %cont154763 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156814 = getelementptr inbounds i64, i64* %cloptr156813, i64 0               ; &cloptr156813[0]
  %f156816 = load i64, i64* %i0ptr156814, align 8                                    ; load; *i0ptr156814
  %fptr156815 = inttoptr i64 %f156816 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156815(i64 %cont154763, i64 %arg155111, i64 %arg155110); tail call
  ret void
}


define void @lam156214(i64 %env156215, i64 %_95154765, i64 %mMP$b) {
  %envptr156817 = inttoptr i64 %env156215 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156818 = getelementptr inbounds i64, i64* %envptr156817, i64 3              ; &envptr156817[3]
  %mcO$a = load i64, i64* %envptr156818, align 8                                     ; load; *envptr156818
  %envptr156819 = inttoptr i64 %env156215 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156820 = getelementptr inbounds i64, i64* %envptr156819, i64 2              ; &envptr156819[2]
  %A6d$cc = load i64, i64* %envptr156820, align 8                                    ; load; *envptr156820
  %envptr156821 = inttoptr i64 %env156215 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156822 = getelementptr inbounds i64, i64* %envptr156821, i64 1              ; &envptr156821[1]
  %cont154763 = load i64, i64* %envptr156822, align 8                                ; load; *envptr156822
  %arg155098 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154669 = call i64 @prim_vector_45ref(i64 %mcO$a, i64 %arg155098)                 ; call prim_vector_45ref
  %a154670 = call i64 @prim_cdr(i64 %a154669)                                        ; call prim_cdr
  %arg155102 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154767 = call i64 @prim_vector_45set_33(i64 %mcO$a, i64 %arg155102, i64 %a154670); call prim_vector_45set_33
  %cloptr156823 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156825 = getelementptr inbounds i64, i64* %cloptr156823, i64 1                ; &eptr156825[1]
  %eptr156826 = getelementptr inbounds i64, i64* %cloptr156823, i64 2                ; &eptr156826[2]
  store i64 %cont154763, i64* %eptr156825                                            ; *eptr156825 = %cont154763
  store i64 %A6d$cc, i64* %eptr156826                                                ; *eptr156826 = %A6d$cc
  %eptr156824 = getelementptr inbounds i64, i64* %cloptr156823, i64 0                ; &cloptr156823[0]
  %f156827 = ptrtoint void(i64,i64,i64)* @lam156210 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156827, i64* %eptr156824                                               ; store fptr
  %arg155106 = ptrtoint i64* %cloptr156823 to i64                                    ; closure cast; i64* -> i64
  %arg155105 = add i64 0, 0                                                          ; quoted ()
  %cloptr156828 = inttoptr i64 %arg155106 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156829 = getelementptr inbounds i64, i64* %cloptr156828, i64 0               ; &cloptr156828[0]
  %f156831 = load i64, i64* %i0ptr156829, align 8                                    ; load; *i0ptr156829
  %fptr156830 = inttoptr i64 %f156831 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156830(i64 %arg155106, i64 %arg155105, i64 %retprim154767); tail call
  ret void
}


define void @lam156210(i64 %env156211, i64 %_95154766, i64 %dl7$_950) {
  %envptr156832 = inttoptr i64 %env156211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156833 = getelementptr inbounds i64, i64* %envptr156832, i64 2              ; &envptr156832[2]
  %A6d$cc = load i64, i64* %envptr156833, align 8                                    ; load; *envptr156833
  %envptr156834 = inttoptr i64 %env156211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156835 = getelementptr inbounds i64, i64* %envptr156834, i64 1              ; &envptr156834[1]
  %cont154763 = load i64, i64* %envptr156835, align 8                                ; load; *envptr156835
  %cloptr156836 = inttoptr i64 %A6d$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr156837 = getelementptr inbounds i64, i64* %cloptr156836, i64 0               ; &cloptr156836[0]
  %f156839 = load i64, i64* %i0ptr156837, align 8                                    ; load; *i0ptr156837
  %fptr156838 = inttoptr i64 %f156839 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156838(i64 %A6d$cc, i64 %cont154763, i64 %A6d$cc)   ; tail call
  ret void
}


define void @lam156204(i64 %env156205, i64 %_95154764, i64 %A6d$cc) {
  %envptr156840 = inttoptr i64 %env156205 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156841 = getelementptr inbounds i64, i64* %envptr156840, i64 2              ; &envptr156840[2]
  %mcO$a = load i64, i64* %envptr156841, align 8                                     ; load; *envptr156841
  %envptr156842 = inttoptr i64 %env156205 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156843 = getelementptr inbounds i64, i64* %envptr156842, i64 1              ; &envptr156842[1]
  %cont154763 = load i64, i64* %envptr156843, align 8                                ; load; *envptr156843
  %arg155113 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154664 = call i64 @prim_vector_45ref(i64 %mcO$a, i64 %arg155113)                 ; call prim_vector_45ref
  %a154665 = call i64 @prim_null_63(i64 %a154664)                                    ; call prim_null_63
  %cmp156844 = icmp eq i64 %a154665, 15                                              ; false?
  br i1 %cmp156844, label %else156846, label %then156845                             ; if

then156845:
  %arg155117 = add i64 0, 0                                                          ; quoted ()
  %arg155116 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr156847 = inttoptr i64 %cont154763 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156848 = getelementptr inbounds i64, i64* %cloptr156847, i64 0               ; &cloptr156847[0]
  %f156850 = load i64, i64* %i0ptr156848, align 8                                    ; load; *i0ptr156848
  %fptr156849 = inttoptr i64 %f156850 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156849(i64 %cont154763, i64 %arg155117, i64 %arg155116); tail call
  ret void

else156846:
  %arg155119 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154666 = call i64 @prim_vector_45ref(i64 %mcO$a, i64 %arg155119)                 ; call prim_vector_45ref
  %a154667 = call i64 @prim_cons_63(i64 %a154666)                                    ; call prim_cons_63
  %cmp156851 = icmp eq i64 %a154667, 15                                              ; false?
  br i1 %cmp156851, label %else156853, label %then156852                             ; if

then156852:
  %arg155122 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154668 = call i64 @prim_vector_45ref(i64 %mcO$a, i64 %arg155122)                 ; call prim_vector_45ref
  %retprim154768 = call i64 @prim_cdr(i64 %a154668)                                  ; call prim_cdr
  %cloptr156854 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156856 = getelementptr inbounds i64, i64* %cloptr156854, i64 1                ; &eptr156856[1]
  %eptr156857 = getelementptr inbounds i64, i64* %cloptr156854, i64 2                ; &eptr156857[2]
  %eptr156858 = getelementptr inbounds i64, i64* %cloptr156854, i64 3                ; &eptr156858[3]
  store i64 %cont154763, i64* %eptr156856                                            ; *eptr156856 = %cont154763
  store i64 %A6d$cc, i64* %eptr156857                                                ; *eptr156857 = %A6d$cc
  store i64 %mcO$a, i64* %eptr156858                                                 ; *eptr156858 = %mcO$a
  %eptr156855 = getelementptr inbounds i64, i64* %cloptr156854, i64 0                ; &cloptr156854[0]
  %f156859 = ptrtoint void(i64,i64,i64)* @lam156197 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156859, i64* %eptr156855                                               ; store fptr
  %arg155127 = ptrtoint i64* %cloptr156854 to i64                                    ; closure cast; i64* -> i64
  %arg155126 = add i64 0, 0                                                          ; quoted ()
  %cloptr156860 = inttoptr i64 %arg155127 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156861 = getelementptr inbounds i64, i64* %cloptr156860, i64 0               ; &cloptr156860[0]
  %f156863 = load i64, i64* %i0ptr156861, align 8                                    ; load; *i0ptr156861
  %fptr156862 = inttoptr i64 %f156863 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156862(i64 %arg155127, i64 %arg155126, i64 %retprim154768); tail call
  ret void

else156853:
  %arg155141 = add i64 0, 0                                                          ; quoted ()
  %arg155140 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr156864 = inttoptr i64 %cont154763 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156865 = getelementptr inbounds i64, i64* %cloptr156864, i64 0               ; &cloptr156864[0]
  %f156867 = load i64, i64* %i0ptr156865, align 8                                    ; load; *i0ptr156865
  %fptr156866 = inttoptr i64 %f156867 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156866(i64 %cont154763, i64 %arg155141, i64 %arg155140); tail call
  ret void
}


define void @lam156197(i64 %env156198, i64 %_95154765, i64 %mMP$b) {
  %envptr156868 = inttoptr i64 %env156198 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156869 = getelementptr inbounds i64, i64* %envptr156868, i64 3              ; &envptr156868[3]
  %mcO$a = load i64, i64* %envptr156869, align 8                                     ; load; *envptr156869
  %envptr156870 = inttoptr i64 %env156198 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156871 = getelementptr inbounds i64, i64* %envptr156870, i64 2              ; &envptr156870[2]
  %A6d$cc = load i64, i64* %envptr156871, align 8                                    ; load; *envptr156871
  %envptr156872 = inttoptr i64 %env156198 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156873 = getelementptr inbounds i64, i64* %envptr156872, i64 1              ; &envptr156872[1]
  %cont154763 = load i64, i64* %envptr156873, align 8                                ; load; *envptr156873
  %arg155128 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154669 = call i64 @prim_vector_45ref(i64 %mcO$a, i64 %arg155128)                 ; call prim_vector_45ref
  %a154670 = call i64 @prim_cdr(i64 %a154669)                                        ; call prim_cdr
  %arg155132 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154767 = call i64 @prim_vector_45set_33(i64 %mcO$a, i64 %arg155132, i64 %a154670); call prim_vector_45set_33
  %cloptr156874 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156876 = getelementptr inbounds i64, i64* %cloptr156874, i64 1                ; &eptr156876[1]
  %eptr156877 = getelementptr inbounds i64, i64* %cloptr156874, i64 2                ; &eptr156877[2]
  store i64 %cont154763, i64* %eptr156876                                            ; *eptr156876 = %cont154763
  store i64 %A6d$cc, i64* %eptr156877                                                ; *eptr156877 = %A6d$cc
  %eptr156875 = getelementptr inbounds i64, i64* %cloptr156874, i64 0                ; &cloptr156874[0]
  %f156878 = ptrtoint void(i64,i64,i64)* @lam156193 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156878, i64* %eptr156875                                               ; store fptr
  %arg155136 = ptrtoint i64* %cloptr156874 to i64                                    ; closure cast; i64* -> i64
  %arg155135 = add i64 0, 0                                                          ; quoted ()
  %cloptr156879 = inttoptr i64 %arg155136 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156880 = getelementptr inbounds i64, i64* %cloptr156879, i64 0               ; &cloptr156879[0]
  %f156882 = load i64, i64* %i0ptr156880, align 8                                    ; load; *i0ptr156880
  %fptr156881 = inttoptr i64 %f156882 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156881(i64 %arg155136, i64 %arg155135, i64 %retprim154767); tail call
  ret void
}


define void @lam156193(i64 %env156194, i64 %_95154766, i64 %dl7$_950) {
  %envptr156883 = inttoptr i64 %env156194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156884 = getelementptr inbounds i64, i64* %envptr156883, i64 2              ; &envptr156883[2]
  %A6d$cc = load i64, i64* %envptr156884, align 8                                    ; load; *envptr156884
  %envptr156885 = inttoptr i64 %env156194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156886 = getelementptr inbounds i64, i64* %envptr156885, i64 1              ; &envptr156885[1]
  %cont154763 = load i64, i64* %envptr156886, align 8                                ; load; *envptr156886
  %cloptr156887 = inttoptr i64 %A6d$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr156888 = getelementptr inbounds i64, i64* %cloptr156887, i64 0               ; &cloptr156887[0]
  %f156890 = load i64, i64* %i0ptr156888, align 8                                    ; load; *i0ptr156888
  %fptr156889 = inttoptr i64 %f156890 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156889(i64 %A6d$cc, i64 %cont154763, i64 %A6d$cc)   ; tail call
  ret void
}


define void @lam156187(i64 %env156188, i64 %cont154770, i64 %PSx$lst, i64 %pDZ$n) {
  %arg155144 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %ts4$lst = call i64 @prim_make_45vector(i64 %arg155144, i64 %PSx$lst)              ; call prim_make_45vector
  %arg155146 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %HL9$n = call i64 @prim_make_45vector(i64 %arg155146, i64 %pDZ$n)                  ; call prim_make_45vector
  %cloptr156891 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr156892 = getelementptr inbounds i64, i64* %cloptr156891, i64 0                ; &cloptr156891[0]
  %f156893 = ptrtoint void(i64,i64,i64)* @lam156183 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156893, i64* %eptr156892                                               ; store fptr
  %arg155149 = ptrtoint i64* %cloptr156891 to i64                                    ; closure cast; i64* -> i64
  %cloptr156894 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156896 = getelementptr inbounds i64, i64* %cloptr156894, i64 1                ; &eptr156896[1]
  %eptr156897 = getelementptr inbounds i64, i64* %cloptr156894, i64 2                ; &eptr156897[2]
  %eptr156898 = getelementptr inbounds i64, i64* %cloptr156894, i64 3                ; &eptr156898[3]
  store i64 %ts4$lst, i64* %eptr156896                                               ; *eptr156896 = %ts4$lst
  store i64 %HL9$n, i64* %eptr156897                                                 ; *eptr156897 = %HL9$n
  store i64 %cont154770, i64* %eptr156898                                            ; *eptr156898 = %cont154770
  %eptr156895 = getelementptr inbounds i64, i64* %cloptr156894, i64 0                ; &cloptr156894[0]
  %f156899 = ptrtoint void(i64,i64,i64)* @lam156181 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156899, i64* %eptr156895                                               ; store fptr
  %arg155148 = ptrtoint i64* %cloptr156894 to i64                                    ; closure cast; i64* -> i64
  %cloptr156900 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156902 = getelementptr inbounds i64, i64* %cloptr156900, i64 1                ; &eptr156902[1]
  %eptr156903 = getelementptr inbounds i64, i64* %cloptr156900, i64 2                ; &eptr156903[2]
  %eptr156904 = getelementptr inbounds i64, i64* %cloptr156900, i64 3                ; &eptr156904[3]
  store i64 %ts4$lst, i64* %eptr156902                                               ; *eptr156902 = %ts4$lst
  store i64 %HL9$n, i64* %eptr156903                                                 ; *eptr156903 = %HL9$n
  store i64 %cont154770, i64* %eptr156904                                            ; *eptr156904 = %cont154770
  %eptr156901 = getelementptr inbounds i64, i64* %cloptr156900, i64 0                ; &cloptr156900[0]
  %f156905 = ptrtoint void(i64,i64,i64)* @lam156164 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156905, i64* %eptr156901                                               ; store fptr
  %arg155147 = ptrtoint i64* %cloptr156900 to i64                                    ; closure cast; i64* -> i64
  %cloptr156906 = inttoptr i64 %arg155149 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156907 = getelementptr inbounds i64, i64* %cloptr156906, i64 0               ; &cloptr156906[0]
  %f156909 = load i64, i64* %i0ptr156907, align 8                                    ; load; *i0ptr156907
  %fptr156908 = inttoptr i64 %f156909 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156908(i64 %arg155149, i64 %arg155148, i64 %arg155147); tail call
  ret void
}


define void @lam156183(i64 %env156184, i64 %cont154777, i64 %oZ8$u) {
  %cloptr156910 = inttoptr i64 %oZ8$u to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr156911 = getelementptr inbounds i64, i64* %cloptr156910, i64 0               ; &cloptr156910[0]
  %f156913 = load i64, i64* %i0ptr156911, align 8                                    ; load; *i0ptr156911
  %fptr156912 = inttoptr i64 %f156913 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156912(i64 %oZ8$u, i64 %cont154777, i64 %oZ8$u)     ; tail call
  ret void
}


define void @lam156181(i64 %env156182, i64 %_95154771, i64 %NF4$cc) {
  %envptr156914 = inttoptr i64 %env156182 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156915 = getelementptr inbounds i64, i64* %envptr156914, i64 3              ; &envptr156914[3]
  %cont154770 = load i64, i64* %envptr156915, align 8                                ; load; *envptr156915
  %envptr156916 = inttoptr i64 %env156182 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156917 = getelementptr inbounds i64, i64* %envptr156916, i64 2              ; &envptr156916[2]
  %HL9$n = load i64, i64* %envptr156917, align 8                                     ; load; *envptr156917
  %envptr156918 = inttoptr i64 %env156182 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156919 = getelementptr inbounds i64, i64* %envptr156918, i64 1              ; &envptr156918[1]
  %ts4$lst = load i64, i64* %envptr156919, align 8                                   ; load; *envptr156919
  %arg155153 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154671 = call i64 @prim_vector_45ref(i64 %HL9$n, i64 %arg155153)                 ; call prim_vector_45ref
  %arg155156 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154672 = call i64 @prim__61(i64 %arg155156, i64 %a154671)                        ; call prim__61
  %cmp156920 = icmp eq i64 %a154672, 15                                              ; false?
  br i1 %cmp156920, label %else156922, label %then156921                             ; if

then156921:
  %arg155157 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154772 = call i64 @prim_vector_45ref(i64 %ts4$lst, i64 %arg155157)         ; call prim_vector_45ref
  %arg155160 = add i64 0, 0                                                          ; quoted ()
  %cloptr156923 = inttoptr i64 %cont154770 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156924 = getelementptr inbounds i64, i64* %cloptr156923, i64 0               ; &cloptr156923[0]
  %f156926 = load i64, i64* %i0ptr156924, align 8                                    ; load; *i0ptr156924
  %fptr156925 = inttoptr i64 %f156926 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156925(i64 %cont154770, i64 %arg155160, i64 %retprim154772); tail call
  ret void

else156922:
  %arg155162 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154673 = call i64 @prim_vector_45ref(i64 %ts4$lst, i64 %arg155162)               ; call prim_vector_45ref
  %a154674 = call i64 @prim_cdr(i64 %a154673)                                        ; call prim_cdr
  %arg155166 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154776 = call i64 @prim_vector_45set_33(i64 %ts4$lst, i64 %arg155166, i64 %a154674); call prim_vector_45set_33
  %cloptr156927 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156929 = getelementptr inbounds i64, i64* %cloptr156927, i64 1                ; &eptr156929[1]
  %eptr156930 = getelementptr inbounds i64, i64* %cloptr156927, i64 2                ; &eptr156930[2]
  %eptr156931 = getelementptr inbounds i64, i64* %cloptr156927, i64 3                ; &eptr156931[3]
  store i64 %NF4$cc, i64* %eptr156929                                                ; *eptr156929 = %NF4$cc
  store i64 %HL9$n, i64* %eptr156930                                                 ; *eptr156930 = %HL9$n
  store i64 %cont154770, i64* %eptr156931                                            ; *eptr156931 = %cont154770
  %eptr156928 = getelementptr inbounds i64, i64* %cloptr156927, i64 0                ; &cloptr156927[0]
  %f156932 = ptrtoint void(i64,i64,i64)* @lam156175 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156932, i64* %eptr156928                                               ; store fptr
  %arg155170 = ptrtoint i64* %cloptr156927 to i64                                    ; closure cast; i64* -> i64
  %arg155169 = add i64 0, 0                                                          ; quoted ()
  %cloptr156933 = inttoptr i64 %arg155170 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156934 = getelementptr inbounds i64, i64* %cloptr156933, i64 0               ; &cloptr156933[0]
  %f156936 = load i64, i64* %i0ptr156934, align 8                                    ; load; *i0ptr156934
  %fptr156935 = inttoptr i64 %f156936 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156935(i64 %arg155170, i64 %arg155169, i64 %retprim154776); tail call
  ret void
}


define void @lam156175(i64 %env156176, i64 %_95154773, i64 %IMi$_950) {
  %envptr156937 = inttoptr i64 %env156176 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156938 = getelementptr inbounds i64, i64* %envptr156937, i64 3              ; &envptr156937[3]
  %cont154770 = load i64, i64* %envptr156938, align 8                                ; load; *envptr156938
  %envptr156939 = inttoptr i64 %env156176 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156940 = getelementptr inbounds i64, i64* %envptr156939, i64 2              ; &envptr156939[2]
  %HL9$n = load i64, i64* %envptr156940, align 8                                     ; load; *envptr156940
  %envptr156941 = inttoptr i64 %env156176 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156942 = getelementptr inbounds i64, i64* %envptr156941, i64 1              ; &envptr156941[1]
  %NF4$cc = load i64, i64* %envptr156942, align 8                                    ; load; *envptr156942
  %arg155171 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154675 = call i64 @prim_vector_45ref(i64 %HL9$n, i64 %arg155171)                 ; call prim_vector_45ref
  %arg155173 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a154676 = call i64 @prim__45(i64 %a154675, i64 %arg155173)                        ; call prim__45
  %arg155176 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154775 = call i64 @prim_vector_45set_33(i64 %HL9$n, i64 %arg155176, i64 %a154676); call prim_vector_45set_33
  %cloptr156943 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156945 = getelementptr inbounds i64, i64* %cloptr156943, i64 1                ; &eptr156945[1]
  %eptr156946 = getelementptr inbounds i64, i64* %cloptr156943, i64 2                ; &eptr156946[2]
  store i64 %NF4$cc, i64* %eptr156945                                                ; *eptr156945 = %NF4$cc
  store i64 %cont154770, i64* %eptr156946                                            ; *eptr156946 = %cont154770
  %eptr156944 = getelementptr inbounds i64, i64* %cloptr156943, i64 0                ; &cloptr156943[0]
  %f156947 = ptrtoint void(i64,i64,i64)* @lam156170 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156947, i64* %eptr156944                                               ; store fptr
  %arg155180 = ptrtoint i64* %cloptr156943 to i64                                    ; closure cast; i64* -> i64
  %arg155179 = add i64 0, 0                                                          ; quoted ()
  %cloptr156948 = inttoptr i64 %arg155180 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156949 = getelementptr inbounds i64, i64* %cloptr156948, i64 0               ; &cloptr156948[0]
  %f156951 = load i64, i64* %i0ptr156949, align 8                                    ; load; *i0ptr156949
  %fptr156950 = inttoptr i64 %f156951 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156950(i64 %arg155180, i64 %arg155179, i64 %retprim154775); tail call
  ret void
}


define void @lam156170(i64 %env156171, i64 %_95154774, i64 %IL6$_951) {
  %envptr156952 = inttoptr i64 %env156171 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156953 = getelementptr inbounds i64, i64* %envptr156952, i64 2              ; &envptr156952[2]
  %cont154770 = load i64, i64* %envptr156953, align 8                                ; load; *envptr156953
  %envptr156954 = inttoptr i64 %env156171 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156955 = getelementptr inbounds i64, i64* %envptr156954, i64 1              ; &envptr156954[1]
  %NF4$cc = load i64, i64* %envptr156955, align 8                                    ; load; *envptr156955
  %cloptr156956 = inttoptr i64 %NF4$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr156957 = getelementptr inbounds i64, i64* %cloptr156956, i64 0               ; &cloptr156956[0]
  %f156959 = load i64, i64* %i0ptr156957, align 8                                    ; load; *i0ptr156957
  %fptr156958 = inttoptr i64 %f156959 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156958(i64 %NF4$cc, i64 %cont154770, i64 %NF4$cc)   ; tail call
  ret void
}


define void @lam156164(i64 %env156165, i64 %_95154771, i64 %NF4$cc) {
  %envptr156960 = inttoptr i64 %env156165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156961 = getelementptr inbounds i64, i64* %envptr156960, i64 3              ; &envptr156960[3]
  %cont154770 = load i64, i64* %envptr156961, align 8                                ; load; *envptr156961
  %envptr156962 = inttoptr i64 %env156165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156963 = getelementptr inbounds i64, i64* %envptr156962, i64 2              ; &envptr156962[2]
  %HL9$n = load i64, i64* %envptr156963, align 8                                     ; load; *envptr156963
  %envptr156964 = inttoptr i64 %env156165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156965 = getelementptr inbounds i64, i64* %envptr156964, i64 1              ; &envptr156964[1]
  %ts4$lst = load i64, i64* %envptr156965, align 8                                   ; load; *envptr156965
  %arg155184 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154671 = call i64 @prim_vector_45ref(i64 %HL9$n, i64 %arg155184)                 ; call prim_vector_45ref
  %arg155187 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154672 = call i64 @prim__61(i64 %arg155187, i64 %a154671)                        ; call prim__61
  %cmp156966 = icmp eq i64 %a154672, 15                                              ; false?
  br i1 %cmp156966, label %else156968, label %then156967                             ; if

then156967:
  %arg155188 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154772 = call i64 @prim_vector_45ref(i64 %ts4$lst, i64 %arg155188)         ; call prim_vector_45ref
  %arg155191 = add i64 0, 0                                                          ; quoted ()
  %cloptr156969 = inttoptr i64 %cont154770 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr156970 = getelementptr inbounds i64, i64* %cloptr156969, i64 0               ; &cloptr156969[0]
  %f156972 = load i64, i64* %i0ptr156970, align 8                                    ; load; *i0ptr156970
  %fptr156971 = inttoptr i64 %f156972 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156971(i64 %cont154770, i64 %arg155191, i64 %retprim154772); tail call
  ret void

else156968:
  %arg155193 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154673 = call i64 @prim_vector_45ref(i64 %ts4$lst, i64 %arg155193)               ; call prim_vector_45ref
  %a154674 = call i64 @prim_cdr(i64 %a154673)                                        ; call prim_cdr
  %arg155197 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154776 = call i64 @prim_vector_45set_33(i64 %ts4$lst, i64 %arg155197, i64 %a154674); call prim_vector_45set_33
  %cloptr156973 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr156975 = getelementptr inbounds i64, i64* %cloptr156973, i64 1                ; &eptr156975[1]
  %eptr156976 = getelementptr inbounds i64, i64* %cloptr156973, i64 2                ; &eptr156976[2]
  %eptr156977 = getelementptr inbounds i64, i64* %cloptr156973, i64 3                ; &eptr156977[3]
  store i64 %NF4$cc, i64* %eptr156975                                                ; *eptr156975 = %NF4$cc
  store i64 %HL9$n, i64* %eptr156976                                                 ; *eptr156976 = %HL9$n
  store i64 %cont154770, i64* %eptr156977                                            ; *eptr156977 = %cont154770
  %eptr156974 = getelementptr inbounds i64, i64* %cloptr156973, i64 0                ; &cloptr156973[0]
  %f156978 = ptrtoint void(i64,i64,i64)* @lam156158 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156978, i64* %eptr156974                                               ; store fptr
  %arg155201 = ptrtoint i64* %cloptr156973 to i64                                    ; closure cast; i64* -> i64
  %arg155200 = add i64 0, 0                                                          ; quoted ()
  %cloptr156979 = inttoptr i64 %arg155201 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156980 = getelementptr inbounds i64, i64* %cloptr156979, i64 0               ; &cloptr156979[0]
  %f156982 = load i64, i64* %i0ptr156980, align 8                                    ; load; *i0ptr156980
  %fptr156981 = inttoptr i64 %f156982 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156981(i64 %arg155201, i64 %arg155200, i64 %retprim154776); tail call
  ret void
}


define void @lam156158(i64 %env156159, i64 %_95154773, i64 %IMi$_950) {
  %envptr156983 = inttoptr i64 %env156159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156984 = getelementptr inbounds i64, i64* %envptr156983, i64 3              ; &envptr156983[3]
  %cont154770 = load i64, i64* %envptr156984, align 8                                ; load; *envptr156984
  %envptr156985 = inttoptr i64 %env156159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156986 = getelementptr inbounds i64, i64* %envptr156985, i64 2              ; &envptr156985[2]
  %HL9$n = load i64, i64* %envptr156986, align 8                                     ; load; *envptr156986
  %envptr156987 = inttoptr i64 %env156159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156988 = getelementptr inbounds i64, i64* %envptr156987, i64 1              ; &envptr156987[1]
  %NF4$cc = load i64, i64* %envptr156988, align 8                                    ; load; *envptr156988
  %arg155202 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154675 = call i64 @prim_vector_45ref(i64 %HL9$n, i64 %arg155202)                 ; call prim_vector_45ref
  %arg155204 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a154676 = call i64 @prim__45(i64 %a154675, i64 %arg155204)                        ; call prim__45
  %arg155207 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154775 = call i64 @prim_vector_45set_33(i64 %HL9$n, i64 %arg155207, i64 %a154676); call prim_vector_45set_33
  %cloptr156989 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr156991 = getelementptr inbounds i64, i64* %cloptr156989, i64 1                ; &eptr156991[1]
  %eptr156992 = getelementptr inbounds i64, i64* %cloptr156989, i64 2                ; &eptr156992[2]
  store i64 %NF4$cc, i64* %eptr156991                                                ; *eptr156991 = %NF4$cc
  store i64 %cont154770, i64* %eptr156992                                            ; *eptr156992 = %cont154770
  %eptr156990 = getelementptr inbounds i64, i64* %cloptr156989, i64 0                ; &cloptr156989[0]
  %f156993 = ptrtoint void(i64,i64,i64)* @lam156153 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f156993, i64* %eptr156990                                               ; store fptr
  %arg155211 = ptrtoint i64* %cloptr156989 to i64                                    ; closure cast; i64* -> i64
  %arg155210 = add i64 0, 0                                                          ; quoted ()
  %cloptr156994 = inttoptr i64 %arg155211 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr156995 = getelementptr inbounds i64, i64* %cloptr156994, i64 0               ; &cloptr156994[0]
  %f156997 = load i64, i64* %i0ptr156995, align 8                                    ; load; *i0ptr156995
  %fptr156996 = inttoptr i64 %f156997 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr156996(i64 %arg155211, i64 %arg155210, i64 %retprim154775); tail call
  ret void
}


define void @lam156153(i64 %env156154, i64 %_95154774, i64 %IL6$_951) {
  %envptr156998 = inttoptr i64 %env156154 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr156999 = getelementptr inbounds i64, i64* %envptr156998, i64 2              ; &envptr156998[2]
  %cont154770 = load i64, i64* %envptr156999, align 8                                ; load; *envptr156999
  %envptr157000 = inttoptr i64 %env156154 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157001 = getelementptr inbounds i64, i64* %envptr157000, i64 1              ; &envptr157000[1]
  %NF4$cc = load i64, i64* %envptr157001, align 8                                    ; load; *envptr157001
  %cloptr157002 = inttoptr i64 %NF4$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr157003 = getelementptr inbounds i64, i64* %cloptr157002, i64 0               ; &cloptr157002[0]
  %f157005 = load i64, i64* %i0ptr157003, align 8                                    ; load; *i0ptr157003
  %fptr157004 = inttoptr i64 %f157005 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157004(i64 %NF4$cc, i64 %cont154770, i64 %NF4$cc)   ; tail call
  ret void
}


define void @lam156147(i64 %env156148, i64 %cont154778, i64 %Oyg$v, i64 %aSl$lst) {
  %arg155216 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %QRR$lst = call i64 @prim_make_45vector(i64 %arg155216, i64 %aSl$lst)              ; call prim_make_45vector
  %cloptr157006 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157007 = getelementptr inbounds i64, i64* %cloptr157006, i64 0                ; &cloptr157006[0]
  %f157008 = ptrtoint void(i64,i64,i64)* @lam156144 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157008, i64* %eptr157007                                               ; store fptr
  %arg155219 = ptrtoint i64* %cloptr157006 to i64                                    ; closure cast; i64* -> i64
  %cloptr157009 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157011 = getelementptr inbounds i64, i64* %cloptr157009, i64 1                ; &eptr157011[1]
  %eptr157012 = getelementptr inbounds i64, i64* %cloptr157009, i64 2                ; &eptr157012[2]
  %eptr157013 = getelementptr inbounds i64, i64* %cloptr157009, i64 3                ; &eptr157013[3]
  store i64 %QRR$lst, i64* %eptr157011                                               ; *eptr157011 = %QRR$lst
  store i64 %Oyg$v, i64* %eptr157012                                                 ; *eptr157012 = %Oyg$v
  store i64 %cont154778, i64* %eptr157013                                            ; *eptr157013 = %cont154778
  %eptr157010 = getelementptr inbounds i64, i64* %cloptr157009, i64 0                ; &cloptr157009[0]
  %f157014 = ptrtoint void(i64,i64,i64)* @lam156142 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157014, i64* %eptr157010                                               ; store fptr
  %arg155218 = ptrtoint i64* %cloptr157009 to i64                                    ; closure cast; i64* -> i64
  %cloptr157015 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157017 = getelementptr inbounds i64, i64* %cloptr157015, i64 1                ; &eptr157017[1]
  %eptr157018 = getelementptr inbounds i64, i64* %cloptr157015, i64 2                ; &eptr157018[2]
  %eptr157019 = getelementptr inbounds i64, i64* %cloptr157015, i64 3                ; &eptr157019[3]
  store i64 %QRR$lst, i64* %eptr157017                                               ; *eptr157017 = %QRR$lst
  store i64 %Oyg$v, i64* %eptr157018                                                 ; *eptr157018 = %Oyg$v
  store i64 %cont154778, i64* %eptr157019                                            ; *eptr157019 = %cont154778
  %eptr157016 = getelementptr inbounds i64, i64* %cloptr157015, i64 0                ; &cloptr157015[0]
  %f157020 = ptrtoint void(i64,i64,i64)* @lam156129 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157020, i64* %eptr157016                                               ; store fptr
  %arg155217 = ptrtoint i64* %cloptr157015 to i64                                    ; closure cast; i64* -> i64
  %cloptr157021 = inttoptr i64 %arg155219 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157022 = getelementptr inbounds i64, i64* %cloptr157021, i64 0               ; &cloptr157021[0]
  %f157024 = load i64, i64* %i0ptr157022, align 8                                    ; load; *i0ptr157022
  %fptr157023 = inttoptr i64 %f157024 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157023(i64 %arg155219, i64 %arg155218, i64 %arg155217); tail call
  ret void
}


define void @lam156144(i64 %env156145, i64 %cont154783, i64 %DPJ$u) {
  %cloptr157025 = inttoptr i64 %DPJ$u to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr157026 = getelementptr inbounds i64, i64* %cloptr157025, i64 0               ; &cloptr157025[0]
  %f157028 = load i64, i64* %i0ptr157026, align 8                                    ; load; *i0ptr157026
  %fptr157027 = inttoptr i64 %f157028 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157027(i64 %DPJ$u, i64 %cont154783, i64 %DPJ$u)     ; tail call
  ret void
}


define void @lam156142(i64 %env156143, i64 %_95154779, i64 %iA8$cc) {
  %envptr157029 = inttoptr i64 %env156143 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157030 = getelementptr inbounds i64, i64* %envptr157029, i64 3              ; &envptr157029[3]
  %cont154778 = load i64, i64* %envptr157030, align 8                                ; load; *envptr157030
  %envptr157031 = inttoptr i64 %env156143 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157032 = getelementptr inbounds i64, i64* %envptr157031, i64 2              ; &envptr157031[2]
  %Oyg$v = load i64, i64* %envptr157032, align 8                                     ; load; *envptr157032
  %envptr157033 = inttoptr i64 %env156143 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157034 = getelementptr inbounds i64, i64* %envptr157033, i64 1              ; &envptr157033[1]
  %QRR$lst = load i64, i64* %envptr157034, align 8                                   ; load; *envptr157034
  %arg155223 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154677 = call i64 @prim_vector_45ref(i64 %QRR$lst, i64 %arg155223)               ; call prim_vector_45ref
  %a154678 = call i64 @prim_null_63(i64 %a154677)                                    ; call prim_null_63
  %cmp157035 = icmp eq i64 %a154678, 15                                              ; false?
  br i1 %cmp157035, label %else157037, label %then157036                             ; if

then157036:
  %arg155227 = add i64 0, 0                                                          ; quoted ()
  %arg155226 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr157038 = inttoptr i64 %cont154778 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157039 = getelementptr inbounds i64, i64* %cloptr157038, i64 0               ; &cloptr157038[0]
  %f157041 = load i64, i64* %i0ptr157039, align 8                                    ; load; *i0ptr157039
  %fptr157040 = inttoptr i64 %f157041 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157040(i64 %cont154778, i64 %arg155227, i64 %arg155226); tail call
  ret void

else157037:
  %arg155229 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154679 = call i64 @prim_vector_45ref(i64 %QRR$lst, i64 %arg155229)               ; call prim_vector_45ref
  %a154680 = call i64 @prim_car(i64 %a154679)                                        ; call prim_car
  %a154681 = call i64 @prim_eqv_63(i64 %a154680, i64 %Oyg$v)                         ; call prim_eqv_63
  %cmp157042 = icmp eq i64 %a154681, 15                                              ; false?
  br i1 %cmp157042, label %else157044, label %then157043                             ; if

then157043:
  %arg155234 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154780 = call i64 @prim_vector_45ref(i64 %QRR$lst, i64 %arg155234)         ; call prim_vector_45ref
  %arg155237 = add i64 0, 0                                                          ; quoted ()
  %cloptr157045 = inttoptr i64 %cont154778 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157046 = getelementptr inbounds i64, i64* %cloptr157045, i64 0               ; &cloptr157045[0]
  %f157048 = load i64, i64* %i0ptr157046, align 8                                    ; load; *i0ptr157046
  %fptr157047 = inttoptr i64 %f157048 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157047(i64 %cont154778, i64 %arg155237, i64 %retprim154780); tail call
  ret void

else157044:
  %arg155239 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154682 = call i64 @prim_vector_45ref(i64 %QRR$lst, i64 %arg155239)               ; call prim_vector_45ref
  %a154683 = call i64 @prim_cdr(i64 %a154682)                                        ; call prim_cdr
  %arg155243 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154782 = call i64 @prim_vector_45set_33(i64 %QRR$lst, i64 %arg155243, i64 %a154683); call prim_vector_45set_33
  %cloptr157049 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157051 = getelementptr inbounds i64, i64* %cloptr157049, i64 1                ; &eptr157051[1]
  %eptr157052 = getelementptr inbounds i64, i64* %cloptr157049, i64 2                ; &eptr157052[2]
  store i64 %cont154778, i64* %eptr157051                                            ; *eptr157051 = %cont154778
  store i64 %iA8$cc, i64* %eptr157052                                                ; *eptr157052 = %iA8$cc
  %eptr157050 = getelementptr inbounds i64, i64* %cloptr157049, i64 0                ; &cloptr157049[0]
  %f157053 = ptrtoint void(i64,i64,i64)* @lam156136 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157053, i64* %eptr157050                                               ; store fptr
  %arg155247 = ptrtoint i64* %cloptr157049 to i64                                    ; closure cast; i64* -> i64
  %arg155246 = add i64 0, 0                                                          ; quoted ()
  %cloptr157054 = inttoptr i64 %arg155247 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157055 = getelementptr inbounds i64, i64* %cloptr157054, i64 0               ; &cloptr157054[0]
  %f157057 = load i64, i64* %i0ptr157055, align 8                                    ; load; *i0ptr157055
  %fptr157056 = inttoptr i64 %f157057 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157056(i64 %arg155247, i64 %arg155246, i64 %retprim154782); tail call
  ret void
}


define void @lam156136(i64 %env156137, i64 %_95154781, i64 %eHX$_950) {
  %envptr157058 = inttoptr i64 %env156137 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157059 = getelementptr inbounds i64, i64* %envptr157058, i64 2              ; &envptr157058[2]
  %iA8$cc = load i64, i64* %envptr157059, align 8                                    ; load; *envptr157059
  %envptr157060 = inttoptr i64 %env156137 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157061 = getelementptr inbounds i64, i64* %envptr157060, i64 1              ; &envptr157060[1]
  %cont154778 = load i64, i64* %envptr157061, align 8                                ; load; *envptr157061
  %cloptr157062 = inttoptr i64 %iA8$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr157063 = getelementptr inbounds i64, i64* %cloptr157062, i64 0               ; &cloptr157062[0]
  %f157065 = load i64, i64* %i0ptr157063, align 8                                    ; load; *i0ptr157063
  %fptr157064 = inttoptr i64 %f157065 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157064(i64 %iA8$cc, i64 %cont154778, i64 %iA8$cc)   ; tail call
  ret void
}


define void @lam156129(i64 %env156130, i64 %_95154779, i64 %iA8$cc) {
  %envptr157066 = inttoptr i64 %env156130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157067 = getelementptr inbounds i64, i64* %envptr157066, i64 3              ; &envptr157066[3]
  %cont154778 = load i64, i64* %envptr157067, align 8                                ; load; *envptr157067
  %envptr157068 = inttoptr i64 %env156130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157069 = getelementptr inbounds i64, i64* %envptr157068, i64 2              ; &envptr157068[2]
  %Oyg$v = load i64, i64* %envptr157069, align 8                                     ; load; *envptr157069
  %envptr157070 = inttoptr i64 %env156130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157071 = getelementptr inbounds i64, i64* %envptr157070, i64 1              ; &envptr157070[1]
  %QRR$lst = load i64, i64* %envptr157071, align 8                                   ; load; *envptr157071
  %arg155251 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154677 = call i64 @prim_vector_45ref(i64 %QRR$lst, i64 %arg155251)               ; call prim_vector_45ref
  %a154678 = call i64 @prim_null_63(i64 %a154677)                                    ; call prim_null_63
  %cmp157072 = icmp eq i64 %a154678, 15                                              ; false?
  br i1 %cmp157072, label %else157074, label %then157073                             ; if

then157073:
  %arg155255 = add i64 0, 0                                                          ; quoted ()
  %arg155254 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr157075 = inttoptr i64 %cont154778 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157076 = getelementptr inbounds i64, i64* %cloptr157075, i64 0               ; &cloptr157075[0]
  %f157078 = load i64, i64* %i0ptr157076, align 8                                    ; load; *i0ptr157076
  %fptr157077 = inttoptr i64 %f157078 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157077(i64 %cont154778, i64 %arg155255, i64 %arg155254); tail call
  ret void

else157074:
  %arg155257 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154679 = call i64 @prim_vector_45ref(i64 %QRR$lst, i64 %arg155257)               ; call prim_vector_45ref
  %a154680 = call i64 @prim_car(i64 %a154679)                                        ; call prim_car
  %a154681 = call i64 @prim_eqv_63(i64 %a154680, i64 %Oyg$v)                         ; call prim_eqv_63
  %cmp157079 = icmp eq i64 %a154681, 15                                              ; false?
  br i1 %cmp157079, label %else157081, label %then157080                             ; if

then157080:
  %arg155262 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154780 = call i64 @prim_vector_45ref(i64 %QRR$lst, i64 %arg155262)         ; call prim_vector_45ref
  %arg155265 = add i64 0, 0                                                          ; quoted ()
  %cloptr157082 = inttoptr i64 %cont154778 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157083 = getelementptr inbounds i64, i64* %cloptr157082, i64 0               ; &cloptr157082[0]
  %f157085 = load i64, i64* %i0ptr157083, align 8                                    ; load; *i0ptr157083
  %fptr157084 = inttoptr i64 %f157085 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157084(i64 %cont154778, i64 %arg155265, i64 %retprim154780); tail call
  ret void

else157081:
  %arg155267 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154682 = call i64 @prim_vector_45ref(i64 %QRR$lst, i64 %arg155267)               ; call prim_vector_45ref
  %a154683 = call i64 @prim_cdr(i64 %a154682)                                        ; call prim_cdr
  %arg155271 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154782 = call i64 @prim_vector_45set_33(i64 %QRR$lst, i64 %arg155271, i64 %a154683); call prim_vector_45set_33
  %cloptr157086 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157088 = getelementptr inbounds i64, i64* %cloptr157086, i64 1                ; &eptr157088[1]
  %eptr157089 = getelementptr inbounds i64, i64* %cloptr157086, i64 2                ; &eptr157089[2]
  store i64 %cont154778, i64* %eptr157088                                            ; *eptr157088 = %cont154778
  store i64 %iA8$cc, i64* %eptr157089                                                ; *eptr157089 = %iA8$cc
  %eptr157087 = getelementptr inbounds i64, i64* %cloptr157086, i64 0                ; &cloptr157086[0]
  %f157090 = ptrtoint void(i64,i64,i64)* @lam156123 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157090, i64* %eptr157087                                               ; store fptr
  %arg155275 = ptrtoint i64* %cloptr157086 to i64                                    ; closure cast; i64* -> i64
  %arg155274 = add i64 0, 0                                                          ; quoted ()
  %cloptr157091 = inttoptr i64 %arg155275 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157092 = getelementptr inbounds i64, i64* %cloptr157091, i64 0               ; &cloptr157091[0]
  %f157094 = load i64, i64* %i0ptr157092, align 8                                    ; load; *i0ptr157092
  %fptr157093 = inttoptr i64 %f157094 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157093(i64 %arg155275, i64 %arg155274, i64 %retprim154782); tail call
  ret void
}


define void @lam156123(i64 %env156124, i64 %_95154781, i64 %eHX$_950) {
  %envptr157095 = inttoptr i64 %env156124 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157096 = getelementptr inbounds i64, i64* %envptr157095, i64 2              ; &envptr157095[2]
  %iA8$cc = load i64, i64* %envptr157096, align 8                                    ; load; *envptr157096
  %envptr157097 = inttoptr i64 %env156124 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157098 = getelementptr inbounds i64, i64* %envptr157097, i64 1              ; &envptr157097[1]
  %cont154778 = load i64, i64* %envptr157098, align 8                                ; load; *envptr157098
  %cloptr157099 = inttoptr i64 %iA8$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr157100 = getelementptr inbounds i64, i64* %cloptr157099, i64 0               ; &cloptr157099[0]
  %f157102 = load i64, i64* %i0ptr157100, align 8                                    ; load; *i0ptr157100
  %fptr157101 = inttoptr i64 %f157102 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157101(i64 %iA8$cc, i64 %cont154778, i64 %iA8$cc)   ; tail call
  ret void
}


define void @lam156116(i64 %env156117, i64 %vzu$args154785) {
  %envptr157103 = inttoptr i64 %env156117 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157104 = getelementptr inbounds i64, i64* %envptr157103, i64 1              ; &envptr157103[1]
  %osj$_37foldl1 = load i64, i64* %envptr157104, align 8                             ; load; *envptr157104
  %cont154784 = call i64 @prim_car(i64 %vzu$args154785)                              ; call prim_car
  %vzu$args = call i64 @prim_cdr(i64 %vzu$args154785)                                ; call prim_cdr
  %a154684 = call i64 @prim_null_63(i64 %vzu$args)                                   ; call prim_null_63
  %cmp157105 = icmp eq i64 %a154684, 15                                              ; false?
  br i1 %cmp157105, label %else157107, label %then157106                             ; if

then157106:
  %arg155283 = add i64 0, 0                                                          ; quoted ()
  %arg155282 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr157108 = inttoptr i64 %cont154784 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157109 = getelementptr inbounds i64, i64* %cloptr157108, i64 0               ; &cloptr157108[0]
  %f157111 = load i64, i64* %i0ptr157109, align 8                                    ; load; *i0ptr157109
  %fptr157110 = inttoptr i64 %f157111 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157110(i64 %cont154784, i64 %arg155283, i64 %arg155282); tail call
  ret void

else157107:
  %a154685 = call i64 @prim_cdr(i64 %vzu$args)                                       ; call prim_cdr
  %a154686 = call i64 @prim_null_63(i64 %a154685)                                    ; call prim_null_63
  %cmp157112 = icmp eq i64 %a154686, 15                                              ; false?
  br i1 %cmp157112, label %else157114, label %then157113                             ; if

then157113:
  %retprim154786 = call i64 @prim_car(i64 %vzu$args)                                 ; call prim_car
  %arg155289 = add i64 0, 0                                                          ; quoted ()
  %cloptr157115 = inttoptr i64 %cont154784 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157116 = getelementptr inbounds i64, i64* %cloptr157115, i64 0               ; &cloptr157115[0]
  %f157118 = load i64, i64* %i0ptr157116, align 8                                    ; load; *i0ptr157116
  %fptr157117 = inttoptr i64 %f157118 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157117(i64 %cont154784, i64 %arg155289, i64 %retprim154786); tail call
  ret void

else157114:
  %a154687 = call i64 @prim_car(i64 %vzu$args)                                       ; call prim_car
  %a154688 = call i64 @prim_cdr(i64 %vzu$args)                                       ; call prim_cdr
  %cloptr157119 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157120 = getelementptr inbounds i64, i64* %cloptr157119, i64 0                ; &cloptr157119[0]
  %f157121 = ptrtoint void(i64,i64,i64,i64)* @lam156114 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157121, i64* %eptr157120                                               ; store fptr
  %arg155295 = ptrtoint i64* %cloptr157119 to i64                                    ; closure cast; i64* -> i64
  %cloptr157122 = inttoptr i64 %osj$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr157123 = getelementptr inbounds i64, i64* %cloptr157122, i64 0               ; &cloptr157122[0]
  %f157125 = load i64, i64* %i0ptr157123, align 8                                    ; load; *i0ptr157123
  %fptr157124 = inttoptr i64 %f157125 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157124(i64 %osj$_37foldl1, i64 %cont154784, i64 %arg155295, i64 %a154687, i64 %a154688); tail call
  ret void
}


define void @lam156114(i64 %env156115, i64 %cont154787, i64 %Ev6$n, i64 %tz3$v) {
  %retprim154788 = call i64 @prim__47(i64 %tz3$v, i64 %Ev6$n)                        ; call prim__47
  %arg155301 = add i64 0, 0                                                          ; quoted ()
  %cloptr157126 = inttoptr i64 %cont154787 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157127 = getelementptr inbounds i64, i64* %cloptr157126, i64 0               ; &cloptr157126[0]
  %f157129 = load i64, i64* %i0ptr157127, align 8                                    ; load; *i0ptr157127
  %fptr157128 = inttoptr i64 %f157129 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157128(i64 %cont154787, i64 %arg155301, i64 %retprim154788); tail call
  ret void
}


define void @lam156108(i64 %env156109, i64 %cont154789, i64 %xrG$x) {
  %retprim154790 = call i64 @prim_car(i64 %xrG$x)                                    ; call prim_car
  %arg155305 = add i64 0, 0                                                          ; quoted ()
  %cloptr157130 = inttoptr i64 %cont154789 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157131 = getelementptr inbounds i64, i64* %cloptr157130, i64 0               ; &cloptr157130[0]
  %f157133 = load i64, i64* %i0ptr157131, align 8                                    ; load; *i0ptr157131
  %fptr157132 = inttoptr i64 %f157133 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157132(i64 %cont154789, i64 %arg155305, i64 %retprim154790); tail call
  ret void
}


define void @lam156105(i64 %env156106, i64 %cont154791, i64 %QLX$x) {
  %a154689 = call i64 @prim_cdr(i64 %QLX$x)                                          ; call prim_cdr
  %retprim154792 = call i64 @prim_car(i64 %a154689)                                  ; call prim_car
  %arg155310 = add i64 0, 0                                                          ; quoted ()
  %cloptr157134 = inttoptr i64 %cont154791 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157135 = getelementptr inbounds i64, i64* %cloptr157134, i64 0               ; &cloptr157134[0]
  %f157137 = load i64, i64* %i0ptr157135, align 8                                    ; load; *i0ptr157135
  %fptr157136 = inttoptr i64 %f157137 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157136(i64 %cont154791, i64 %arg155310, i64 %retprim154792); tail call
  ret void
}


define void @lam156102(i64 %env156103, i64 %cont154793, i64 %e4B$x) {
  %a154690 = call i64 @prim_cdr(i64 %e4B$x)                                          ; call prim_cdr
  %a154691 = call i64 @prim_cdr(i64 %a154690)                                        ; call prim_cdr
  %retprim154794 = call i64 @prim_car(i64 %a154691)                                  ; call prim_car
  %arg155316 = add i64 0, 0                                                          ; quoted ()
  %cloptr157138 = inttoptr i64 %cont154793 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157139 = getelementptr inbounds i64, i64* %cloptr157138, i64 0               ; &cloptr157138[0]
  %f157141 = load i64, i64* %i0ptr157139, align 8                                    ; load; *i0ptr157139
  %fptr157140 = inttoptr i64 %f157141 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157140(i64 %cont154793, i64 %arg155316, i64 %retprim154794); tail call
  ret void
}


define void @lam156099(i64 %env156100, i64 %cont154795, i64 %IWF$x) {
  %a154692 = call i64 @prim_cdr(i64 %IWF$x)                                          ; call prim_cdr
  %a154693 = call i64 @prim_cdr(i64 %a154692)                                        ; call prim_cdr
  %a154694 = call i64 @prim_cdr(i64 %a154693)                                        ; call prim_cdr
  %retprim154796 = call i64 @prim_car(i64 %a154694)                                  ; call prim_car
  %arg155323 = add i64 0, 0                                                          ; quoted ()
  %cloptr157142 = inttoptr i64 %cont154795 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157143 = getelementptr inbounds i64, i64* %cloptr157142, i64 0               ; &cloptr157142[0]
  %f157145 = load i64, i64* %i0ptr157143, align 8                                    ; load; *i0ptr157143
  %fptr157144 = inttoptr i64 %f157145 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157144(i64 %cont154795, i64 %arg155323, i64 %retprim154796); tail call
  ret void
}


define void @lam156096(i64 %env156097, i64 %cont154797, i64 %t6Y$p) {
  %a154695 = call i64 @prim_cons_63(i64 %t6Y$p)                                      ; call prim_cons_63
  %cmp157146 = icmp eq i64 %a154695, 15                                              ; false?
  br i1 %cmp157146, label %else157148, label %then157147                             ; if

then157147:
  %a154696 = call i64 @prim_car(i64 %t6Y$p)                                          ; call prim_car
  %arg155327 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym157149, i32 0, i32 0)); quoted string
  %retprim154798 = call i64 @prim_eq_63(i64 %a154696, i64 %arg155327)                ; call prim_eq_63
  %arg155330 = add i64 0, 0                                                          ; quoted ()
  %cloptr157150 = inttoptr i64 %cont154797 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157151 = getelementptr inbounds i64, i64* %cloptr157150, i64 0               ; &cloptr157150[0]
  %f157153 = load i64, i64* %i0ptr157151, align 8                                    ; load; *i0ptr157151
  %fptr157152 = inttoptr i64 %f157153 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157152(i64 %cont154797, i64 %arg155330, i64 %retprim154798); tail call
  ret void

else157148:
  %arg155333 = add i64 0, 0                                                          ; quoted ()
  %arg155332 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr157154 = inttoptr i64 %cont154797 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157155 = getelementptr inbounds i64, i64* %cloptr157154, i64 0               ; &cloptr157154[0]
  %f157157 = load i64, i64* %i0ptr157155, align 8                                    ; load; *i0ptr157155
  %fptr157156 = inttoptr i64 %f157157 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157156(i64 %cont154797, i64 %arg155333, i64 %arg155332); tail call
  ret void
}


define void @lam156090(i64 %env156091, i64 %rhO$lst154850) {
  %cont154849 = call i64 @prim_car(i64 %rhO$lst154850)                               ; call prim_car
  %rhO$lst = call i64 @prim_cdr(i64 %rhO$lst154850)                                  ; call prim_cdr
  %arg155340 = add i64 0, 0                                                          ; quoted ()
  %cloptr157158 = inttoptr i64 %cont154849 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157159 = getelementptr inbounds i64, i64* %cloptr157158, i64 0               ; &cloptr157158[0]
  %f157161 = load i64, i64* %i0ptr157159, align 8                                    ; load; *i0ptr157159
  %fptr157160 = inttoptr i64 %f157161 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157160(i64 %cont154849, i64 %arg155340, i64 %rhO$lst); tail call
  ret void
}


define void @lam156087(i64 %env156088, i64 %_95154799, i64 %ek5$_37raise_45handler) {
  %envptr157162 = inttoptr i64 %env156088 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157163 = getelementptr inbounds i64, i64* %envptr157162, i64 3              ; &envptr157162[3]
  %SGA$_37_62 = load i64, i64* %envptr157163, align 8                                ; load; *envptr157163
  %envptr157164 = inttoptr i64 %env156088 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157165 = getelementptr inbounds i64, i64* %envptr157164, i64 2              ; &envptr157164[2]
  %Gl0$_37drop = load i64, i64* %envptr157165, align 8                               ; load; *envptr157165
  %envptr157166 = inttoptr i64 %env156088 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157167 = getelementptr inbounds i64, i64* %envptr157166, i64 1              ; &envptr157166[1]
  %VE0$_37length = load i64, i64* %envptr157167, align 8                             ; load; *envptr157167
  %cloptr157168 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157169 = getelementptr inbounds i64, i64* %cloptr157168, i64 0                ; &cloptr157168[0]
  %f157170 = ptrtoint void(i64,i64)* @lam156085 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f157170, i64* %eptr157169                                               ; store fptr
  %arg155343 = ptrtoint i64* %cloptr157168 to i64                                    ; closure cast; i64* -> i64
  %cloptr157171 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157173 = getelementptr inbounds i64, i64* %cloptr157171, i64 1                ; &eptr157173[1]
  %eptr157174 = getelementptr inbounds i64, i64* %cloptr157171, i64 2                ; &eptr157174[2]
  %eptr157175 = getelementptr inbounds i64, i64* %cloptr157171, i64 3                ; &eptr157175[3]
  store i64 %VE0$_37length, i64* %eptr157173                                         ; *eptr157173 = %VE0$_37length
  store i64 %Gl0$_37drop, i64* %eptr157174                                           ; *eptr157174 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr157175                                            ; *eptr157175 = %SGA$_37_62
  %eptr157172 = getelementptr inbounds i64, i64* %cloptr157171, i64 0                ; &cloptr157171[0]
  %f157176 = ptrtoint void(i64,i64,i64)* @lam156082 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157176, i64* %eptr157172                                               ; store fptr
  %arg155342 = ptrtoint i64* %cloptr157171 to i64                                    ; closure cast; i64* -> i64
  %rva155820 = add i64 0, 0                                                          ; quoted ()
  %rva155819 = call i64 @prim_cons(i64 %arg155342, i64 %rva155820)                   ; call prim_cons
  %cloptr157177 = inttoptr i64 %arg155343 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157178 = getelementptr inbounds i64, i64* %cloptr157177, i64 0               ; &cloptr157177[0]
  %f157180 = load i64, i64* %i0ptr157178, align 8                                    ; load; *i0ptr157178
  %fptr157179 = inttoptr i64 %f157180 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157179(i64 %arg155343, i64 %rva155819)              ; tail call
  ret void
}


define void @lam156085(i64 %env156086, i64 %cIv$lst154848) {
  %cont154847 = call i64 @prim_car(i64 %cIv$lst154848)                               ; call prim_car
  %cIv$lst = call i64 @prim_cdr(i64 %cIv$lst154848)                                  ; call prim_cdr
  %arg155347 = add i64 0, 0                                                          ; quoted ()
  %cloptr157181 = inttoptr i64 %cont154847 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157182 = getelementptr inbounds i64, i64* %cloptr157181, i64 0               ; &cloptr157181[0]
  %f157184 = load i64, i64* %i0ptr157182, align 8                                    ; load; *i0ptr157182
  %fptr157183 = inttoptr i64 %f157184 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157183(i64 %cont154847, i64 %arg155347, i64 %cIv$lst); tail call
  ret void
}


define void @lam156082(i64 %env156083, i64 %_95154845, i64 %a154697) {
  %envptr157185 = inttoptr i64 %env156083 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157186 = getelementptr inbounds i64, i64* %envptr157185, i64 3              ; &envptr157185[3]
  %SGA$_37_62 = load i64, i64* %envptr157186, align 8                                ; load; *envptr157186
  %envptr157187 = inttoptr i64 %env156083 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157188 = getelementptr inbounds i64, i64* %envptr157187, i64 2              ; &envptr157187[2]
  %Gl0$_37drop = load i64, i64* %envptr157188, align 8                               ; load; *envptr157188
  %envptr157189 = inttoptr i64 %env156083 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157190 = getelementptr inbounds i64, i64* %envptr157189, i64 1              ; &envptr157189[1]
  %VE0$_37length = load i64, i64* %envptr157190, align 8                             ; load; *envptr157190
  %arg155350 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim154846 = call i64 @prim_make_45vector(i64 %arg155350, i64 %a154697)        ; call prim_make_45vector
  %cloptr157191 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157193 = getelementptr inbounds i64, i64* %cloptr157191, i64 1                ; &eptr157193[1]
  %eptr157194 = getelementptr inbounds i64, i64* %cloptr157191, i64 2                ; &eptr157194[2]
  %eptr157195 = getelementptr inbounds i64, i64* %cloptr157191, i64 3                ; &eptr157195[3]
  store i64 %VE0$_37length, i64* %eptr157193                                         ; *eptr157193 = %VE0$_37length
  store i64 %Gl0$_37drop, i64* %eptr157194                                           ; *eptr157194 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr157195                                            ; *eptr157195 = %SGA$_37_62
  %eptr157192 = getelementptr inbounds i64, i64* %cloptr157191, i64 0                ; &cloptr157191[0]
  %f157196 = ptrtoint void(i64,i64,i64)* @lam156079 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157196, i64* %eptr157192                                               ; store fptr
  %arg155353 = ptrtoint i64* %cloptr157191 to i64                                    ; closure cast; i64* -> i64
  %arg155352 = add i64 0, 0                                                          ; quoted ()
  %cloptr157197 = inttoptr i64 %arg155353 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157198 = getelementptr inbounds i64, i64* %cloptr157197, i64 0               ; &cloptr157197[0]
  %f157200 = load i64, i64* %i0ptr157198, align 8                                    ; load; *i0ptr157198
  %fptr157199 = inttoptr i64 %f157200 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157199(i64 %arg155353, i64 %arg155352, i64 %retprim154846); tail call
  ret void
}


define void @lam156079(i64 %env156080, i64 %_95154800, i64 %bPZ$_37wind_45stack) {
  %envptr157201 = inttoptr i64 %env156080 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157202 = getelementptr inbounds i64, i64* %envptr157201, i64 3              ; &envptr157201[3]
  %SGA$_37_62 = load i64, i64* %envptr157202, align 8                                ; load; *envptr157202
  %envptr157203 = inttoptr i64 %env156080 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157204 = getelementptr inbounds i64, i64* %envptr157203, i64 2              ; &envptr157203[2]
  %Gl0$_37drop = load i64, i64* %envptr157204, align 8                               ; load; *envptr157204
  %envptr157205 = inttoptr i64 %env156080 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157206 = getelementptr inbounds i64, i64* %envptr157205, i64 1              ; &envptr157205[1]
  %VE0$_37length = load i64, i64* %envptr157206, align 8                             ; load; *envptr157206
  %cloptr157207 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157209 = getelementptr inbounds i64, i64* %cloptr157207, i64 1                ; &eptr157209[1]
  %eptr157210 = getelementptr inbounds i64, i64* %cloptr157207, i64 2                ; &eptr157210[2]
  %eptr157211 = getelementptr inbounds i64, i64* %cloptr157207, i64 3                ; &eptr157211[3]
  store i64 %VE0$_37length, i64* %eptr157209                                         ; *eptr157209 = %VE0$_37length
  store i64 %Gl0$_37drop, i64* %eptr157210                                           ; *eptr157210 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr157211                                            ; *eptr157211 = %SGA$_37_62
  %eptr157208 = getelementptr inbounds i64, i64* %cloptr157207, i64 0                ; &cloptr157207[0]
  %f157212 = ptrtoint void(i64,i64,i64,i64)* @lam156077 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157212, i64* %eptr157208                                               ; store fptr
  %oeR$_37common_45tail = ptrtoint i64* %cloptr157207 to i64                         ; closure cast; i64* -> i64
  %cloptr157213 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr157215 = getelementptr inbounds i64, i64* %cloptr157213, i64 1                ; &eptr157215[1]
  %eptr157216 = getelementptr inbounds i64, i64* %cloptr157213, i64 2                ; &eptr157216[2]
  store i64 %oeR$_37common_45tail, i64* %eptr157215                                  ; *eptr157215 = %oeR$_37common_45tail
  store i64 %bPZ$_37wind_45stack, i64* %eptr157216                                   ; *eptr157216 = %bPZ$_37wind_45stack
  %eptr157214 = getelementptr inbounds i64, i64* %cloptr157213, i64 0                ; &cloptr157213[0]
  %f157217 = ptrtoint void(i64,i64,i64)* @lam156035 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157217, i64* %eptr157214                                               ; store fptr
  %Afa$_37do_45wind = ptrtoint i64* %cloptr157213 to i64                             ; closure cast; i64* -> i64
  %cloptr157218 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157219 = getelementptr inbounds i64, i64* %cloptr157218, i64 0                ; &cloptr157218[0]
  %f157220 = ptrtoint void(i64,i64)* @lam155985 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f157220, i64* %eptr157219                                               ; store fptr
  %arg155539 = ptrtoint i64* %cloptr157218 to i64                                    ; closure cast; i64* -> i64
  %cloptr157221 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157222 = getelementptr inbounds i64, i64* %cloptr157221, i64 0                ; &cloptr157221[0]
  %f157223 = ptrtoint void(i64,i64,i64)* @lam155982 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157223, i64* %eptr157222                                               ; store fptr
  %arg155538 = ptrtoint i64* %cloptr157221 to i64                                    ; closure cast; i64* -> i64
  %rva155818 = add i64 0, 0                                                          ; quoted ()
  %rva155817 = call i64 @prim_cons(i64 %arg155538, i64 %rva155818)                   ; call prim_cons
  %cloptr157224 = inttoptr i64 %arg155539 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157225 = getelementptr inbounds i64, i64* %cloptr157224, i64 0               ; &cloptr157224[0]
  %f157227 = load i64, i64* %i0ptr157225, align 8                                    ; load; *i0ptr157225
  %fptr157226 = inttoptr i64 %f157227 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157226(i64 %arg155539, i64 %rva155817)              ; tail call
  ret void
}


define void @lam156077(i64 %env156078, i64 %cont154801, i64 %P9s$x, i64 %fQR$y) {
  %envptr157228 = inttoptr i64 %env156078 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157229 = getelementptr inbounds i64, i64* %envptr157228, i64 3              ; &envptr157228[3]
  %SGA$_37_62 = load i64, i64* %envptr157229, align 8                                ; load; *envptr157229
  %envptr157230 = inttoptr i64 %env156078 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157231 = getelementptr inbounds i64, i64* %envptr157230, i64 2              ; &envptr157230[2]
  %Gl0$_37drop = load i64, i64* %envptr157231, align 8                               ; load; *envptr157231
  %envptr157232 = inttoptr i64 %env156078 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157233 = getelementptr inbounds i64, i64* %envptr157232, i64 1              ; &envptr157232[1]
  %VE0$_37length = load i64, i64* %envptr157233, align 8                             ; load; *envptr157233
  %cloptr157234 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr157236 = getelementptr inbounds i64, i64* %cloptr157234, i64 1                ; &eptr157236[1]
  %eptr157237 = getelementptr inbounds i64, i64* %cloptr157234, i64 2                ; &eptr157237[2]
  %eptr157238 = getelementptr inbounds i64, i64* %cloptr157234, i64 3                ; &eptr157238[3]
  %eptr157239 = getelementptr inbounds i64, i64* %cloptr157234, i64 4                ; &eptr157239[4]
  %eptr157240 = getelementptr inbounds i64, i64* %cloptr157234, i64 5                ; &eptr157240[5]
  %eptr157241 = getelementptr inbounds i64, i64* %cloptr157234, i64 6                ; &eptr157241[6]
  store i64 %VE0$_37length, i64* %eptr157236                                         ; *eptr157236 = %VE0$_37length
  store i64 %fQR$y, i64* %eptr157237                                                 ; *eptr157237 = %fQR$y
  store i64 %P9s$x, i64* %eptr157238                                                 ; *eptr157238 = %P9s$x
  store i64 %cont154801, i64* %eptr157239                                            ; *eptr157239 = %cont154801
  store i64 %Gl0$_37drop, i64* %eptr157240                                           ; *eptr157240 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr157241                                            ; *eptr157241 = %SGA$_37_62
  %eptr157235 = getelementptr inbounds i64, i64* %cloptr157234, i64 0                ; &cloptr157234[0]
  %f157242 = ptrtoint void(i64,i64,i64)* @lam156075 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157242, i64* %eptr157235                                               ; store fptr
  %arg155355 = ptrtoint i64* %cloptr157234 to i64                                    ; closure cast; i64* -> i64
  %cloptr157243 = inttoptr i64 %VE0$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr157244 = getelementptr inbounds i64, i64* %cloptr157243, i64 0               ; &cloptr157243[0]
  %f157246 = load i64, i64* %i0ptr157244, align 8                                    ; load; *i0ptr157244
  %fptr157245 = inttoptr i64 %f157246 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157245(i64 %VE0$_37length, i64 %arg155355, i64 %P9s$x); tail call
  ret void
}


define void @lam156075(i64 %env156076, i64 %_95154802, i64 %BST$lx) {
  %envptr157247 = inttoptr i64 %env156076 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157248 = getelementptr inbounds i64, i64* %envptr157247, i64 6              ; &envptr157247[6]
  %SGA$_37_62 = load i64, i64* %envptr157248, align 8                                ; load; *envptr157248
  %envptr157249 = inttoptr i64 %env156076 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157250 = getelementptr inbounds i64, i64* %envptr157249, i64 5              ; &envptr157249[5]
  %Gl0$_37drop = load i64, i64* %envptr157250, align 8                               ; load; *envptr157250
  %envptr157251 = inttoptr i64 %env156076 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157252 = getelementptr inbounds i64, i64* %envptr157251, i64 4              ; &envptr157251[4]
  %cont154801 = load i64, i64* %envptr157252, align 8                                ; load; *envptr157252
  %envptr157253 = inttoptr i64 %env156076 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157254 = getelementptr inbounds i64, i64* %envptr157253, i64 3              ; &envptr157253[3]
  %P9s$x = load i64, i64* %envptr157254, align 8                                     ; load; *envptr157254
  %envptr157255 = inttoptr i64 %env156076 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157256 = getelementptr inbounds i64, i64* %envptr157255, i64 2              ; &envptr157255[2]
  %fQR$y = load i64, i64* %envptr157256, align 8                                     ; load; *envptr157256
  %envptr157257 = inttoptr i64 %env156076 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157258 = getelementptr inbounds i64, i64* %envptr157257, i64 1              ; &envptr157257[1]
  %VE0$_37length = load i64, i64* %envptr157258, align 8                             ; load; *envptr157258
  %cloptr157259 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr157261 = getelementptr inbounds i64, i64* %cloptr157259, i64 1                ; &eptr157261[1]
  %eptr157262 = getelementptr inbounds i64, i64* %cloptr157259, i64 2                ; &eptr157262[2]
  %eptr157263 = getelementptr inbounds i64, i64* %cloptr157259, i64 3                ; &eptr157263[3]
  %eptr157264 = getelementptr inbounds i64, i64* %cloptr157259, i64 4                ; &eptr157264[4]
  %eptr157265 = getelementptr inbounds i64, i64* %cloptr157259, i64 5                ; &eptr157265[5]
  %eptr157266 = getelementptr inbounds i64, i64* %cloptr157259, i64 6                ; &eptr157266[6]
  store i64 %BST$lx, i64* %eptr157261                                                ; *eptr157261 = %BST$lx
  store i64 %fQR$y, i64* %eptr157262                                                 ; *eptr157262 = %fQR$y
  store i64 %P9s$x, i64* %eptr157263                                                 ; *eptr157263 = %P9s$x
  store i64 %cont154801, i64* %eptr157264                                            ; *eptr157264 = %cont154801
  store i64 %Gl0$_37drop, i64* %eptr157265                                           ; *eptr157265 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr157266                                            ; *eptr157266 = %SGA$_37_62
  %eptr157260 = getelementptr inbounds i64, i64* %cloptr157259, i64 0                ; &cloptr157259[0]
  %f157267 = ptrtoint void(i64,i64,i64)* @lam156073 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157267, i64* %eptr157260                                               ; store fptr
  %arg155358 = ptrtoint i64* %cloptr157259 to i64                                    ; closure cast; i64* -> i64
  %cloptr157268 = inttoptr i64 %VE0$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr157269 = getelementptr inbounds i64, i64* %cloptr157268, i64 0               ; &cloptr157268[0]
  %f157271 = load i64, i64* %i0ptr157269, align 8                                    ; load; *i0ptr157269
  %fptr157270 = inttoptr i64 %f157271 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157270(i64 %VE0$_37length, i64 %arg155358, i64 %fQR$y); tail call
  ret void
}


define void @lam156073(i64 %env156074, i64 %_95154803, i64 %Wh7$ly) {
  %envptr157272 = inttoptr i64 %env156074 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157273 = getelementptr inbounds i64, i64* %envptr157272, i64 6              ; &envptr157272[6]
  %SGA$_37_62 = load i64, i64* %envptr157273, align 8                                ; load; *envptr157273
  %envptr157274 = inttoptr i64 %env156074 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157275 = getelementptr inbounds i64, i64* %envptr157274, i64 5              ; &envptr157274[5]
  %Gl0$_37drop = load i64, i64* %envptr157275, align 8                               ; load; *envptr157275
  %envptr157276 = inttoptr i64 %env156074 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157277 = getelementptr inbounds i64, i64* %envptr157276, i64 4              ; &envptr157276[4]
  %cont154801 = load i64, i64* %envptr157277, align 8                                ; load; *envptr157277
  %envptr157278 = inttoptr i64 %env156074 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157279 = getelementptr inbounds i64, i64* %envptr157278, i64 3              ; &envptr157278[3]
  %P9s$x = load i64, i64* %envptr157279, align 8                                     ; load; *envptr157279
  %envptr157280 = inttoptr i64 %env156074 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157281 = getelementptr inbounds i64, i64* %envptr157280, i64 2              ; &envptr157280[2]
  %fQR$y = load i64, i64* %envptr157281, align 8                                     ; load; *envptr157281
  %envptr157282 = inttoptr i64 %env156074 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157283 = getelementptr inbounds i64, i64* %envptr157282, i64 1              ; &envptr157282[1]
  %BST$lx = load i64, i64* %envptr157283, align 8                                    ; load; *envptr157283
  %cloptr157284 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157285 = getelementptr inbounds i64, i64* %cloptr157284, i64 0                ; &cloptr157284[0]
  %f157286 = ptrtoint void(i64,i64)* @lam156071 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f157286, i64* %eptr157285                                               ; store fptr
  %arg155361 = ptrtoint i64* %cloptr157284 to i64                                    ; closure cast; i64* -> i64
  %cloptr157287 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr157289 = getelementptr inbounds i64, i64* %cloptr157287, i64 1                ; &eptr157289[1]
  %eptr157290 = getelementptr inbounds i64, i64* %cloptr157287, i64 2                ; &eptr157290[2]
  %eptr157291 = getelementptr inbounds i64, i64* %cloptr157287, i64 3                ; &eptr157291[3]
  %eptr157292 = getelementptr inbounds i64, i64* %cloptr157287, i64 4                ; &eptr157292[4]
  %eptr157293 = getelementptr inbounds i64, i64* %cloptr157287, i64 5                ; &eptr157293[5]
  %eptr157294 = getelementptr inbounds i64, i64* %cloptr157287, i64 6                ; &eptr157294[6]
  %eptr157295 = getelementptr inbounds i64, i64* %cloptr157287, i64 7                ; &eptr157295[7]
  store i64 %Wh7$ly, i64* %eptr157289                                                ; *eptr157289 = %Wh7$ly
  store i64 %BST$lx, i64* %eptr157290                                                ; *eptr157290 = %BST$lx
  store i64 %fQR$y, i64* %eptr157291                                                 ; *eptr157291 = %fQR$y
  store i64 %P9s$x, i64* %eptr157292                                                 ; *eptr157292 = %P9s$x
  store i64 %cont154801, i64* %eptr157293                                            ; *eptr157293 = %cont154801
  store i64 %Gl0$_37drop, i64* %eptr157294                                           ; *eptr157294 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr157295                                            ; *eptr157295 = %SGA$_37_62
  %eptr157288 = getelementptr inbounds i64, i64* %cloptr157287, i64 0                ; &cloptr157287[0]
  %f157296 = ptrtoint void(i64,i64,i64)* @lam156068 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157296, i64* %eptr157288                                               ; store fptr
  %arg155360 = ptrtoint i64* %cloptr157287 to i64                                    ; closure cast; i64* -> i64
  %cloptr157297 = inttoptr i64 %arg155361 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157298 = getelementptr inbounds i64, i64* %cloptr157297, i64 0               ; &cloptr157297[0]
  %f157300 = load i64, i64* %i0ptr157298, align 8                                    ; load; *i0ptr157298
  %fptr157299 = inttoptr i64 %f157300 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157299(i64 %arg155361, i64 %arg155360)              ; tail call
  ret void
}


define void @lam156071(i64 %env156072, i64 %BgM$lst154813) {
  %cont154812 = call i64 @prim_car(i64 %BgM$lst154813)                               ; call prim_car
  %BgM$lst = call i64 @prim_cdr(i64 %BgM$lst154813)                                  ; call prim_cdr
  %arg155365 = add i64 0, 0                                                          ; quoted ()
  %cloptr157301 = inttoptr i64 %cont154812 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157302 = getelementptr inbounds i64, i64* %cloptr157301, i64 0               ; &cloptr157301[0]
  %f157304 = load i64, i64* %i0ptr157302, align 8                                    ; load; *i0ptr157302
  %fptr157303 = inttoptr i64 %f157304 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157303(i64 %cont154812, i64 %arg155365, i64 %BgM$lst); tail call
  ret void
}


define void @lam156068(i64 %env156069, i64 %_95154810, i64 %a154698) {
  %envptr157305 = inttoptr i64 %env156069 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157306 = getelementptr inbounds i64, i64* %envptr157305, i64 7              ; &envptr157305[7]
  %SGA$_37_62 = load i64, i64* %envptr157306, align 8                                ; load; *envptr157306
  %envptr157307 = inttoptr i64 %env156069 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157308 = getelementptr inbounds i64, i64* %envptr157307, i64 6              ; &envptr157307[6]
  %Gl0$_37drop = load i64, i64* %envptr157308, align 8                               ; load; *envptr157308
  %envptr157309 = inttoptr i64 %env156069 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157310 = getelementptr inbounds i64, i64* %envptr157309, i64 5              ; &envptr157309[5]
  %cont154801 = load i64, i64* %envptr157310, align 8                                ; load; *envptr157310
  %envptr157311 = inttoptr i64 %env156069 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157312 = getelementptr inbounds i64, i64* %envptr157311, i64 4              ; &envptr157311[4]
  %P9s$x = load i64, i64* %envptr157312, align 8                                     ; load; *envptr157312
  %envptr157313 = inttoptr i64 %env156069 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157314 = getelementptr inbounds i64, i64* %envptr157313, i64 3              ; &envptr157313[3]
  %fQR$y = load i64, i64* %envptr157314, align 8                                     ; load; *envptr157314
  %envptr157315 = inttoptr i64 %env156069 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157316 = getelementptr inbounds i64, i64* %envptr157315, i64 2              ; &envptr157315[2]
  %BST$lx = load i64, i64* %envptr157316, align 8                                    ; load; *envptr157316
  %envptr157317 = inttoptr i64 %env156069 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157318 = getelementptr inbounds i64, i64* %envptr157317, i64 1              ; &envptr157317[1]
  %Wh7$ly = load i64, i64* %envptr157318, align 8                                    ; load; *envptr157318
  %arg155368 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim154811 = call i64 @prim_make_45vector(i64 %arg155368, i64 %a154698)        ; call prim_make_45vector
  %cloptr157319 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr157321 = getelementptr inbounds i64, i64* %cloptr157319, i64 1                ; &eptr157321[1]
  %eptr157322 = getelementptr inbounds i64, i64* %cloptr157319, i64 2                ; &eptr157322[2]
  %eptr157323 = getelementptr inbounds i64, i64* %cloptr157319, i64 3                ; &eptr157323[3]
  %eptr157324 = getelementptr inbounds i64, i64* %cloptr157319, i64 4                ; &eptr157324[4]
  %eptr157325 = getelementptr inbounds i64, i64* %cloptr157319, i64 5                ; &eptr157325[5]
  %eptr157326 = getelementptr inbounds i64, i64* %cloptr157319, i64 6                ; &eptr157326[6]
  %eptr157327 = getelementptr inbounds i64, i64* %cloptr157319, i64 7                ; &eptr157327[7]
  store i64 %Wh7$ly, i64* %eptr157321                                                ; *eptr157321 = %Wh7$ly
  store i64 %BST$lx, i64* %eptr157322                                                ; *eptr157322 = %BST$lx
  store i64 %fQR$y, i64* %eptr157323                                                 ; *eptr157323 = %fQR$y
  store i64 %P9s$x, i64* %eptr157324                                                 ; *eptr157324 = %P9s$x
  store i64 %cont154801, i64* %eptr157325                                            ; *eptr157325 = %cont154801
  store i64 %Gl0$_37drop, i64* %eptr157326                                           ; *eptr157326 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr157327                                            ; *eptr157327 = %SGA$_37_62
  %eptr157320 = getelementptr inbounds i64, i64* %cloptr157319, i64 0                ; &cloptr157319[0]
  %f157328 = ptrtoint void(i64,i64,i64)* @lam156065 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157328, i64* %eptr157320                                               ; store fptr
  %arg155371 = ptrtoint i64* %cloptr157319 to i64                                    ; closure cast; i64* -> i64
  %arg155370 = add i64 0, 0                                                          ; quoted ()
  %cloptr157329 = inttoptr i64 %arg155371 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157330 = getelementptr inbounds i64, i64* %cloptr157329, i64 0               ; &cloptr157329[0]
  %f157332 = load i64, i64* %i0ptr157330, align 8                                    ; load; *i0ptr157330
  %fptr157331 = inttoptr i64 %f157332 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157331(i64 %arg155371, i64 %arg155370, i64 %retprim154811); tail call
  ret void
}


define void @lam156065(i64 %env156066, i64 %_95154804, i64 %G8m$loop) {
  %envptr157333 = inttoptr i64 %env156066 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157334 = getelementptr inbounds i64, i64* %envptr157333, i64 7              ; &envptr157333[7]
  %SGA$_37_62 = load i64, i64* %envptr157334, align 8                                ; load; *envptr157334
  %envptr157335 = inttoptr i64 %env156066 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157336 = getelementptr inbounds i64, i64* %envptr157335, i64 6              ; &envptr157335[6]
  %Gl0$_37drop = load i64, i64* %envptr157336, align 8                               ; load; *envptr157336
  %envptr157337 = inttoptr i64 %env156066 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157338 = getelementptr inbounds i64, i64* %envptr157337, i64 5              ; &envptr157337[5]
  %cont154801 = load i64, i64* %envptr157338, align 8                                ; load; *envptr157338
  %envptr157339 = inttoptr i64 %env156066 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157340 = getelementptr inbounds i64, i64* %envptr157339, i64 4              ; &envptr157339[4]
  %P9s$x = load i64, i64* %envptr157340, align 8                                     ; load; *envptr157340
  %envptr157341 = inttoptr i64 %env156066 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157342 = getelementptr inbounds i64, i64* %envptr157341, i64 3              ; &envptr157341[3]
  %fQR$y = load i64, i64* %envptr157342, align 8                                     ; load; *envptr157342
  %envptr157343 = inttoptr i64 %env156066 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157344 = getelementptr inbounds i64, i64* %envptr157343, i64 2              ; &envptr157343[2]
  %BST$lx = load i64, i64* %envptr157344, align 8                                    ; load; *envptr157344
  %envptr157345 = inttoptr i64 %env156066 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157346 = getelementptr inbounds i64, i64* %envptr157345, i64 1              ; &envptr157345[1]
  %Wh7$ly = load i64, i64* %envptr157346, align 8                                    ; load; *envptr157346
  %arg155373 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr157347 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr157349 = getelementptr inbounds i64, i64* %cloptr157347, i64 1                ; &eptr157349[1]
  store i64 %G8m$loop, i64* %eptr157349                                              ; *eptr157349 = %G8m$loop
  %eptr157348 = getelementptr inbounds i64, i64* %cloptr157347, i64 0                ; &cloptr157347[0]
  %f157350 = ptrtoint void(i64,i64,i64,i64)* @lam156062 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157350, i64* %eptr157348                                               ; store fptr
  %arg155372 = ptrtoint i64* %cloptr157347 to i64                                    ; closure cast; i64* -> i64
  %RU3$_95154598 = call i64 @prim_vector_45set_33(i64 %G8m$loop, i64 %arg155373, i64 %arg155372); call prim_vector_45set_33
  %arg155388 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154703 = call i64 @prim_vector_45ref(i64 %G8m$loop, i64 %arg155388)              ; call prim_vector_45ref
  %cloptr157351 = call i64* @alloc(i64 72)                                           ; malloc
  %eptr157353 = getelementptr inbounds i64, i64* %cloptr157351, i64 1                ; &eptr157353[1]
  %eptr157354 = getelementptr inbounds i64, i64* %cloptr157351, i64 2                ; &eptr157354[2]
  %eptr157355 = getelementptr inbounds i64, i64* %cloptr157351, i64 3                ; &eptr157355[3]
  %eptr157356 = getelementptr inbounds i64, i64* %cloptr157351, i64 4                ; &eptr157356[4]
  %eptr157357 = getelementptr inbounds i64, i64* %cloptr157351, i64 5                ; &eptr157357[5]
  %eptr157358 = getelementptr inbounds i64, i64* %cloptr157351, i64 6                ; &eptr157358[6]
  %eptr157359 = getelementptr inbounds i64, i64* %cloptr157351, i64 7                ; &eptr157359[7]
  %eptr157360 = getelementptr inbounds i64, i64* %cloptr157351, i64 8                ; &eptr157360[8]
  store i64 %Wh7$ly, i64* %eptr157353                                                ; *eptr157353 = %Wh7$ly
  store i64 %BST$lx, i64* %eptr157354                                                ; *eptr157354 = %BST$lx
  store i64 %fQR$y, i64* %eptr157355                                                 ; *eptr157355 = %fQR$y
  store i64 %a154703, i64* %eptr157356                                               ; *eptr157356 = %a154703
  store i64 %P9s$x, i64* %eptr157357                                                 ; *eptr157357 = %P9s$x
  store i64 %cont154801, i64* %eptr157358                                            ; *eptr157358 = %cont154801
  store i64 %Gl0$_37drop, i64* %eptr157359                                           ; *eptr157359 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr157360                                            ; *eptr157360 = %SGA$_37_62
  %eptr157352 = getelementptr inbounds i64, i64* %cloptr157351, i64 0                ; &cloptr157351[0]
  %f157361 = ptrtoint void(i64,i64,i64)* @lam156057 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157361, i64* %eptr157352                                               ; store fptr
  %arg155392 = ptrtoint i64* %cloptr157351 to i64                                    ; closure cast; i64* -> i64
  %cloptr157362 = inttoptr i64 %SGA$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157363 = getelementptr inbounds i64, i64* %cloptr157362, i64 0               ; &cloptr157362[0]
  %f157365 = load i64, i64* %i0ptr157363, align 8                                    ; load; *i0ptr157363
  %fptr157364 = inttoptr i64 %f157365 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157364(i64 %SGA$_37_62, i64 %arg155392, i64 %BST$lx, i64 %Wh7$ly); tail call
  ret void
}


define void @lam156062(i64 %env156063, i64 %cont154805, i64 %OvF$x, i64 %iah$y) {
  %envptr157366 = inttoptr i64 %env156063 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157367 = getelementptr inbounds i64, i64* %envptr157366, i64 1              ; &envptr157366[1]
  %G8m$loop = load i64, i64* %envptr157367, align 8                                  ; load; *envptr157367
  %a154699 = call i64 @prim_eq_63(i64 %OvF$x, i64 %iah$y)                            ; call prim_eq_63
  %cmp157368 = icmp eq i64 %a154699, 15                                              ; false?
  br i1 %cmp157368, label %else157370, label %then157369                             ; if

then157369:
  %arg155378 = add i64 0, 0                                                          ; quoted ()
  %cloptr157371 = inttoptr i64 %cont154805 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157372 = getelementptr inbounds i64, i64* %cloptr157371, i64 0               ; &cloptr157371[0]
  %f157374 = load i64, i64* %i0ptr157372, align 8                                    ; load; *i0ptr157372
  %fptr157373 = inttoptr i64 %f157374 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157373(i64 %cont154805, i64 %arg155378, i64 %OvF$x) ; tail call
  ret void

else157370:
  %arg155380 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154700 = call i64 @prim_vector_45ref(i64 %G8m$loop, i64 %arg155380)              ; call prim_vector_45ref
  %a154701 = call i64 @prim_cdr(i64 %OvF$x)                                          ; call prim_cdr
  %a154702 = call i64 @prim_cdr(i64 %iah$y)                                          ; call prim_cdr
  %cloptr157375 = inttoptr i64 %a154700 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157376 = getelementptr inbounds i64, i64* %cloptr157375, i64 0               ; &cloptr157375[0]
  %f157378 = load i64, i64* %i0ptr157376, align 8                                    ; load; *i0ptr157376
  %fptr157377 = inttoptr i64 %f157378 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157377(i64 %a154700, i64 %cont154805, i64 %a154701, i64 %a154702); tail call
  ret void
}


define void @lam156057(i64 %env156058, i64 %_95154806, i64 %a154704) {
  %envptr157379 = inttoptr i64 %env156058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157380 = getelementptr inbounds i64, i64* %envptr157379, i64 8              ; &envptr157379[8]
  %SGA$_37_62 = load i64, i64* %envptr157380, align 8                                ; load; *envptr157380
  %envptr157381 = inttoptr i64 %env156058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157382 = getelementptr inbounds i64, i64* %envptr157381, i64 7              ; &envptr157381[7]
  %Gl0$_37drop = load i64, i64* %envptr157382, align 8                               ; load; *envptr157382
  %envptr157383 = inttoptr i64 %env156058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157384 = getelementptr inbounds i64, i64* %envptr157383, i64 6              ; &envptr157383[6]
  %cont154801 = load i64, i64* %envptr157384, align 8                                ; load; *envptr157384
  %envptr157385 = inttoptr i64 %env156058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157386 = getelementptr inbounds i64, i64* %envptr157385, i64 5              ; &envptr157385[5]
  %P9s$x = load i64, i64* %envptr157386, align 8                                     ; load; *envptr157386
  %envptr157387 = inttoptr i64 %env156058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157388 = getelementptr inbounds i64, i64* %envptr157387, i64 4              ; &envptr157387[4]
  %a154703 = load i64, i64* %envptr157388, align 8                                   ; load; *envptr157388
  %envptr157389 = inttoptr i64 %env156058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157390 = getelementptr inbounds i64, i64* %envptr157389, i64 3              ; &envptr157389[3]
  %fQR$y = load i64, i64* %envptr157390, align 8                                     ; load; *envptr157390
  %envptr157391 = inttoptr i64 %env156058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157392 = getelementptr inbounds i64, i64* %envptr157391, i64 2              ; &envptr157391[2]
  %BST$lx = load i64, i64* %envptr157392, align 8                                    ; load; *envptr157392
  %envptr157393 = inttoptr i64 %env156058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157394 = getelementptr inbounds i64, i64* %envptr157393, i64 1              ; &envptr157393[1]
  %Wh7$ly = load i64, i64* %envptr157394, align 8                                    ; load; *envptr157394
  %cmp157395 = icmp eq i64 %a154704, 15                                              ; false?
  br i1 %cmp157395, label %else157397, label %then157396                             ; if

then157396:
  %a154705 = call i64 @prim__45(i64 %BST$lx, i64 %Wh7$ly)                            ; call prim__45
  %cloptr157398 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr157400 = getelementptr inbounds i64, i64* %cloptr157398, i64 1                ; &eptr157400[1]
  %eptr157401 = getelementptr inbounds i64, i64* %cloptr157398, i64 2                ; &eptr157401[2]
  %eptr157402 = getelementptr inbounds i64, i64* %cloptr157398, i64 3                ; &eptr157402[3]
  %eptr157403 = getelementptr inbounds i64, i64* %cloptr157398, i64 4                ; &eptr157403[4]
  %eptr157404 = getelementptr inbounds i64, i64* %cloptr157398, i64 5                ; &eptr157404[5]
  %eptr157405 = getelementptr inbounds i64, i64* %cloptr157398, i64 6                ; &eptr157405[6]
  %eptr157406 = getelementptr inbounds i64, i64* %cloptr157398, i64 7                ; &eptr157406[7]
  store i64 %Wh7$ly, i64* %eptr157400                                                ; *eptr157400 = %Wh7$ly
  store i64 %BST$lx, i64* %eptr157401                                                ; *eptr157401 = %BST$lx
  store i64 %fQR$y, i64* %eptr157402                                                 ; *eptr157402 = %fQR$y
  store i64 %a154703, i64* %eptr157403                                               ; *eptr157403 = %a154703
  store i64 %cont154801, i64* %eptr157404                                            ; *eptr157404 = %cont154801
  store i64 %Gl0$_37drop, i64* %eptr157405                                           ; *eptr157405 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr157406                                            ; *eptr157406 = %SGA$_37_62
  %eptr157399 = getelementptr inbounds i64, i64* %cloptr157398, i64 0                ; &cloptr157398[0]
  %f157407 = ptrtoint void(i64,i64,i64)* @lam156045 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157407, i64* %eptr157399                                               ; store fptr
  %arg155398 = ptrtoint i64* %cloptr157398 to i64                                    ; closure cast; i64* -> i64
  %cloptr157408 = inttoptr i64 %Gl0$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr157409 = getelementptr inbounds i64, i64* %cloptr157408, i64 0               ; &cloptr157408[0]
  %f157411 = load i64, i64* %i0ptr157409, align 8                                    ; load; *i0ptr157409
  %fptr157410 = inttoptr i64 %f157411 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157410(i64 %Gl0$_37drop, i64 %arg155398, i64 %P9s$x, i64 %a154705); tail call
  ret void

else157397:
  %cloptr157412 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr157414 = getelementptr inbounds i64, i64* %cloptr157412, i64 1                ; &eptr157414[1]
  %eptr157415 = getelementptr inbounds i64, i64* %cloptr157412, i64 2                ; &eptr157415[2]
  %eptr157416 = getelementptr inbounds i64, i64* %cloptr157412, i64 3                ; &eptr157416[3]
  %eptr157417 = getelementptr inbounds i64, i64* %cloptr157412, i64 4                ; &eptr157417[4]
  %eptr157418 = getelementptr inbounds i64, i64* %cloptr157412, i64 5                ; &eptr157418[5]
  %eptr157419 = getelementptr inbounds i64, i64* %cloptr157412, i64 6                ; &eptr157419[6]
  %eptr157420 = getelementptr inbounds i64, i64* %cloptr157412, i64 7                ; &eptr157420[7]
  store i64 %Wh7$ly, i64* %eptr157414                                                ; *eptr157414 = %Wh7$ly
  store i64 %BST$lx, i64* %eptr157415                                                ; *eptr157415 = %BST$lx
  store i64 %fQR$y, i64* %eptr157416                                                 ; *eptr157416 = %fQR$y
  store i64 %a154703, i64* %eptr157417                                               ; *eptr157417 = %a154703
  store i64 %cont154801, i64* %eptr157418                                            ; *eptr157418 = %cont154801
  store i64 %Gl0$_37drop, i64* %eptr157419                                           ; *eptr157419 = %Gl0$_37drop
  store i64 %SGA$_37_62, i64* %eptr157420                                            ; *eptr157420 = %SGA$_37_62
  %eptr157413 = getelementptr inbounds i64, i64* %cloptr157412, i64 0                ; &cloptr157412[0]
  %f157421 = ptrtoint void(i64,i64,i64)* @lam156055 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157421, i64* %eptr157413                                               ; store fptr
  %arg155423 = ptrtoint i64* %cloptr157412 to i64                                    ; closure cast; i64* -> i64
  %arg155422 = add i64 0, 0                                                          ; quoted ()
  %cloptr157422 = inttoptr i64 %arg155423 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157423 = getelementptr inbounds i64, i64* %cloptr157422, i64 0               ; &cloptr157422[0]
  %f157425 = load i64, i64* %i0ptr157423, align 8                                    ; load; *i0ptr157423
  %fptr157424 = inttoptr i64 %f157425 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157424(i64 %arg155423, i64 %arg155422, i64 %P9s$x)  ; tail call
  ret void
}


define void @lam156055(i64 %env156056, i64 %_95154807, i64 %a154706) {
  %envptr157426 = inttoptr i64 %env156056 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157427 = getelementptr inbounds i64, i64* %envptr157426, i64 7              ; &envptr157426[7]
  %SGA$_37_62 = load i64, i64* %envptr157427, align 8                                ; load; *envptr157427
  %envptr157428 = inttoptr i64 %env156056 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157429 = getelementptr inbounds i64, i64* %envptr157428, i64 6              ; &envptr157428[6]
  %Gl0$_37drop = load i64, i64* %envptr157429, align 8                               ; load; *envptr157429
  %envptr157430 = inttoptr i64 %env156056 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157431 = getelementptr inbounds i64, i64* %envptr157430, i64 5              ; &envptr157430[5]
  %cont154801 = load i64, i64* %envptr157431, align 8                                ; load; *envptr157431
  %envptr157432 = inttoptr i64 %env156056 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157433 = getelementptr inbounds i64, i64* %envptr157432, i64 4              ; &envptr157432[4]
  %a154703 = load i64, i64* %envptr157433, align 8                                   ; load; *envptr157433
  %envptr157434 = inttoptr i64 %env156056 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157435 = getelementptr inbounds i64, i64* %envptr157434, i64 3              ; &envptr157434[3]
  %fQR$y = load i64, i64* %envptr157435, align 8                                     ; load; *envptr157435
  %envptr157436 = inttoptr i64 %env156056 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157437 = getelementptr inbounds i64, i64* %envptr157436, i64 2              ; &envptr157436[2]
  %BST$lx = load i64, i64* %envptr157437, align 8                                    ; load; *envptr157437
  %envptr157438 = inttoptr i64 %env156056 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157439 = getelementptr inbounds i64, i64* %envptr157438, i64 1              ; &envptr157438[1]
  %Wh7$ly = load i64, i64* %envptr157439, align 8                                    ; load; *envptr157439
  %cloptr157440 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr157442 = getelementptr inbounds i64, i64* %cloptr157440, i64 1                ; &eptr157442[1]
  %eptr157443 = getelementptr inbounds i64, i64* %cloptr157440, i64 2                ; &eptr157443[2]
  %eptr157444 = getelementptr inbounds i64, i64* %cloptr157440, i64 3                ; &eptr157444[3]
  %eptr157445 = getelementptr inbounds i64, i64* %cloptr157440, i64 4                ; &eptr157445[4]
  %eptr157446 = getelementptr inbounds i64, i64* %cloptr157440, i64 5                ; &eptr157446[5]
  %eptr157447 = getelementptr inbounds i64, i64* %cloptr157440, i64 6                ; &eptr157447[6]
  %eptr157448 = getelementptr inbounds i64, i64* %cloptr157440, i64 7                ; &eptr157448[7]
  store i64 %Wh7$ly, i64* %eptr157442                                                ; *eptr157442 = %Wh7$ly
  store i64 %BST$lx, i64* %eptr157443                                                ; *eptr157443 = %BST$lx
  store i64 %fQR$y, i64* %eptr157444                                                 ; *eptr157444 = %fQR$y
  store i64 %a154703, i64* %eptr157445                                               ; *eptr157445 = %a154703
  store i64 %a154706, i64* %eptr157446                                               ; *eptr157446 = %a154706
  store i64 %cont154801, i64* %eptr157447                                            ; *eptr157447 = %cont154801
  store i64 %Gl0$_37drop, i64* %eptr157448                                           ; *eptr157448 = %Gl0$_37drop
  %eptr157441 = getelementptr inbounds i64, i64* %cloptr157440, i64 0                ; &cloptr157440[0]
  %f157449 = ptrtoint void(i64,i64,i64)* @lam156053 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157449, i64* %eptr157441                                               ; store fptr
  %arg155426 = ptrtoint i64* %cloptr157440 to i64                                    ; closure cast; i64* -> i64
  %cloptr157450 = inttoptr i64 %SGA$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157451 = getelementptr inbounds i64, i64* %cloptr157450, i64 0               ; &cloptr157450[0]
  %f157453 = load i64, i64* %i0ptr157451, align 8                                    ; load; *i0ptr157451
  %fptr157452 = inttoptr i64 %f157453 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157452(i64 %SGA$_37_62, i64 %arg155426, i64 %Wh7$ly, i64 %BST$lx); tail call
  ret void
}


define void @lam156053(i64 %env156054, i64 %_95154808, i64 %a154707) {
  %envptr157454 = inttoptr i64 %env156054 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157455 = getelementptr inbounds i64, i64* %envptr157454, i64 7              ; &envptr157454[7]
  %Gl0$_37drop = load i64, i64* %envptr157455, align 8                               ; load; *envptr157455
  %envptr157456 = inttoptr i64 %env156054 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157457 = getelementptr inbounds i64, i64* %envptr157456, i64 6              ; &envptr157456[6]
  %cont154801 = load i64, i64* %envptr157457, align 8                                ; load; *envptr157457
  %envptr157458 = inttoptr i64 %env156054 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157459 = getelementptr inbounds i64, i64* %envptr157458, i64 5              ; &envptr157458[5]
  %a154706 = load i64, i64* %envptr157459, align 8                                   ; load; *envptr157459
  %envptr157460 = inttoptr i64 %env156054 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157461 = getelementptr inbounds i64, i64* %envptr157460, i64 4              ; &envptr157460[4]
  %a154703 = load i64, i64* %envptr157461, align 8                                   ; load; *envptr157461
  %envptr157462 = inttoptr i64 %env156054 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157463 = getelementptr inbounds i64, i64* %envptr157462, i64 3              ; &envptr157462[3]
  %fQR$y = load i64, i64* %envptr157463, align 8                                     ; load; *envptr157463
  %envptr157464 = inttoptr i64 %env156054 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157465 = getelementptr inbounds i64, i64* %envptr157464, i64 2              ; &envptr157464[2]
  %BST$lx = load i64, i64* %envptr157465, align 8                                    ; load; *envptr157465
  %envptr157466 = inttoptr i64 %env156054 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157467 = getelementptr inbounds i64, i64* %envptr157466, i64 1              ; &envptr157466[1]
  %Wh7$ly = load i64, i64* %envptr157467, align 8                                    ; load; *envptr157467
  %cmp157468 = icmp eq i64 %a154707, 15                                              ; false?
  br i1 %cmp157468, label %else157470, label %then157469                             ; if

then157469:
  %a154708 = call i64 @prim__45(i64 %Wh7$ly, i64 %BST$lx)                            ; call prim__45
  %cloptr157471 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157473 = getelementptr inbounds i64, i64* %cloptr157471, i64 1                ; &eptr157473[1]
  %eptr157474 = getelementptr inbounds i64, i64* %cloptr157471, i64 2                ; &eptr157474[2]
  %eptr157475 = getelementptr inbounds i64, i64* %cloptr157471, i64 3                ; &eptr157475[3]
  store i64 %a154703, i64* %eptr157473                                               ; *eptr157473 = %a154703
  store i64 %a154706, i64* %eptr157474                                               ; *eptr157474 = %a154706
  store i64 %cont154801, i64* %eptr157475                                            ; *eptr157475 = %cont154801
  %eptr157472 = getelementptr inbounds i64, i64* %cloptr157471, i64 0                ; &cloptr157471[0]
  %f157476 = ptrtoint void(i64,i64,i64)* @lam156048 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157476, i64* %eptr157472                                               ; store fptr
  %arg155432 = ptrtoint i64* %cloptr157471 to i64                                    ; closure cast; i64* -> i64
  %cloptr157477 = inttoptr i64 %Gl0$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr157478 = getelementptr inbounds i64, i64* %cloptr157477, i64 0               ; &cloptr157477[0]
  %f157480 = load i64, i64* %i0ptr157478, align 8                                    ; load; *i0ptr157478
  %fptr157479 = inttoptr i64 %f157480 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157479(i64 %Gl0$_37drop, i64 %arg155432, i64 %fQR$y, i64 %a154708); tail call
  ret void

else157470:
  %cloptr157481 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157483 = getelementptr inbounds i64, i64* %cloptr157481, i64 1                ; &eptr157483[1]
  %eptr157484 = getelementptr inbounds i64, i64* %cloptr157481, i64 2                ; &eptr157484[2]
  %eptr157485 = getelementptr inbounds i64, i64* %cloptr157481, i64 3                ; &eptr157485[3]
  store i64 %a154703, i64* %eptr157483                                               ; *eptr157483 = %a154703
  store i64 %a154706, i64* %eptr157484                                               ; *eptr157484 = %a154706
  store i64 %cont154801, i64* %eptr157485                                            ; *eptr157485 = %cont154801
  %eptr157482 = getelementptr inbounds i64, i64* %cloptr157481, i64 0                ; &cloptr157481[0]
  %f157486 = ptrtoint void(i64,i64,i64)* @lam156051 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157486, i64* %eptr157482                                               ; store fptr
  %arg155440 = ptrtoint i64* %cloptr157481 to i64                                    ; closure cast; i64* -> i64
  %arg155439 = add i64 0, 0                                                          ; quoted ()
  %cloptr157487 = inttoptr i64 %arg155440 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157488 = getelementptr inbounds i64, i64* %cloptr157487, i64 0               ; &cloptr157487[0]
  %f157490 = load i64, i64* %i0ptr157488, align 8                                    ; load; *i0ptr157488
  %fptr157489 = inttoptr i64 %f157490 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157489(i64 %arg155440, i64 %arg155439, i64 %fQR$y)  ; tail call
  ret void
}


define void @lam156051(i64 %env156052, i64 %_95154809, i64 %a154709) {
  %envptr157491 = inttoptr i64 %env156052 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157492 = getelementptr inbounds i64, i64* %envptr157491, i64 3              ; &envptr157491[3]
  %cont154801 = load i64, i64* %envptr157492, align 8                                ; load; *envptr157492
  %envptr157493 = inttoptr i64 %env156052 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157494 = getelementptr inbounds i64, i64* %envptr157493, i64 2              ; &envptr157493[2]
  %a154706 = load i64, i64* %envptr157494, align 8                                   ; load; *envptr157494
  %envptr157495 = inttoptr i64 %env156052 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157496 = getelementptr inbounds i64, i64* %envptr157495, i64 1              ; &envptr157495[1]
  %a154703 = load i64, i64* %envptr157496, align 8                                   ; load; *envptr157496
  %cloptr157497 = inttoptr i64 %a154703 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157498 = getelementptr inbounds i64, i64* %cloptr157497, i64 0               ; &cloptr157497[0]
  %f157500 = load i64, i64* %i0ptr157498, align 8                                    ; load; *i0ptr157498
  %fptr157499 = inttoptr i64 %f157500 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157499(i64 %a154703, i64 %cont154801, i64 %a154706, i64 %a154709); tail call
  ret void
}


define void @lam156048(i64 %env156049, i64 %_95154809, i64 %a154709) {
  %envptr157501 = inttoptr i64 %env156049 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157502 = getelementptr inbounds i64, i64* %envptr157501, i64 3              ; &envptr157501[3]
  %cont154801 = load i64, i64* %envptr157502, align 8                                ; load; *envptr157502
  %envptr157503 = inttoptr i64 %env156049 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157504 = getelementptr inbounds i64, i64* %envptr157503, i64 2              ; &envptr157503[2]
  %a154706 = load i64, i64* %envptr157504, align 8                                   ; load; *envptr157504
  %envptr157505 = inttoptr i64 %env156049 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157506 = getelementptr inbounds i64, i64* %envptr157505, i64 1              ; &envptr157505[1]
  %a154703 = load i64, i64* %envptr157506, align 8                                   ; load; *envptr157506
  %cloptr157507 = inttoptr i64 %a154703 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157508 = getelementptr inbounds i64, i64* %cloptr157507, i64 0               ; &cloptr157507[0]
  %f157510 = load i64, i64* %i0ptr157508, align 8                                    ; load; *i0ptr157508
  %fptr157509 = inttoptr i64 %f157510 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157509(i64 %a154703, i64 %cont154801, i64 %a154706, i64 %a154709); tail call
  ret void
}


define void @lam156045(i64 %env156046, i64 %_95154807, i64 %a154706) {
  %envptr157511 = inttoptr i64 %env156046 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157512 = getelementptr inbounds i64, i64* %envptr157511, i64 7              ; &envptr157511[7]
  %SGA$_37_62 = load i64, i64* %envptr157512, align 8                                ; load; *envptr157512
  %envptr157513 = inttoptr i64 %env156046 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157514 = getelementptr inbounds i64, i64* %envptr157513, i64 6              ; &envptr157513[6]
  %Gl0$_37drop = load i64, i64* %envptr157514, align 8                               ; load; *envptr157514
  %envptr157515 = inttoptr i64 %env156046 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157516 = getelementptr inbounds i64, i64* %envptr157515, i64 5              ; &envptr157515[5]
  %cont154801 = load i64, i64* %envptr157516, align 8                                ; load; *envptr157516
  %envptr157517 = inttoptr i64 %env156046 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157518 = getelementptr inbounds i64, i64* %envptr157517, i64 4              ; &envptr157517[4]
  %a154703 = load i64, i64* %envptr157518, align 8                                   ; load; *envptr157518
  %envptr157519 = inttoptr i64 %env156046 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157520 = getelementptr inbounds i64, i64* %envptr157519, i64 3              ; &envptr157519[3]
  %fQR$y = load i64, i64* %envptr157520, align 8                                     ; load; *envptr157520
  %envptr157521 = inttoptr i64 %env156046 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157522 = getelementptr inbounds i64, i64* %envptr157521, i64 2              ; &envptr157521[2]
  %BST$lx = load i64, i64* %envptr157522, align 8                                    ; load; *envptr157522
  %envptr157523 = inttoptr i64 %env156046 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157524 = getelementptr inbounds i64, i64* %envptr157523, i64 1              ; &envptr157523[1]
  %Wh7$ly = load i64, i64* %envptr157524, align 8                                    ; load; *envptr157524
  %cloptr157525 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr157527 = getelementptr inbounds i64, i64* %cloptr157525, i64 1                ; &eptr157527[1]
  %eptr157528 = getelementptr inbounds i64, i64* %cloptr157525, i64 2                ; &eptr157528[2]
  %eptr157529 = getelementptr inbounds i64, i64* %cloptr157525, i64 3                ; &eptr157529[3]
  %eptr157530 = getelementptr inbounds i64, i64* %cloptr157525, i64 4                ; &eptr157530[4]
  %eptr157531 = getelementptr inbounds i64, i64* %cloptr157525, i64 5                ; &eptr157531[5]
  %eptr157532 = getelementptr inbounds i64, i64* %cloptr157525, i64 6                ; &eptr157532[6]
  %eptr157533 = getelementptr inbounds i64, i64* %cloptr157525, i64 7                ; &eptr157533[7]
  store i64 %Wh7$ly, i64* %eptr157527                                                ; *eptr157527 = %Wh7$ly
  store i64 %BST$lx, i64* %eptr157528                                                ; *eptr157528 = %BST$lx
  store i64 %fQR$y, i64* %eptr157529                                                 ; *eptr157529 = %fQR$y
  store i64 %a154703, i64* %eptr157530                                               ; *eptr157530 = %a154703
  store i64 %a154706, i64* %eptr157531                                               ; *eptr157531 = %a154706
  store i64 %cont154801, i64* %eptr157532                                            ; *eptr157532 = %cont154801
  store i64 %Gl0$_37drop, i64* %eptr157533                                           ; *eptr157533 = %Gl0$_37drop
  %eptr157526 = getelementptr inbounds i64, i64* %cloptr157525, i64 0                ; &cloptr157525[0]
  %f157534 = ptrtoint void(i64,i64,i64)* @lam156043 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157534, i64* %eptr157526                                               ; store fptr
  %arg155402 = ptrtoint i64* %cloptr157525 to i64                                    ; closure cast; i64* -> i64
  %cloptr157535 = inttoptr i64 %SGA$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157536 = getelementptr inbounds i64, i64* %cloptr157535, i64 0               ; &cloptr157535[0]
  %f157538 = load i64, i64* %i0ptr157536, align 8                                    ; load; *i0ptr157536
  %fptr157537 = inttoptr i64 %f157538 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157537(i64 %SGA$_37_62, i64 %arg155402, i64 %Wh7$ly, i64 %BST$lx); tail call
  ret void
}


define void @lam156043(i64 %env156044, i64 %_95154808, i64 %a154707) {
  %envptr157539 = inttoptr i64 %env156044 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157540 = getelementptr inbounds i64, i64* %envptr157539, i64 7              ; &envptr157539[7]
  %Gl0$_37drop = load i64, i64* %envptr157540, align 8                               ; load; *envptr157540
  %envptr157541 = inttoptr i64 %env156044 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157542 = getelementptr inbounds i64, i64* %envptr157541, i64 6              ; &envptr157541[6]
  %cont154801 = load i64, i64* %envptr157542, align 8                                ; load; *envptr157542
  %envptr157543 = inttoptr i64 %env156044 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157544 = getelementptr inbounds i64, i64* %envptr157543, i64 5              ; &envptr157543[5]
  %a154706 = load i64, i64* %envptr157544, align 8                                   ; load; *envptr157544
  %envptr157545 = inttoptr i64 %env156044 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157546 = getelementptr inbounds i64, i64* %envptr157545, i64 4              ; &envptr157545[4]
  %a154703 = load i64, i64* %envptr157546, align 8                                   ; load; *envptr157546
  %envptr157547 = inttoptr i64 %env156044 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157548 = getelementptr inbounds i64, i64* %envptr157547, i64 3              ; &envptr157547[3]
  %fQR$y = load i64, i64* %envptr157548, align 8                                     ; load; *envptr157548
  %envptr157549 = inttoptr i64 %env156044 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157550 = getelementptr inbounds i64, i64* %envptr157549, i64 2              ; &envptr157549[2]
  %BST$lx = load i64, i64* %envptr157550, align 8                                    ; load; *envptr157550
  %envptr157551 = inttoptr i64 %env156044 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157552 = getelementptr inbounds i64, i64* %envptr157551, i64 1              ; &envptr157551[1]
  %Wh7$ly = load i64, i64* %envptr157552, align 8                                    ; load; *envptr157552
  %cmp157553 = icmp eq i64 %a154707, 15                                              ; false?
  br i1 %cmp157553, label %else157555, label %then157554                             ; if

then157554:
  %a154708 = call i64 @prim__45(i64 %Wh7$ly, i64 %BST$lx)                            ; call prim__45
  %cloptr157556 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157558 = getelementptr inbounds i64, i64* %cloptr157556, i64 1                ; &eptr157558[1]
  %eptr157559 = getelementptr inbounds i64, i64* %cloptr157556, i64 2                ; &eptr157559[2]
  %eptr157560 = getelementptr inbounds i64, i64* %cloptr157556, i64 3                ; &eptr157560[3]
  store i64 %a154703, i64* %eptr157558                                               ; *eptr157558 = %a154703
  store i64 %a154706, i64* %eptr157559                                               ; *eptr157559 = %a154706
  store i64 %cont154801, i64* %eptr157560                                            ; *eptr157560 = %cont154801
  %eptr157557 = getelementptr inbounds i64, i64* %cloptr157556, i64 0                ; &cloptr157556[0]
  %f157561 = ptrtoint void(i64,i64,i64)* @lam156038 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157561, i64* %eptr157557                                               ; store fptr
  %arg155408 = ptrtoint i64* %cloptr157556 to i64                                    ; closure cast; i64* -> i64
  %cloptr157562 = inttoptr i64 %Gl0$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr157563 = getelementptr inbounds i64, i64* %cloptr157562, i64 0               ; &cloptr157562[0]
  %f157565 = load i64, i64* %i0ptr157563, align 8                                    ; load; *i0ptr157563
  %fptr157564 = inttoptr i64 %f157565 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157564(i64 %Gl0$_37drop, i64 %arg155408, i64 %fQR$y, i64 %a154708); tail call
  ret void

else157555:
  %cloptr157566 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157568 = getelementptr inbounds i64, i64* %cloptr157566, i64 1                ; &eptr157568[1]
  %eptr157569 = getelementptr inbounds i64, i64* %cloptr157566, i64 2                ; &eptr157569[2]
  %eptr157570 = getelementptr inbounds i64, i64* %cloptr157566, i64 3                ; &eptr157570[3]
  store i64 %a154703, i64* %eptr157568                                               ; *eptr157568 = %a154703
  store i64 %a154706, i64* %eptr157569                                               ; *eptr157569 = %a154706
  store i64 %cont154801, i64* %eptr157570                                            ; *eptr157570 = %cont154801
  %eptr157567 = getelementptr inbounds i64, i64* %cloptr157566, i64 0                ; &cloptr157566[0]
  %f157571 = ptrtoint void(i64,i64,i64)* @lam156041 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157571, i64* %eptr157567                                               ; store fptr
  %arg155416 = ptrtoint i64* %cloptr157566 to i64                                    ; closure cast; i64* -> i64
  %arg155415 = add i64 0, 0                                                          ; quoted ()
  %cloptr157572 = inttoptr i64 %arg155416 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157573 = getelementptr inbounds i64, i64* %cloptr157572, i64 0               ; &cloptr157572[0]
  %f157575 = load i64, i64* %i0ptr157573, align 8                                    ; load; *i0ptr157573
  %fptr157574 = inttoptr i64 %f157575 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157574(i64 %arg155416, i64 %arg155415, i64 %fQR$y)  ; tail call
  ret void
}


define void @lam156041(i64 %env156042, i64 %_95154809, i64 %a154709) {
  %envptr157576 = inttoptr i64 %env156042 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157577 = getelementptr inbounds i64, i64* %envptr157576, i64 3              ; &envptr157576[3]
  %cont154801 = load i64, i64* %envptr157577, align 8                                ; load; *envptr157577
  %envptr157578 = inttoptr i64 %env156042 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157579 = getelementptr inbounds i64, i64* %envptr157578, i64 2              ; &envptr157578[2]
  %a154706 = load i64, i64* %envptr157579, align 8                                   ; load; *envptr157579
  %envptr157580 = inttoptr i64 %env156042 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157581 = getelementptr inbounds i64, i64* %envptr157580, i64 1              ; &envptr157580[1]
  %a154703 = load i64, i64* %envptr157581, align 8                                   ; load; *envptr157581
  %cloptr157582 = inttoptr i64 %a154703 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157583 = getelementptr inbounds i64, i64* %cloptr157582, i64 0               ; &cloptr157582[0]
  %f157585 = load i64, i64* %i0ptr157583, align 8                                    ; load; *i0ptr157583
  %fptr157584 = inttoptr i64 %f157585 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157584(i64 %a154703, i64 %cont154801, i64 %a154706, i64 %a154709); tail call
  ret void
}


define void @lam156038(i64 %env156039, i64 %_95154809, i64 %a154709) {
  %envptr157586 = inttoptr i64 %env156039 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157587 = getelementptr inbounds i64, i64* %envptr157586, i64 3              ; &envptr157586[3]
  %cont154801 = load i64, i64* %envptr157587, align 8                                ; load; *envptr157587
  %envptr157588 = inttoptr i64 %env156039 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157589 = getelementptr inbounds i64, i64* %envptr157588, i64 2              ; &envptr157588[2]
  %a154706 = load i64, i64* %envptr157589, align 8                                   ; load; *envptr157589
  %envptr157590 = inttoptr i64 %env156039 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157591 = getelementptr inbounds i64, i64* %envptr157590, i64 1              ; &envptr157590[1]
  %a154703 = load i64, i64* %envptr157591, align 8                                   ; load; *envptr157591
  %cloptr157592 = inttoptr i64 %a154703 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157593 = getelementptr inbounds i64, i64* %cloptr157592, i64 0               ; &cloptr157592[0]
  %f157595 = load i64, i64* %i0ptr157593, align 8                                    ; load; *i0ptr157593
  %fptr157594 = inttoptr i64 %f157595 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157594(i64 %a154703, i64 %cont154801, i64 %a154706, i64 %a154709); tail call
  ret void
}


define void @lam156035(i64 %env156036, i64 %cont154814, i64 %STE$new) {
  %envptr157596 = inttoptr i64 %env156036 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157597 = getelementptr inbounds i64, i64* %envptr157596, i64 2              ; &envptr157596[2]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157597, align 8                       ; load; *envptr157597
  %envptr157598 = inttoptr i64 %env156036 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157599 = getelementptr inbounds i64, i64* %envptr157598, i64 1              ; &envptr157598[1]
  %oeR$_37common_45tail = load i64, i64* %envptr157599, align 8                      ; load; *envptr157599
  %arg155445 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154710 = call i64 @prim_vector_45ref(i64 %bPZ$_37wind_45stack, i64 %arg155445)   ; call prim_vector_45ref
  %cloptr157600 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157602 = getelementptr inbounds i64, i64* %cloptr157600, i64 1                ; &eptr157602[1]
  %eptr157603 = getelementptr inbounds i64, i64* %cloptr157600, i64 2                ; &eptr157603[2]
  %eptr157604 = getelementptr inbounds i64, i64* %cloptr157600, i64 3                ; &eptr157604[3]
  store i64 %bPZ$_37wind_45stack, i64* %eptr157602                                   ; *eptr157602 = %bPZ$_37wind_45stack
  store i64 %STE$new, i64* %eptr157603                                               ; *eptr157603 = %STE$new
  store i64 %cont154814, i64* %eptr157604                                            ; *eptr157604 = %cont154814
  %eptr157601 = getelementptr inbounds i64, i64* %cloptr157600, i64 0                ; &cloptr157600[0]
  %f157605 = ptrtoint void(i64,i64,i64)* @lam156032 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157605, i64* %eptr157601                                               ; store fptr
  %arg155449 = ptrtoint i64* %cloptr157600 to i64                                    ; closure cast; i64* -> i64
  %cloptr157606 = inttoptr i64 %oeR$_37common_45tail to i64*                         ; closure/env cast; i64 -> i64*
  %i0ptr157607 = getelementptr inbounds i64, i64* %cloptr157606, i64 0               ; &cloptr157606[0]
  %f157609 = load i64, i64* %i0ptr157607, align 8                                    ; load; *i0ptr157607
  %fptr157608 = inttoptr i64 %f157609 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157608(i64 %oeR$_37common_45tail, i64 %arg155449, i64 %STE$new, i64 %a154710); tail call
  ret void
}


define void @lam156032(i64 %env156033, i64 %_95154815, i64 %gSD$tail) {
  %envptr157610 = inttoptr i64 %env156033 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157611 = getelementptr inbounds i64, i64* %envptr157610, i64 3              ; &envptr157610[3]
  %cont154814 = load i64, i64* %envptr157611, align 8                                ; load; *envptr157611
  %envptr157612 = inttoptr i64 %env156033 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157613 = getelementptr inbounds i64, i64* %envptr157612, i64 2              ; &envptr157612[2]
  %STE$new = load i64, i64* %envptr157613, align 8                                   ; load; *envptr157613
  %envptr157614 = inttoptr i64 %env156033 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157615 = getelementptr inbounds i64, i64* %envptr157614, i64 1              ; &envptr157614[1]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157615, align 8                       ; load; *envptr157615
  %cloptr157616 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157617 = getelementptr inbounds i64, i64* %cloptr157616, i64 0                ; &cloptr157616[0]
  %f157618 = ptrtoint void(i64,i64)* @lam156030 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f157618, i64* %eptr157617                                               ; store fptr
  %arg155452 = ptrtoint i64* %cloptr157616 to i64                                    ; closure cast; i64* -> i64
  %cloptr157619 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr157621 = getelementptr inbounds i64, i64* %cloptr157619, i64 1                ; &eptr157621[1]
  %eptr157622 = getelementptr inbounds i64, i64* %cloptr157619, i64 2                ; &eptr157622[2]
  %eptr157623 = getelementptr inbounds i64, i64* %cloptr157619, i64 3                ; &eptr157623[3]
  %eptr157624 = getelementptr inbounds i64, i64* %cloptr157619, i64 4                ; &eptr157624[4]
  store i64 %bPZ$_37wind_45stack, i64* %eptr157621                                   ; *eptr157621 = %bPZ$_37wind_45stack
  store i64 %STE$new, i64* %eptr157622                                               ; *eptr157622 = %STE$new
  store i64 %gSD$tail, i64* %eptr157623                                              ; *eptr157623 = %gSD$tail
  store i64 %cont154814, i64* %eptr157624                                            ; *eptr157624 = %cont154814
  %eptr157620 = getelementptr inbounds i64, i64* %cloptr157619, i64 0                ; &cloptr157619[0]
  %f157625 = ptrtoint void(i64,i64,i64)* @lam156027 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157625, i64* %eptr157620                                               ; store fptr
  %arg155451 = ptrtoint i64* %cloptr157619 to i64                                    ; closure cast; i64* -> i64
  %cloptr157626 = inttoptr i64 %arg155452 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157627 = getelementptr inbounds i64, i64* %cloptr157626, i64 0               ; &cloptr157626[0]
  %f157629 = load i64, i64* %i0ptr157627, align 8                                    ; load; *i0ptr157627
  %fptr157628 = inttoptr i64 %f157629 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157628(i64 %arg155452, i64 %arg155451)              ; tail call
  ret void
}


define void @lam156030(i64 %env156031, i64 %a8A$lst154836) {
  %cont154835 = call i64 @prim_car(i64 %a8A$lst154836)                               ; call prim_car
  %a8A$lst = call i64 @prim_cdr(i64 %a8A$lst154836)                                  ; call prim_cdr
  %arg155456 = add i64 0, 0                                                          ; quoted ()
  %cloptr157630 = inttoptr i64 %cont154835 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157631 = getelementptr inbounds i64, i64* %cloptr157630, i64 0               ; &cloptr157630[0]
  %f157633 = load i64, i64* %i0ptr157631, align 8                                    ; load; *i0ptr157631
  %fptr157632 = inttoptr i64 %f157633 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157632(i64 %cont154835, i64 %arg155456, i64 %a8A$lst); tail call
  ret void
}


define void @lam156027(i64 %env156028, i64 %_95154833, i64 %a154711) {
  %envptr157634 = inttoptr i64 %env156028 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157635 = getelementptr inbounds i64, i64* %envptr157634, i64 4              ; &envptr157634[4]
  %cont154814 = load i64, i64* %envptr157635, align 8                                ; load; *envptr157635
  %envptr157636 = inttoptr i64 %env156028 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157637 = getelementptr inbounds i64, i64* %envptr157636, i64 3              ; &envptr157636[3]
  %gSD$tail = load i64, i64* %envptr157637, align 8                                  ; load; *envptr157637
  %envptr157638 = inttoptr i64 %env156028 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157639 = getelementptr inbounds i64, i64* %envptr157638, i64 2              ; &envptr157638[2]
  %STE$new = load i64, i64* %envptr157639, align 8                                   ; load; *envptr157639
  %envptr157640 = inttoptr i64 %env156028 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157641 = getelementptr inbounds i64, i64* %envptr157640, i64 1              ; &envptr157640[1]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157641, align 8                       ; load; *envptr157641
  %arg155459 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim154834 = call i64 @prim_make_45vector(i64 %arg155459, i64 %a154711)        ; call prim_make_45vector
  %cloptr157642 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr157644 = getelementptr inbounds i64, i64* %cloptr157642, i64 1                ; &eptr157644[1]
  %eptr157645 = getelementptr inbounds i64, i64* %cloptr157642, i64 2                ; &eptr157645[2]
  %eptr157646 = getelementptr inbounds i64, i64* %cloptr157642, i64 3                ; &eptr157646[3]
  %eptr157647 = getelementptr inbounds i64, i64* %cloptr157642, i64 4                ; &eptr157647[4]
  store i64 %bPZ$_37wind_45stack, i64* %eptr157644                                   ; *eptr157644 = %bPZ$_37wind_45stack
  store i64 %STE$new, i64* %eptr157645                                               ; *eptr157645 = %STE$new
  store i64 %gSD$tail, i64* %eptr157646                                              ; *eptr157646 = %gSD$tail
  store i64 %cont154814, i64* %eptr157647                                            ; *eptr157647 = %cont154814
  %eptr157643 = getelementptr inbounds i64, i64* %cloptr157642, i64 0                ; &cloptr157642[0]
  %f157648 = ptrtoint void(i64,i64,i64)* @lam156024 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157648, i64* %eptr157643                                               ; store fptr
  %arg155462 = ptrtoint i64* %cloptr157642 to i64                                    ; closure cast; i64* -> i64
  %arg155461 = add i64 0, 0                                                          ; quoted ()
  %cloptr157649 = inttoptr i64 %arg155462 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157650 = getelementptr inbounds i64, i64* %cloptr157649, i64 0               ; &cloptr157649[0]
  %f157652 = load i64, i64* %i0ptr157650, align 8                                    ; load; *i0ptr157650
  %fptr157651 = inttoptr i64 %f157652 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157651(i64 %arg155462, i64 %arg155461, i64 %retprim154834); tail call
  ret void
}


define void @lam156024(i64 %env156025, i64 %_95154827, i64 %BOl$f) {
  %envptr157653 = inttoptr i64 %env156025 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157654 = getelementptr inbounds i64, i64* %envptr157653, i64 4              ; &envptr157653[4]
  %cont154814 = load i64, i64* %envptr157654, align 8                                ; load; *envptr157654
  %envptr157655 = inttoptr i64 %env156025 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157656 = getelementptr inbounds i64, i64* %envptr157655, i64 3              ; &envptr157655[3]
  %gSD$tail = load i64, i64* %envptr157656, align 8                                  ; load; *envptr157656
  %envptr157657 = inttoptr i64 %env156025 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157658 = getelementptr inbounds i64, i64* %envptr157657, i64 2              ; &envptr157657[2]
  %STE$new = load i64, i64* %envptr157658, align 8                                   ; load; *envptr157658
  %envptr157659 = inttoptr i64 %env156025 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157660 = getelementptr inbounds i64, i64* %envptr157659, i64 1              ; &envptr157659[1]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157660, align 8                       ; load; *envptr157660
  %arg155464 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr157661 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157663 = getelementptr inbounds i64, i64* %cloptr157661, i64 1                ; &eptr157663[1]
  %eptr157664 = getelementptr inbounds i64, i64* %cloptr157661, i64 2                ; &eptr157664[2]
  %eptr157665 = getelementptr inbounds i64, i64* %cloptr157661, i64 3                ; &eptr157665[3]
  store i64 %BOl$f, i64* %eptr157663                                                 ; *eptr157663 = %BOl$f
  store i64 %bPZ$_37wind_45stack, i64* %eptr157664                                   ; *eptr157664 = %bPZ$_37wind_45stack
  store i64 %gSD$tail, i64* %eptr157665                                              ; *eptr157665 = %gSD$tail
  %eptr157662 = getelementptr inbounds i64, i64* %cloptr157661, i64 0                ; &cloptr157661[0]
  %f157666 = ptrtoint void(i64,i64,i64)* @lam156021 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157666, i64* %eptr157662                                               ; store fptr
  %arg155463 = ptrtoint i64* %cloptr157661 to i64                                    ; closure cast; i64* -> i64
  %Any$_95154600 = call i64 @prim_vector_45set_33(i64 %BOl$f, i64 %arg155464, i64 %arg155463); call prim_vector_45set_33
  %arg155489 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154719 = call i64 @prim_vector_45ref(i64 %BOl$f, i64 %arg155489)                 ; call prim_vector_45ref
  %arg155491 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154720 = call i64 @prim_vector_45ref(i64 %bPZ$_37wind_45stack, i64 %arg155491)   ; call prim_vector_45ref
  %cloptr157667 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr157669 = getelementptr inbounds i64, i64* %cloptr157667, i64 1                ; &eptr157669[1]
  %eptr157670 = getelementptr inbounds i64, i64* %cloptr157667, i64 2                ; &eptr157670[2]
  %eptr157671 = getelementptr inbounds i64, i64* %cloptr157667, i64 3                ; &eptr157671[3]
  %eptr157672 = getelementptr inbounds i64, i64* %cloptr157667, i64 4                ; &eptr157672[4]
  store i64 %bPZ$_37wind_45stack, i64* %eptr157669                                   ; *eptr157669 = %bPZ$_37wind_45stack
  store i64 %STE$new, i64* %eptr157670                                               ; *eptr157670 = %STE$new
  store i64 %gSD$tail, i64* %eptr157671                                              ; *eptr157671 = %gSD$tail
  store i64 %cont154814, i64* %eptr157672                                            ; *eptr157672 = %cont154814
  %eptr157668 = getelementptr inbounds i64, i64* %cloptr157667, i64 0                ; &cloptr157667[0]
  %f157673 = ptrtoint void(i64,i64,i64)* @lam156009 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157673, i64* %eptr157668                                               ; store fptr
  %arg155494 = ptrtoint i64* %cloptr157667 to i64                                    ; closure cast; i64* -> i64
  %cloptr157674 = inttoptr i64 %a154719 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157675 = getelementptr inbounds i64, i64* %cloptr157674, i64 0               ; &cloptr157674[0]
  %f157677 = load i64, i64* %i0ptr157675, align 8                                    ; load; *i0ptr157675
  %fptr157676 = inttoptr i64 %f157677 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157676(i64 %a154719, i64 %arg155494, i64 %a154720)  ; tail call
  ret void
}


define void @lam156021(i64 %env156022, i64 %cont154828, i64 %WlA$l) {
  %envptr157678 = inttoptr i64 %env156022 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157679 = getelementptr inbounds i64, i64* %envptr157678, i64 3              ; &envptr157678[3]
  %gSD$tail = load i64, i64* %envptr157679, align 8                                  ; load; *envptr157679
  %envptr157680 = inttoptr i64 %env156022 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157681 = getelementptr inbounds i64, i64* %envptr157680, i64 2              ; &envptr157680[2]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157681, align 8                       ; load; *envptr157681
  %envptr157682 = inttoptr i64 %env156022 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157683 = getelementptr inbounds i64, i64* %envptr157682, i64 1              ; &envptr157682[1]
  %BOl$f = load i64, i64* %envptr157683, align 8                                     ; load; *envptr157683
  %a154712 = call i64 @prim_eq_63(i64 %WlA$l, i64 %gSD$tail)                         ; call prim_eq_63
  %a154713 = call i64 @prim_not(i64 %a154712)                                        ; call prim_not
  %cmp157684 = icmp eq i64 %a154713, 15                                              ; false?
  br i1 %cmp157684, label %else157686, label %then157685                             ; if

then157685:
  %a154714 = call i64 @prim_cdr(i64 %WlA$l)                                          ; call prim_cdr
  %arg155471 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154831 = call i64 @prim_vector_45set_33(i64 %bPZ$_37wind_45stack, i64 %arg155471, i64 %a154714); call prim_vector_45set_33
  %cloptr157687 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157689 = getelementptr inbounds i64, i64* %cloptr157687, i64 1                ; &eptr157689[1]
  %eptr157690 = getelementptr inbounds i64, i64* %cloptr157687, i64 2                ; &eptr157690[2]
  %eptr157691 = getelementptr inbounds i64, i64* %cloptr157687, i64 3                ; &eptr157691[3]
  store i64 %WlA$l, i64* %eptr157689                                                 ; *eptr157689 = %WlA$l
  store i64 %BOl$f, i64* %eptr157690                                                 ; *eptr157690 = %BOl$f
  store i64 %cont154828, i64* %eptr157691                                            ; *eptr157691 = %cont154828
  %eptr157688 = getelementptr inbounds i64, i64* %cloptr157687, i64 0                ; &cloptr157687[0]
  %f157692 = ptrtoint void(i64,i64,i64)* @lam156017 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157692, i64* %eptr157688                                               ; store fptr
  %arg155475 = ptrtoint i64* %cloptr157687 to i64                                    ; closure cast; i64* -> i64
  %arg155474 = add i64 0, 0                                                          ; quoted ()
  %cloptr157693 = inttoptr i64 %arg155475 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157694 = getelementptr inbounds i64, i64* %cloptr157693, i64 0               ; &cloptr157693[0]
  %f157696 = load i64, i64* %i0ptr157694, align 8                                    ; load; *i0ptr157694
  %fptr157695 = inttoptr i64 %f157696 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157695(i64 %arg155475, i64 %arg155474, i64 %retprim154831); tail call
  ret void

else157686:
  %retprim154832 = call i64 @prim_void()                                             ; call prim_void
  %arg155487 = add i64 0, 0                                                          ; quoted ()
  %cloptr157697 = inttoptr i64 %cont154828 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157698 = getelementptr inbounds i64, i64* %cloptr157697, i64 0               ; &cloptr157697[0]
  %f157700 = load i64, i64* %i0ptr157698, align 8                                    ; load; *i0ptr157698
  %fptr157699 = inttoptr i64 %f157700 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157699(i64 %cont154828, i64 %arg155487, i64 %retprim154832); tail call
  ret void
}


define void @lam156017(i64 %env156018, i64 %_95154829, i64 %hWS$_95154601) {
  %envptr157701 = inttoptr i64 %env156018 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157702 = getelementptr inbounds i64, i64* %envptr157701, i64 3              ; &envptr157701[3]
  %cont154828 = load i64, i64* %envptr157702, align 8                                ; load; *envptr157702
  %envptr157703 = inttoptr i64 %env156018 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157704 = getelementptr inbounds i64, i64* %envptr157703, i64 2              ; &envptr157703[2]
  %BOl$f = load i64, i64* %envptr157704, align 8                                     ; load; *envptr157704
  %envptr157705 = inttoptr i64 %env156018 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157706 = getelementptr inbounds i64, i64* %envptr157705, i64 1              ; &envptr157705[1]
  %WlA$l = load i64, i64* %envptr157706, align 8                                     ; load; *envptr157706
  %a154715 = call i64 @prim_car(i64 %WlA$l)                                          ; call prim_car
  %a154716 = call i64 @prim_cdr(i64 %a154715)                                        ; call prim_cdr
  %cloptr157707 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157709 = getelementptr inbounds i64, i64* %cloptr157707, i64 1                ; &eptr157709[1]
  %eptr157710 = getelementptr inbounds i64, i64* %cloptr157707, i64 2                ; &eptr157710[2]
  %eptr157711 = getelementptr inbounds i64, i64* %cloptr157707, i64 3                ; &eptr157711[3]
  store i64 %WlA$l, i64* %eptr157709                                                 ; *eptr157709 = %WlA$l
  store i64 %BOl$f, i64* %eptr157710                                                 ; *eptr157710 = %BOl$f
  store i64 %cont154828, i64* %eptr157711                                            ; *eptr157711 = %cont154828
  %eptr157708 = getelementptr inbounds i64, i64* %cloptr157707, i64 0                ; &cloptr157707[0]
  %f157712 = ptrtoint void(i64,i64,i64)* @lam156015 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157712, i64* %eptr157708                                               ; store fptr
  %arg155478 = ptrtoint i64* %cloptr157707 to i64                                    ; closure cast; i64* -> i64
  %cloptr157713 = inttoptr i64 %a154716 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157714 = getelementptr inbounds i64, i64* %cloptr157713, i64 0               ; &cloptr157713[0]
  %f157716 = load i64, i64* %i0ptr157714, align 8                                    ; load; *i0ptr157714
  %fptr157715 = inttoptr i64 %f157716 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157715(i64 %a154716, i64 %arg155478)                ; tail call
  ret void
}


define void @lam156015(i64 %env156016, i64 %_95154830, i64 %i2Z$_95154602) {
  %envptr157717 = inttoptr i64 %env156016 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157718 = getelementptr inbounds i64, i64* %envptr157717, i64 3              ; &envptr157717[3]
  %cont154828 = load i64, i64* %envptr157718, align 8                                ; load; *envptr157718
  %envptr157719 = inttoptr i64 %env156016 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157720 = getelementptr inbounds i64, i64* %envptr157719, i64 2              ; &envptr157719[2]
  %BOl$f = load i64, i64* %envptr157720, align 8                                     ; load; *envptr157720
  %envptr157721 = inttoptr i64 %env156016 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157722 = getelementptr inbounds i64, i64* %envptr157721, i64 1              ; &envptr157721[1]
  %WlA$l = load i64, i64* %envptr157722, align 8                                     ; load; *envptr157722
  %arg155480 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154717 = call i64 @prim_vector_45ref(i64 %BOl$f, i64 %arg155480)                 ; call prim_vector_45ref
  %a154718 = call i64 @prim_cdr(i64 %WlA$l)                                          ; call prim_cdr
  %cloptr157723 = inttoptr i64 %a154717 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157724 = getelementptr inbounds i64, i64* %cloptr157723, i64 0               ; &cloptr157723[0]
  %f157726 = load i64, i64* %i0ptr157724, align 8                                    ; load; *i0ptr157724
  %fptr157725 = inttoptr i64 %f157726 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157725(i64 %a154717, i64 %cont154828, i64 %a154718) ; tail call
  ret void
}


define void @lam156009(i64 %env156010, i64 %_95154816, i64 %n3C$_95154599) {
  %envptr157727 = inttoptr i64 %env156010 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157728 = getelementptr inbounds i64, i64* %envptr157727, i64 4              ; &envptr157727[4]
  %cont154814 = load i64, i64* %envptr157728, align 8                                ; load; *envptr157728
  %envptr157729 = inttoptr i64 %env156010 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157730 = getelementptr inbounds i64, i64* %envptr157729, i64 3              ; &envptr157729[3]
  %gSD$tail = load i64, i64* %envptr157730, align 8                                  ; load; *envptr157730
  %envptr157731 = inttoptr i64 %env156010 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157732 = getelementptr inbounds i64, i64* %envptr157731, i64 2              ; &envptr157731[2]
  %STE$new = load i64, i64* %envptr157732, align 8                                   ; load; *envptr157732
  %envptr157733 = inttoptr i64 %env156010 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157734 = getelementptr inbounds i64, i64* %envptr157733, i64 1              ; &envptr157733[1]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157734, align 8                       ; load; *envptr157734
  %cloptr157735 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157736 = getelementptr inbounds i64, i64* %cloptr157735, i64 0                ; &cloptr157735[0]
  %f157737 = ptrtoint void(i64,i64)* @lam156007 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f157737, i64* %eptr157736                                               ; store fptr
  %arg155497 = ptrtoint i64* %cloptr157735 to i64                                    ; closure cast; i64* -> i64
  %cloptr157738 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr157740 = getelementptr inbounds i64, i64* %cloptr157738, i64 1                ; &eptr157740[1]
  %eptr157741 = getelementptr inbounds i64, i64* %cloptr157738, i64 2                ; &eptr157741[2]
  %eptr157742 = getelementptr inbounds i64, i64* %cloptr157738, i64 3                ; &eptr157742[3]
  %eptr157743 = getelementptr inbounds i64, i64* %cloptr157738, i64 4                ; &eptr157743[4]
  store i64 %bPZ$_37wind_45stack, i64* %eptr157740                                   ; *eptr157740 = %bPZ$_37wind_45stack
  store i64 %STE$new, i64* %eptr157741                                               ; *eptr157741 = %STE$new
  store i64 %gSD$tail, i64* %eptr157742                                              ; *eptr157742 = %gSD$tail
  store i64 %cont154814, i64* %eptr157743                                            ; *eptr157743 = %cont154814
  %eptr157739 = getelementptr inbounds i64, i64* %cloptr157738, i64 0                ; &cloptr157738[0]
  %f157744 = ptrtoint void(i64,i64,i64)* @lam156004 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157744, i64* %eptr157739                                               ; store fptr
  %arg155496 = ptrtoint i64* %cloptr157738 to i64                                    ; closure cast; i64* -> i64
  %cloptr157745 = inttoptr i64 %arg155497 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157746 = getelementptr inbounds i64, i64* %cloptr157745, i64 0               ; &cloptr157745[0]
  %f157748 = load i64, i64* %i0ptr157746, align 8                                    ; load; *i0ptr157746
  %fptr157747 = inttoptr i64 %f157748 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157747(i64 %arg155497, i64 %arg155496)              ; tail call
  ret void
}


define void @lam156007(i64 %env156008, i64 %M8Y$lst154826) {
  %cont154825 = call i64 @prim_car(i64 %M8Y$lst154826)                               ; call prim_car
  %M8Y$lst = call i64 @prim_cdr(i64 %M8Y$lst154826)                                  ; call prim_cdr
  %arg155501 = add i64 0, 0                                                          ; quoted ()
  %cloptr157749 = inttoptr i64 %cont154825 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157750 = getelementptr inbounds i64, i64* %cloptr157749, i64 0               ; &cloptr157749[0]
  %f157752 = load i64, i64* %i0ptr157750, align 8                                    ; load; *i0ptr157750
  %fptr157751 = inttoptr i64 %f157752 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157751(i64 %cont154825, i64 %arg155501, i64 %M8Y$lst); tail call
  ret void
}


define void @lam156004(i64 %env156005, i64 %_95154823, i64 %a154721) {
  %envptr157753 = inttoptr i64 %env156005 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157754 = getelementptr inbounds i64, i64* %envptr157753, i64 4              ; &envptr157753[4]
  %cont154814 = load i64, i64* %envptr157754, align 8                                ; load; *envptr157754
  %envptr157755 = inttoptr i64 %env156005 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157756 = getelementptr inbounds i64, i64* %envptr157755, i64 3              ; &envptr157755[3]
  %gSD$tail = load i64, i64* %envptr157756, align 8                                  ; load; *envptr157756
  %envptr157757 = inttoptr i64 %env156005 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157758 = getelementptr inbounds i64, i64* %envptr157757, i64 2              ; &envptr157757[2]
  %STE$new = load i64, i64* %envptr157758, align 8                                   ; load; *envptr157758
  %envptr157759 = inttoptr i64 %env156005 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157760 = getelementptr inbounds i64, i64* %envptr157759, i64 1              ; &envptr157759[1]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157760, align 8                       ; load; *envptr157760
  %arg155504 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim154824 = call i64 @prim_make_45vector(i64 %arg155504, i64 %a154721)        ; call prim_make_45vector
  %cloptr157761 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr157763 = getelementptr inbounds i64, i64* %cloptr157761, i64 1                ; &eptr157763[1]
  %eptr157764 = getelementptr inbounds i64, i64* %cloptr157761, i64 2                ; &eptr157764[2]
  %eptr157765 = getelementptr inbounds i64, i64* %cloptr157761, i64 3                ; &eptr157765[3]
  %eptr157766 = getelementptr inbounds i64, i64* %cloptr157761, i64 4                ; &eptr157766[4]
  store i64 %bPZ$_37wind_45stack, i64* %eptr157763                                   ; *eptr157763 = %bPZ$_37wind_45stack
  store i64 %STE$new, i64* %eptr157764                                               ; *eptr157764 = %STE$new
  store i64 %gSD$tail, i64* %eptr157765                                              ; *eptr157765 = %gSD$tail
  store i64 %cont154814, i64* %eptr157766                                            ; *eptr157766 = %cont154814
  %eptr157762 = getelementptr inbounds i64, i64* %cloptr157761, i64 0                ; &cloptr157761[0]
  %f157767 = ptrtoint void(i64,i64,i64)* @lam156001 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157767, i64* %eptr157762                                               ; store fptr
  %arg155507 = ptrtoint i64* %cloptr157761 to i64                                    ; closure cast; i64* -> i64
  %arg155506 = add i64 0, 0                                                          ; quoted ()
  %cloptr157768 = inttoptr i64 %arg155507 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157769 = getelementptr inbounds i64, i64* %cloptr157768, i64 0               ; &cloptr157768[0]
  %f157771 = load i64, i64* %i0ptr157769, align 8                                    ; load; *i0ptr157769
  %fptr157770 = inttoptr i64 %f157771 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157770(i64 %arg155507, i64 %arg155506, i64 %retprim154824); tail call
  ret void
}


define void @lam156001(i64 %env156002, i64 %_95154817, i64 %RVl$f) {
  %envptr157772 = inttoptr i64 %env156002 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157773 = getelementptr inbounds i64, i64* %envptr157772, i64 4              ; &envptr157772[4]
  %cont154814 = load i64, i64* %envptr157773, align 8                                ; load; *envptr157773
  %envptr157774 = inttoptr i64 %env156002 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157775 = getelementptr inbounds i64, i64* %envptr157774, i64 3              ; &envptr157774[3]
  %gSD$tail = load i64, i64* %envptr157775, align 8                                  ; load; *envptr157775
  %envptr157776 = inttoptr i64 %env156002 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157777 = getelementptr inbounds i64, i64* %envptr157776, i64 2              ; &envptr157776[2]
  %STE$new = load i64, i64* %envptr157777, align 8                                   ; load; *envptr157777
  %envptr157778 = inttoptr i64 %env156002 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157779 = getelementptr inbounds i64, i64* %envptr157778, i64 1              ; &envptr157778[1]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157779, align 8                       ; load; *envptr157779
  %arg155509 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr157780 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157782 = getelementptr inbounds i64, i64* %cloptr157780, i64 1                ; &eptr157782[1]
  %eptr157783 = getelementptr inbounds i64, i64* %cloptr157780, i64 2                ; &eptr157783[2]
  %eptr157784 = getelementptr inbounds i64, i64* %cloptr157780, i64 3                ; &eptr157784[3]
  store i64 %RVl$f, i64* %eptr157782                                                 ; *eptr157782 = %RVl$f
  store i64 %bPZ$_37wind_45stack, i64* %eptr157783                                   ; *eptr157783 = %bPZ$_37wind_45stack
  store i64 %gSD$tail, i64* %eptr157784                                              ; *eptr157784 = %gSD$tail
  %eptr157781 = getelementptr inbounds i64, i64* %cloptr157780, i64 0                ; &cloptr157780[0]
  %f157785 = ptrtoint void(i64,i64,i64)* @lam155998 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157785, i64* %eptr157781                                               ; store fptr
  %arg155508 = ptrtoint i64* %cloptr157780 to i64                                    ; closure cast; i64* -> i64
  %JHL$_95154603 = call i64 @prim_vector_45set_33(i64 %RVl$f, i64 %arg155509, i64 %arg155508); call prim_vector_45set_33
  %arg155533 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154728 = call i64 @prim_vector_45ref(i64 %RVl$f, i64 %arg155533)                 ; call prim_vector_45ref
  %cloptr157786 = inttoptr i64 %a154728 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157787 = getelementptr inbounds i64, i64* %cloptr157786, i64 0               ; &cloptr157786[0]
  %f157789 = load i64, i64* %i0ptr157787, align 8                                    ; load; *i0ptr157787
  %fptr157788 = inttoptr i64 %f157789 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157788(i64 %a154728, i64 %cont154814, i64 %STE$new) ; tail call
  ret void
}


define void @lam155998(i64 %env155999, i64 %cont154818, i64 %kjK$l) {
  %envptr157790 = inttoptr i64 %env155999 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157791 = getelementptr inbounds i64, i64* %envptr157790, i64 3              ; &envptr157790[3]
  %gSD$tail = load i64, i64* %envptr157791, align 8                                  ; load; *envptr157791
  %envptr157792 = inttoptr i64 %env155999 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157793 = getelementptr inbounds i64, i64* %envptr157792, i64 2              ; &envptr157792[2]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157793, align 8                       ; load; *envptr157793
  %envptr157794 = inttoptr i64 %env155999 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157795 = getelementptr inbounds i64, i64* %envptr157794, i64 1              ; &envptr157794[1]
  %RVl$f = load i64, i64* %envptr157795, align 8                                     ; load; *envptr157795
  %a154722 = call i64 @prim_eq_63(i64 %kjK$l, i64 %gSD$tail)                         ; call prim_eq_63
  %a154723 = call i64 @prim_not(i64 %a154722)                                        ; call prim_not
  %cmp157796 = icmp eq i64 %a154723, 15                                              ; false?
  br i1 %cmp157796, label %else157798, label %then157797                             ; if

then157797:
  %arg155514 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154724 = call i64 @prim_vector_45ref(i64 %RVl$f, i64 %arg155514)                 ; call prim_vector_45ref
  %a154725 = call i64 @prim_cdr(i64 %kjK$l)                                          ; call prim_cdr
  %cloptr157799 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157801 = getelementptr inbounds i64, i64* %cloptr157799, i64 1                ; &eptr157801[1]
  %eptr157802 = getelementptr inbounds i64, i64* %cloptr157799, i64 2                ; &eptr157802[2]
  %eptr157803 = getelementptr inbounds i64, i64* %cloptr157799, i64 3                ; &eptr157803[3]
  store i64 %bPZ$_37wind_45stack, i64* %eptr157801                                   ; *eptr157801 = %bPZ$_37wind_45stack
  store i64 %kjK$l, i64* %eptr157802                                                 ; *eptr157802 = %kjK$l
  store i64 %cont154818, i64* %eptr157803                                            ; *eptr157803 = %cont154818
  %eptr157800 = getelementptr inbounds i64, i64* %cloptr157799, i64 0                ; &cloptr157799[0]
  %f157804 = ptrtoint void(i64,i64,i64)* @lam155994 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157804, i64* %eptr157800                                               ; store fptr
  %arg155518 = ptrtoint i64* %cloptr157799 to i64                                    ; closure cast; i64* -> i64
  %cloptr157805 = inttoptr i64 %a154724 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157806 = getelementptr inbounds i64, i64* %cloptr157805, i64 0               ; &cloptr157805[0]
  %f157808 = load i64, i64* %i0ptr157806, align 8                                    ; load; *i0ptr157806
  %fptr157807 = inttoptr i64 %f157808 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157807(i64 %a154724, i64 %arg155518, i64 %a154725)  ; tail call
  ret void

else157798:
  %retprim154822 = call i64 @prim_void()                                             ; call prim_void
  %arg155531 = add i64 0, 0                                                          ; quoted ()
  %cloptr157809 = inttoptr i64 %cont154818 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157810 = getelementptr inbounds i64, i64* %cloptr157809, i64 0               ; &cloptr157809[0]
  %f157812 = load i64, i64* %i0ptr157810, align 8                                    ; load; *i0ptr157810
  %fptr157811 = inttoptr i64 %f157812 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157811(i64 %cont154818, i64 %arg155531, i64 %retprim154822); tail call
  ret void
}


define void @lam155994(i64 %env155995, i64 %_95154819, i64 %mgz$_95154604) {
  %envptr157813 = inttoptr i64 %env155995 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157814 = getelementptr inbounds i64, i64* %envptr157813, i64 3              ; &envptr157813[3]
  %cont154818 = load i64, i64* %envptr157814, align 8                                ; load; *envptr157814
  %envptr157815 = inttoptr i64 %env155995 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157816 = getelementptr inbounds i64, i64* %envptr157815, i64 2              ; &envptr157815[2]
  %kjK$l = load i64, i64* %envptr157816, align 8                                     ; load; *envptr157816
  %envptr157817 = inttoptr i64 %env155995 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157818 = getelementptr inbounds i64, i64* %envptr157817, i64 1              ; &envptr157817[1]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157818, align 8                       ; load; *envptr157818
  %a154726 = call i64 @prim_car(i64 %kjK$l)                                          ; call prim_car
  %a154727 = call i64 @prim_car(i64 %a154726)                                        ; call prim_car
  %cloptr157819 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr157821 = getelementptr inbounds i64, i64* %cloptr157819, i64 1                ; &eptr157821[1]
  %eptr157822 = getelementptr inbounds i64, i64* %cloptr157819, i64 2                ; &eptr157822[2]
  %eptr157823 = getelementptr inbounds i64, i64* %cloptr157819, i64 3                ; &eptr157823[3]
  store i64 %bPZ$_37wind_45stack, i64* %eptr157821                                   ; *eptr157821 = %bPZ$_37wind_45stack
  store i64 %kjK$l, i64* %eptr157822                                                 ; *eptr157822 = %kjK$l
  store i64 %cont154818, i64* %eptr157823                                            ; *eptr157823 = %cont154818
  %eptr157820 = getelementptr inbounds i64, i64* %cloptr157819, i64 0                ; &cloptr157819[0]
  %f157824 = ptrtoint void(i64,i64,i64)* @lam155992 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157824, i64* %eptr157820                                               ; store fptr
  %arg155522 = ptrtoint i64* %cloptr157819 to i64                                    ; closure cast; i64* -> i64
  %cloptr157825 = inttoptr i64 %a154727 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr157826 = getelementptr inbounds i64, i64* %cloptr157825, i64 0               ; &cloptr157825[0]
  %f157828 = load i64, i64* %i0ptr157826, align 8                                    ; load; *i0ptr157826
  %fptr157827 = inttoptr i64 %f157828 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157827(i64 %a154727, i64 %arg155522)                ; tail call
  ret void
}


define void @lam155992(i64 %env155993, i64 %_95154820, i64 %lFN$_95154605) {
  %envptr157829 = inttoptr i64 %env155993 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157830 = getelementptr inbounds i64, i64* %envptr157829, i64 3              ; &envptr157829[3]
  %cont154818 = load i64, i64* %envptr157830, align 8                                ; load; *envptr157830
  %envptr157831 = inttoptr i64 %env155993 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157832 = getelementptr inbounds i64, i64* %envptr157831, i64 2              ; &envptr157831[2]
  %kjK$l = load i64, i64* %envptr157832, align 8                                     ; load; *envptr157832
  %envptr157833 = inttoptr i64 %env155993 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157834 = getelementptr inbounds i64, i64* %envptr157833, i64 1              ; &envptr157833[1]
  %bPZ$_37wind_45stack = load i64, i64* %envptr157834, align 8                       ; load; *envptr157834
  %arg155525 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154821 = call i64 @prim_vector_45set_33(i64 %bPZ$_37wind_45stack, i64 %arg155525, i64 %kjK$l); call prim_vector_45set_33
  %arg155528 = add i64 0, 0                                                          ; quoted ()
  %cloptr157835 = inttoptr i64 %cont154818 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157836 = getelementptr inbounds i64, i64* %cloptr157835, i64 0               ; &cloptr157835[0]
  %f157838 = load i64, i64* %i0ptr157836, align 8                                    ; load; *i0ptr157836
  %fptr157837 = inttoptr i64 %f157838 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157837(i64 %cont154818, i64 %arg155528, i64 %retprim154821); tail call
  ret void
}


define void @lam155985(i64 %env155986, i64 %RS3$lst154844) {
  %cont154843 = call i64 @prim_car(i64 %RS3$lst154844)                               ; call prim_car
  %RS3$lst = call i64 @prim_cdr(i64 %RS3$lst154844)                                  ; call prim_cdr
  %arg155543 = add i64 0, 0                                                          ; quoted ()
  %cloptr157839 = inttoptr i64 %cont154843 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157840 = getelementptr inbounds i64, i64* %cloptr157839, i64 0               ; &cloptr157839[0]
  %f157842 = load i64, i64* %i0ptr157840, align 8                                    ; load; *i0ptr157840
  %fptr157841 = inttoptr i64 %f157842 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157841(i64 %cont154843, i64 %arg155543, i64 %RS3$lst); tail call
  ret void
}


define void @lam155982(i64 %env155983, i64 %_95154841, i64 %a154729) {
  %arg155546 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim154842 = call i64 @prim_make_45vector(i64 %arg155546, i64 %a154729)        ; call prim_make_45vector
  %cloptr157843 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157844 = getelementptr inbounds i64, i64* %cloptr157843, i64 0                ; &cloptr157843[0]
  %f157845 = ptrtoint void(i64,i64,i64)* @lam155979 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157845, i64* %eptr157844                                               ; store fptr
  %arg155549 = ptrtoint i64* %cloptr157843 to i64                                    ; closure cast; i64* -> i64
  %arg155548 = add i64 0, 0                                                          ; quoted ()
  %cloptr157846 = inttoptr i64 %arg155549 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157847 = getelementptr inbounds i64, i64* %cloptr157846, i64 0               ; &cloptr157846[0]
  %f157849 = load i64, i64* %i0ptr157847, align 8                                    ; load; *i0ptr157847
  %fptr157848 = inttoptr i64 %f157849 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157848(i64 %arg155549, i64 %arg155548, i64 %retprim154842); tail call
  ret void
}


define void @lam155979(i64 %env155980, i64 %_95154837, i64 %boq$v) {
  %arg155551 = call i64 @const_init_int(i64 2)                                       ; quoted int
  %arg155550 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154730 = call i64 @prim_make_45vector(i64 %arg155551, i64 %arg155550)            ; call prim_make_45vector
  %arg155553 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim154840 = call i64 @prim_vector_45set_33(i64 %boq$v, i64 %arg155553, i64 %a154730); call prim_vector_45set_33
  %cloptr157850 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr157852 = getelementptr inbounds i64, i64* %cloptr157850, i64 1                ; &eptr157852[1]
  store i64 %boq$v, i64* %eptr157852                                                 ; *eptr157852 = %boq$v
  %eptr157851 = getelementptr inbounds i64, i64* %cloptr157850, i64 0                ; &cloptr157850[0]
  %f157853 = ptrtoint void(i64,i64,i64)* @lam155974 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157853, i64* %eptr157851                                               ; store fptr
  %arg155557 = ptrtoint i64* %cloptr157850 to i64                                    ; closure cast; i64* -> i64
  %arg155556 = add i64 0, 0                                                          ; quoted ()
  %cloptr157854 = inttoptr i64 %arg155557 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157855 = getelementptr inbounds i64, i64* %cloptr157854, i64 0               ; &cloptr157854[0]
  %f157857 = load i64, i64* %i0ptr157855, align 8                                    ; load; *i0ptr157855
  %fptr157856 = inttoptr i64 %f157857 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157856(i64 %arg155557, i64 %arg155556, i64 %retprim154840); tail call
  ret void
}


define void @lam155974(i64 %env155975, i64 %_95154838, i64 %kcT$_95154606) {
  %envptr157858 = inttoptr i64 %env155975 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157859 = getelementptr inbounds i64, i64* %envptr157858, i64 1              ; &envptr157858[1]
  %boq$v = load i64, i64* %envptr157859, align 8                                     ; load; *envptr157859
  %arg155558 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154731 = call i64 @prim_vector_45ref(i64 %boq$v, i64 %arg155558)                 ; call prim_vector_45ref
  %arg155561 = call i64 @const_init_int(i64 2)                                       ; quoted int
  %arg155560 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim154839 = call i64 @prim_vector_45set_33(i64 %a154731, i64 %arg155561, i64 %arg155560); call prim_vector_45set_33
  %cloptr157860 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157861 = getelementptr inbounds i64, i64* %cloptr157860, i64 0                ; &cloptr157860[0]
  %f157862 = ptrtoint void(i64,i64,i64)* @lam155969 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157862, i64* %eptr157861                                               ; store fptr
  %arg155565 = ptrtoint i64* %cloptr157860 to i64                                    ; closure cast; i64* -> i64
  %arg155564 = add i64 0, 0                                                          ; quoted ()
  %cloptr157863 = inttoptr i64 %arg155565 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157864 = getelementptr inbounds i64, i64* %cloptr157863, i64 0               ; &cloptr157863[0]
  %f157866 = load i64, i64* %i0ptr157864, align 8                                    ; load; *i0ptr157864
  %fptr157865 = inttoptr i64 %f157866 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157865(i64 %arg155565, i64 %arg155564, i64 %retprim154839); tail call
  ret void
}


define void @lam155969(i64 %env155970, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr157867 = inttoptr i64 %_951 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr157868 = getelementptr inbounds i64, i64* %cloptr157867, i64 0               ; &cloptr157867[0]
  %f157870 = load i64, i64* %i0ptr157868, align 8                                    ; load; *i0ptr157868
  %fptr157869 = inttoptr i64 %f157870 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157869(i64 %_951, i64 %_951)                        ; tail call
  ret void
}


define void @lam155959(i64 %env155960, i64 %cont154859, i64 %L5o$_37foldl) {
  %envptr157871 = inttoptr i64 %env155960 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157872 = getelementptr inbounds i64, i64* %envptr157871, i64 3              ; &envptr157871[3]
  %eN1$_37foldr = load i64, i64* %envptr157872, align 8                              ; load; *envptr157872
  %envptr157873 = inttoptr i64 %env155960 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157874 = getelementptr inbounds i64, i64* %envptr157873, i64 2              ; &envptr157873[2]
  %e2X$_37foldr1 = load i64, i64* %envptr157874, align 8                             ; load; *envptr157874
  %envptr157875 = inttoptr i64 %env155960 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157876 = getelementptr inbounds i64, i64* %envptr157875, i64 1              ; &envptr157875[1]
  %KWI$_37map1 = load i64, i64* %envptr157876, align 8                               ; load; *envptr157876
  %arg155570 = add i64 0, 0                                                          ; quoted ()
  %cloptr157877 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr157879 = getelementptr inbounds i64, i64* %cloptr157877, i64 1                ; &eptr157879[1]
  %eptr157880 = getelementptr inbounds i64, i64* %cloptr157877, i64 2                ; &eptr157880[2]
  %eptr157881 = getelementptr inbounds i64, i64* %cloptr157877, i64 3                ; &eptr157881[3]
  %eptr157882 = getelementptr inbounds i64, i64* %cloptr157877, i64 4                ; &eptr157882[4]
  store i64 %L5o$_37foldl, i64* %eptr157879                                          ; *eptr157879 = %L5o$_37foldl
  store i64 %KWI$_37map1, i64* %eptr157880                                           ; *eptr157880 = %KWI$_37map1
  store i64 %e2X$_37foldr1, i64* %eptr157881                                         ; *eptr157881 = %e2X$_37foldr1
  store i64 %eN1$_37foldr, i64* %eptr157882                                          ; *eptr157882 = %eN1$_37foldr
  %eptr157878 = getelementptr inbounds i64, i64* %cloptr157877, i64 0                ; &cloptr157877[0]
  %f157883 = ptrtoint void(i64,i64)* @lam155956 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f157883, i64* %eptr157878                                               ; store fptr
  %arg155569 = ptrtoint i64* %cloptr157877 to i64                                    ; closure cast; i64* -> i64
  %cloptr157884 = inttoptr i64 %cont154859 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157885 = getelementptr inbounds i64, i64* %cloptr157884, i64 0               ; &cloptr157884[0]
  %f157887 = load i64, i64* %i0ptr157885, align 8                                    ; load; *i0ptr157885
  %fptr157886 = inttoptr i64 %f157887 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157886(i64 %cont154859, i64 %arg155570, i64 %arg155569); tail call
  ret void
}


define void @lam155956(i64 %env155957, i64 %sww$args154861) {
  %envptr157888 = inttoptr i64 %env155957 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157889 = getelementptr inbounds i64, i64* %envptr157888, i64 4              ; &envptr157888[4]
  %eN1$_37foldr = load i64, i64* %envptr157889, align 8                              ; load; *envptr157889
  %envptr157890 = inttoptr i64 %env155957 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157891 = getelementptr inbounds i64, i64* %envptr157890, i64 3              ; &envptr157890[3]
  %e2X$_37foldr1 = load i64, i64* %envptr157891, align 8                             ; load; *envptr157891
  %envptr157892 = inttoptr i64 %env155957 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157893 = getelementptr inbounds i64, i64* %envptr157892, i64 2              ; &envptr157892[2]
  %KWI$_37map1 = load i64, i64* %envptr157893, align 8                               ; load; *envptr157893
  %envptr157894 = inttoptr i64 %env155957 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157895 = getelementptr inbounds i64, i64* %envptr157894, i64 1              ; &envptr157894[1]
  %L5o$_37foldl = load i64, i64* %envptr157895, align 8                              ; load; *envptr157895
  %cont154860 = call i64 @prim_car(i64 %sww$args154861)                              ; call prim_car
  %sww$args = call i64 @prim_cdr(i64 %sww$args154861)                                ; call prim_cdr
  %LJO$f = call i64 @prim_car(i64 %sww$args)                                         ; call prim_car
  %a154647 = call i64 @prim_cdr(i64 %sww$args)                                       ; call prim_cdr
  %retprim154880 = call i64 @prim_car(i64 %a154647)                                  ; call prim_car
  %cloptr157896 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr157898 = getelementptr inbounds i64, i64* %cloptr157896, i64 1                ; &eptr157898[1]
  %eptr157899 = getelementptr inbounds i64, i64* %cloptr157896, i64 2                ; &eptr157899[2]
  %eptr157900 = getelementptr inbounds i64, i64* %cloptr157896, i64 3                ; &eptr157900[3]
  %eptr157901 = getelementptr inbounds i64, i64* %cloptr157896, i64 4                ; &eptr157901[4]
  %eptr157902 = getelementptr inbounds i64, i64* %cloptr157896, i64 5                ; &eptr157902[5]
  %eptr157903 = getelementptr inbounds i64, i64* %cloptr157896, i64 6                ; &eptr157903[6]
  %eptr157904 = getelementptr inbounds i64, i64* %cloptr157896, i64 7                ; &eptr157904[7]
  store i64 %sww$args, i64* %eptr157898                                              ; *eptr157898 = %sww$args
  store i64 %L5o$_37foldl, i64* %eptr157899                                          ; *eptr157899 = %L5o$_37foldl
  store i64 %KWI$_37map1, i64* %eptr157900                                           ; *eptr157900 = %KWI$_37map1
  store i64 %e2X$_37foldr1, i64* %eptr157901                                         ; *eptr157901 = %e2X$_37foldr1
  store i64 %LJO$f, i64* %eptr157902                                                 ; *eptr157902 = %LJO$f
  store i64 %cont154860, i64* %eptr157903                                            ; *eptr157903 = %cont154860
  store i64 %eN1$_37foldr, i64* %eptr157904                                          ; *eptr157904 = %eN1$_37foldr
  %eptr157897 = getelementptr inbounds i64, i64* %cloptr157896, i64 0                ; &cloptr157896[0]
  %f157905 = ptrtoint void(i64,i64,i64)* @lam155954 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157905, i64* %eptr157897                                               ; store fptr
  %arg155579 = ptrtoint i64* %cloptr157896 to i64                                    ; closure cast; i64* -> i64
  %arg155578 = add i64 0, 0                                                          ; quoted ()
  %cloptr157906 = inttoptr i64 %arg155579 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157907 = getelementptr inbounds i64, i64* %cloptr157906, i64 0               ; &cloptr157906[0]
  %f157909 = load i64, i64* %i0ptr157907, align 8                                    ; load; *i0ptr157907
  %fptr157908 = inttoptr i64 %f157909 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157908(i64 %arg155579, i64 %arg155578, i64 %retprim154880); tail call
  ret void
}


define void @lam155954(i64 %env155955, i64 %_95154862, i64 %oa0$acc) {
  %envptr157910 = inttoptr i64 %env155955 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157911 = getelementptr inbounds i64, i64* %envptr157910, i64 7              ; &envptr157910[7]
  %eN1$_37foldr = load i64, i64* %envptr157911, align 8                              ; load; *envptr157911
  %envptr157912 = inttoptr i64 %env155955 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157913 = getelementptr inbounds i64, i64* %envptr157912, i64 6              ; &envptr157912[6]
  %cont154860 = load i64, i64* %envptr157913, align 8                                ; load; *envptr157913
  %envptr157914 = inttoptr i64 %env155955 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157915 = getelementptr inbounds i64, i64* %envptr157914, i64 5              ; &envptr157914[5]
  %LJO$f = load i64, i64* %envptr157915, align 8                                     ; load; *envptr157915
  %envptr157916 = inttoptr i64 %env155955 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157917 = getelementptr inbounds i64, i64* %envptr157916, i64 4              ; &envptr157916[4]
  %e2X$_37foldr1 = load i64, i64* %envptr157917, align 8                             ; load; *envptr157917
  %envptr157918 = inttoptr i64 %env155955 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157919 = getelementptr inbounds i64, i64* %envptr157918, i64 3              ; &envptr157918[3]
  %KWI$_37map1 = load i64, i64* %envptr157919, align 8                               ; load; *envptr157919
  %envptr157920 = inttoptr i64 %env155955 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157921 = getelementptr inbounds i64, i64* %envptr157920, i64 2              ; &envptr157920[2]
  %L5o$_37foldl = load i64, i64* %envptr157921, align 8                              ; load; *envptr157921
  %envptr157922 = inttoptr i64 %env155955 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157923 = getelementptr inbounds i64, i64* %envptr157922, i64 1              ; &envptr157922[1]
  %sww$args = load i64, i64* %envptr157923, align 8                                  ; load; *envptr157923
  %a154648 = call i64 @prim_cdr(i64 %sww$args)                                       ; call prim_cdr
  %retprim154879 = call i64 @prim_cdr(i64 %a154648)                                  ; call prim_cdr
  %cloptr157924 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr157926 = getelementptr inbounds i64, i64* %cloptr157924, i64 1                ; &eptr157926[1]
  %eptr157927 = getelementptr inbounds i64, i64* %cloptr157924, i64 2                ; &eptr157927[2]
  %eptr157928 = getelementptr inbounds i64, i64* %cloptr157924, i64 3                ; &eptr157928[3]
  %eptr157929 = getelementptr inbounds i64, i64* %cloptr157924, i64 4                ; &eptr157929[4]
  %eptr157930 = getelementptr inbounds i64, i64* %cloptr157924, i64 5                ; &eptr157930[5]
  %eptr157931 = getelementptr inbounds i64, i64* %cloptr157924, i64 6                ; &eptr157931[6]
  %eptr157932 = getelementptr inbounds i64, i64* %cloptr157924, i64 7                ; &eptr157932[7]
  store i64 %L5o$_37foldl, i64* %eptr157926                                          ; *eptr157926 = %L5o$_37foldl
  store i64 %oa0$acc, i64* %eptr157927                                               ; *eptr157927 = %oa0$acc
  store i64 %KWI$_37map1, i64* %eptr157928                                           ; *eptr157928 = %KWI$_37map1
  store i64 %e2X$_37foldr1, i64* %eptr157929                                         ; *eptr157929 = %e2X$_37foldr1
  store i64 %LJO$f, i64* %eptr157930                                                 ; *eptr157930 = %LJO$f
  store i64 %cont154860, i64* %eptr157931                                            ; *eptr157931 = %cont154860
  store i64 %eN1$_37foldr, i64* %eptr157932                                          ; *eptr157932 = %eN1$_37foldr
  %eptr157925 = getelementptr inbounds i64, i64* %cloptr157924, i64 0                ; &cloptr157924[0]
  %f157933 = ptrtoint void(i64,i64,i64)* @lam155952 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157933, i64* %eptr157925                                               ; store fptr
  %arg155584 = ptrtoint i64* %cloptr157924 to i64                                    ; closure cast; i64* -> i64
  %arg155583 = add i64 0, 0                                                          ; quoted ()
  %cloptr157934 = inttoptr i64 %arg155584 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr157935 = getelementptr inbounds i64, i64* %cloptr157934, i64 0               ; &cloptr157934[0]
  %f157937 = load i64, i64* %i0ptr157935, align 8                                    ; load; *i0ptr157935
  %fptr157936 = inttoptr i64 %f157937 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157936(i64 %arg155584, i64 %arg155583, i64 %retprim154879); tail call
  ret void
}


define void @lam155952(i64 %env155953, i64 %_95154863, i64 %A0v$lsts) {
  %envptr157938 = inttoptr i64 %env155953 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157939 = getelementptr inbounds i64, i64* %envptr157938, i64 7              ; &envptr157938[7]
  %eN1$_37foldr = load i64, i64* %envptr157939, align 8                              ; load; *envptr157939
  %envptr157940 = inttoptr i64 %env155953 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157941 = getelementptr inbounds i64, i64* %envptr157940, i64 6              ; &envptr157940[6]
  %cont154860 = load i64, i64* %envptr157941, align 8                                ; load; *envptr157941
  %envptr157942 = inttoptr i64 %env155953 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157943 = getelementptr inbounds i64, i64* %envptr157942, i64 5              ; &envptr157942[5]
  %LJO$f = load i64, i64* %envptr157943, align 8                                     ; load; *envptr157943
  %envptr157944 = inttoptr i64 %env155953 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157945 = getelementptr inbounds i64, i64* %envptr157944, i64 4              ; &envptr157944[4]
  %e2X$_37foldr1 = load i64, i64* %envptr157945, align 8                             ; load; *envptr157945
  %envptr157946 = inttoptr i64 %env155953 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157947 = getelementptr inbounds i64, i64* %envptr157946, i64 3              ; &envptr157946[3]
  %KWI$_37map1 = load i64, i64* %envptr157947, align 8                               ; load; *envptr157947
  %envptr157948 = inttoptr i64 %env155953 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157949 = getelementptr inbounds i64, i64* %envptr157948, i64 2              ; &envptr157948[2]
  %oa0$acc = load i64, i64* %envptr157949, align 8                                   ; load; *envptr157949
  %envptr157950 = inttoptr i64 %env155953 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157951 = getelementptr inbounds i64, i64* %envptr157950, i64 1              ; &envptr157950[1]
  %L5o$_37foldl = load i64, i64* %envptr157951, align 8                              ; load; *envptr157951
  %cloptr157952 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr157954 = getelementptr inbounds i64, i64* %cloptr157952, i64 1                ; &eptr157954[1]
  %eptr157955 = getelementptr inbounds i64, i64* %cloptr157952, i64 2                ; &eptr157955[2]
  %eptr157956 = getelementptr inbounds i64, i64* %cloptr157952, i64 3                ; &eptr157956[3]
  %eptr157957 = getelementptr inbounds i64, i64* %cloptr157952, i64 4                ; &eptr157957[4]
  %eptr157958 = getelementptr inbounds i64, i64* %cloptr157952, i64 5                ; &eptr157958[5]
  %eptr157959 = getelementptr inbounds i64, i64* %cloptr157952, i64 6                ; &eptr157959[6]
  %eptr157960 = getelementptr inbounds i64, i64* %cloptr157952, i64 7                ; &eptr157960[7]
  store i64 %L5o$_37foldl, i64* %eptr157954                                          ; *eptr157954 = %L5o$_37foldl
  store i64 %A0v$lsts, i64* %eptr157955                                              ; *eptr157955 = %A0v$lsts
  store i64 %oa0$acc, i64* %eptr157956                                               ; *eptr157956 = %oa0$acc
  store i64 %KWI$_37map1, i64* %eptr157957                                           ; *eptr157957 = %KWI$_37map1
  store i64 %LJO$f, i64* %eptr157958                                                 ; *eptr157958 = %LJO$f
  store i64 %cont154860, i64* %eptr157959                                            ; *eptr157959 = %cont154860
  store i64 %eN1$_37foldr, i64* %eptr157960                                          ; *eptr157960 = %eN1$_37foldr
  %eptr157953 = getelementptr inbounds i64, i64* %cloptr157952, i64 0                ; &cloptr157952[0]
  %f157961 = ptrtoint void(i64,i64,i64)* @lam155950 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157961, i64* %eptr157953                                               ; store fptr
  %arg155588 = ptrtoint i64* %cloptr157952 to i64                                    ; closure cast; i64* -> i64
  %cloptr157962 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr157963 = getelementptr inbounds i64, i64* %cloptr157962, i64 0                ; &cloptr157962[0]
  %f157964 = ptrtoint void(i64,i64,i64,i64)* @lam155929 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f157964, i64* %eptr157963                                               ; store fptr
  %arg155587 = ptrtoint i64* %cloptr157962 to i64                                    ; closure cast; i64* -> i64
  %arg155586 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr157965 = inttoptr i64 %e2X$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr157966 = getelementptr inbounds i64, i64* %cloptr157965, i64 0               ; &cloptr157965[0]
  %f157968 = load i64, i64* %i0ptr157966, align 8                                    ; load; *i0ptr157966
  %fptr157967 = inttoptr i64 %f157968 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157967(i64 %e2X$_37foldr1, i64 %arg155588, i64 %arg155587, i64 %arg155586, i64 %A0v$lsts); tail call
  ret void
}


define void @lam155950(i64 %env155951, i64 %_95154864, i64 %a154649) {
  %envptr157969 = inttoptr i64 %env155951 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157970 = getelementptr inbounds i64, i64* %envptr157969, i64 7              ; &envptr157969[7]
  %eN1$_37foldr = load i64, i64* %envptr157970, align 8                              ; load; *envptr157970
  %envptr157971 = inttoptr i64 %env155951 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157972 = getelementptr inbounds i64, i64* %envptr157971, i64 6              ; &envptr157971[6]
  %cont154860 = load i64, i64* %envptr157972, align 8                                ; load; *envptr157972
  %envptr157973 = inttoptr i64 %env155951 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157974 = getelementptr inbounds i64, i64* %envptr157973, i64 5              ; &envptr157973[5]
  %LJO$f = load i64, i64* %envptr157974, align 8                                     ; load; *envptr157974
  %envptr157975 = inttoptr i64 %env155951 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157976 = getelementptr inbounds i64, i64* %envptr157975, i64 4              ; &envptr157975[4]
  %KWI$_37map1 = load i64, i64* %envptr157976, align 8                               ; load; *envptr157976
  %envptr157977 = inttoptr i64 %env155951 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157978 = getelementptr inbounds i64, i64* %envptr157977, i64 3              ; &envptr157977[3]
  %oa0$acc = load i64, i64* %envptr157978, align 8                                   ; load; *envptr157978
  %envptr157979 = inttoptr i64 %env155951 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157980 = getelementptr inbounds i64, i64* %envptr157979, i64 2              ; &envptr157979[2]
  %A0v$lsts = load i64, i64* %envptr157980, align 8                                  ; load; *envptr157980
  %envptr157981 = inttoptr i64 %env155951 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr157982 = getelementptr inbounds i64, i64* %envptr157981, i64 1              ; &envptr157981[1]
  %L5o$_37foldl = load i64, i64* %envptr157982, align 8                              ; load; *envptr157982
  %cmp157983 = icmp eq i64 %a154649, 15                                              ; false?
  br i1 %cmp157983, label %else157985, label %then157984                             ; if

then157984:
  %arg155591 = add i64 0, 0                                                          ; quoted ()
  %cloptr157986 = inttoptr i64 %cont154860 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr157987 = getelementptr inbounds i64, i64* %cloptr157986, i64 0               ; &cloptr157986[0]
  %f157989 = load i64, i64* %i0ptr157987, align 8                                    ; load; *i0ptr157987
  %fptr157988 = inttoptr i64 %f157989 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr157988(i64 %cont154860, i64 %arg155591, i64 %oa0$acc); tail call
  ret void

else157985:
  %cloptr157990 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr157992 = getelementptr inbounds i64, i64* %cloptr157990, i64 1                ; &eptr157992[1]
  %eptr157993 = getelementptr inbounds i64, i64* %cloptr157990, i64 2                ; &eptr157993[2]
  %eptr157994 = getelementptr inbounds i64, i64* %cloptr157990, i64 3                ; &eptr157994[3]
  %eptr157995 = getelementptr inbounds i64, i64* %cloptr157990, i64 4                ; &eptr157995[4]
  %eptr157996 = getelementptr inbounds i64, i64* %cloptr157990, i64 5                ; &eptr157996[5]
  %eptr157997 = getelementptr inbounds i64, i64* %cloptr157990, i64 6                ; &eptr157997[6]
  %eptr157998 = getelementptr inbounds i64, i64* %cloptr157990, i64 7                ; &eptr157998[7]
  store i64 %L5o$_37foldl, i64* %eptr157992                                          ; *eptr157992 = %L5o$_37foldl
  store i64 %A0v$lsts, i64* %eptr157993                                              ; *eptr157993 = %A0v$lsts
  store i64 %oa0$acc, i64* %eptr157994                                               ; *eptr157994 = %oa0$acc
  store i64 %KWI$_37map1, i64* %eptr157995                                           ; *eptr157995 = %KWI$_37map1
  store i64 %LJO$f, i64* %eptr157996                                                 ; *eptr157996 = %LJO$f
  store i64 %cont154860, i64* %eptr157997                                            ; *eptr157997 = %cont154860
  store i64 %eN1$_37foldr, i64* %eptr157998                                          ; *eptr157998 = %eN1$_37foldr
  %eptr157991 = getelementptr inbounds i64, i64* %cloptr157990, i64 0                ; &cloptr157990[0]
  %f157999 = ptrtoint void(i64,i64,i64)* @lam155948 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f157999, i64* %eptr157991                                               ; store fptr
  %arg155595 = ptrtoint i64* %cloptr157990 to i64                                    ; closure cast; i64* -> i64
  %cloptr158000 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158001 = getelementptr inbounds i64, i64* %cloptr158000, i64 0                ; &cloptr158000[0]
  %f158002 = ptrtoint void(i64,i64,i64)* @lam155933 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158002, i64* %eptr158001                                               ; store fptr
  %arg155594 = ptrtoint i64* %cloptr158000 to i64                                    ; closure cast; i64* -> i64
  %cloptr158003 = inttoptr i64 %KWI$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr158004 = getelementptr inbounds i64, i64* %cloptr158003, i64 0               ; &cloptr158003[0]
  %f158006 = load i64, i64* %i0ptr158004, align 8                                    ; load; *i0ptr158004
  %fptr158005 = inttoptr i64 %f158006 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158005(i64 %KWI$_37map1, i64 %arg155595, i64 %arg155594, i64 %A0v$lsts); tail call
  ret void
}


define void @lam155948(i64 %env155949, i64 %_95154865, i64 %qSp$lsts_43) {
  %envptr158007 = inttoptr i64 %env155949 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158008 = getelementptr inbounds i64, i64* %envptr158007, i64 7              ; &envptr158007[7]
  %eN1$_37foldr = load i64, i64* %envptr158008, align 8                              ; load; *envptr158008
  %envptr158009 = inttoptr i64 %env155949 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158010 = getelementptr inbounds i64, i64* %envptr158009, i64 6              ; &envptr158009[6]
  %cont154860 = load i64, i64* %envptr158010, align 8                                ; load; *envptr158010
  %envptr158011 = inttoptr i64 %env155949 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158012 = getelementptr inbounds i64, i64* %envptr158011, i64 5              ; &envptr158011[5]
  %LJO$f = load i64, i64* %envptr158012, align 8                                     ; load; *envptr158012
  %envptr158013 = inttoptr i64 %env155949 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158014 = getelementptr inbounds i64, i64* %envptr158013, i64 4              ; &envptr158013[4]
  %KWI$_37map1 = load i64, i64* %envptr158014, align 8                               ; load; *envptr158014
  %envptr158015 = inttoptr i64 %env155949 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158016 = getelementptr inbounds i64, i64* %envptr158015, i64 3              ; &envptr158015[3]
  %oa0$acc = load i64, i64* %envptr158016, align 8                                   ; load; *envptr158016
  %envptr158017 = inttoptr i64 %env155949 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158018 = getelementptr inbounds i64, i64* %envptr158017, i64 2              ; &envptr158017[2]
  %A0v$lsts = load i64, i64* %envptr158018, align 8                                  ; load; *envptr158018
  %envptr158019 = inttoptr i64 %env155949 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158020 = getelementptr inbounds i64, i64* %envptr158019, i64 1              ; &envptr158019[1]
  %L5o$_37foldl = load i64, i64* %envptr158020, align 8                              ; load; *envptr158020
  %cloptr158021 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr158023 = getelementptr inbounds i64, i64* %cloptr158021, i64 1                ; &eptr158023[1]
  %eptr158024 = getelementptr inbounds i64, i64* %cloptr158021, i64 2                ; &eptr158024[2]
  %eptr158025 = getelementptr inbounds i64, i64* %cloptr158021, i64 3                ; &eptr158025[3]
  %eptr158026 = getelementptr inbounds i64, i64* %cloptr158021, i64 4                ; &eptr158026[4]
  %eptr158027 = getelementptr inbounds i64, i64* %cloptr158021, i64 5                ; &eptr158027[5]
  %eptr158028 = getelementptr inbounds i64, i64* %cloptr158021, i64 6                ; &eptr158028[6]
  store i64 %L5o$_37foldl, i64* %eptr158023                                          ; *eptr158023 = %L5o$_37foldl
  store i64 %oa0$acc, i64* %eptr158024                                               ; *eptr158024 = %oa0$acc
  store i64 %LJO$f, i64* %eptr158025                                                 ; *eptr158025 = %LJO$f
  store i64 %cont154860, i64* %eptr158026                                            ; *eptr158026 = %cont154860
  store i64 %qSp$lsts_43, i64* %eptr158027                                           ; *eptr158027 = %qSp$lsts_43
  store i64 %eN1$_37foldr, i64* %eptr158028                                          ; *eptr158028 = %eN1$_37foldr
  %eptr158022 = getelementptr inbounds i64, i64* %cloptr158021, i64 0                ; &cloptr158021[0]
  %f158029 = ptrtoint void(i64,i64,i64)* @lam155946 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158029, i64* %eptr158022                                               ; store fptr
  %arg155599 = ptrtoint i64* %cloptr158021 to i64                                    ; closure cast; i64* -> i64
  %cloptr158030 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158031 = getelementptr inbounds i64, i64* %cloptr158030, i64 0                ; &cloptr158030[0]
  %f158032 = ptrtoint void(i64,i64,i64)* @lam155936 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158032, i64* %eptr158031                                               ; store fptr
  %arg155598 = ptrtoint i64* %cloptr158030 to i64                                    ; closure cast; i64* -> i64
  %cloptr158033 = inttoptr i64 %KWI$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr158034 = getelementptr inbounds i64, i64* %cloptr158033, i64 0               ; &cloptr158033[0]
  %f158036 = load i64, i64* %i0ptr158034, align 8                                    ; load; *i0ptr158034
  %fptr158035 = inttoptr i64 %f158036 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158035(i64 %KWI$_37map1, i64 %arg155599, i64 %arg155598, i64 %A0v$lsts); tail call
  ret void
}


define void @lam155946(i64 %env155947, i64 %_95154866, i64 %Rkz$vs) {
  %envptr158037 = inttoptr i64 %env155947 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158038 = getelementptr inbounds i64, i64* %envptr158037, i64 6              ; &envptr158037[6]
  %eN1$_37foldr = load i64, i64* %envptr158038, align 8                              ; load; *envptr158038
  %envptr158039 = inttoptr i64 %env155947 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158040 = getelementptr inbounds i64, i64* %envptr158039, i64 5              ; &envptr158039[5]
  %qSp$lsts_43 = load i64, i64* %envptr158040, align 8                               ; load; *envptr158040
  %envptr158041 = inttoptr i64 %env155947 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158042 = getelementptr inbounds i64, i64* %envptr158041, i64 4              ; &envptr158041[4]
  %cont154860 = load i64, i64* %envptr158042, align 8                                ; load; *envptr158042
  %envptr158043 = inttoptr i64 %env155947 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158044 = getelementptr inbounds i64, i64* %envptr158043, i64 3              ; &envptr158043[3]
  %LJO$f = load i64, i64* %envptr158044, align 8                                     ; load; *envptr158044
  %envptr158045 = inttoptr i64 %env155947 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158046 = getelementptr inbounds i64, i64* %envptr158045, i64 2              ; &envptr158045[2]
  %oa0$acc = load i64, i64* %envptr158046, align 8                                   ; load; *envptr158046
  %envptr158047 = inttoptr i64 %env155947 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158048 = getelementptr inbounds i64, i64* %envptr158047, i64 1              ; &envptr158047[1]
  %L5o$_37foldl = load i64, i64* %envptr158048, align 8                              ; load; *envptr158048
  %arg155601 = add i64 0, 0                                                          ; quoted ()
  %a154650 = call i64 @prim_cons(i64 %oa0$acc, i64 %arg155601)                       ; call prim_cons
  %cloptr158049 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr158051 = getelementptr inbounds i64, i64* %cloptr158049, i64 1                ; &eptr158051[1]
  %eptr158052 = getelementptr inbounds i64, i64* %cloptr158049, i64 2                ; &eptr158052[2]
  %eptr158053 = getelementptr inbounds i64, i64* %cloptr158049, i64 3                ; &eptr158053[3]
  %eptr158054 = getelementptr inbounds i64, i64* %cloptr158049, i64 4                ; &eptr158054[4]
  store i64 %L5o$_37foldl, i64* %eptr158051                                          ; *eptr158051 = %L5o$_37foldl
  store i64 %LJO$f, i64* %eptr158052                                                 ; *eptr158052 = %LJO$f
  store i64 %cont154860, i64* %eptr158053                                            ; *eptr158053 = %cont154860
  store i64 %qSp$lsts_43, i64* %eptr158054                                           ; *eptr158054 = %qSp$lsts_43
  %eptr158050 = getelementptr inbounds i64, i64* %cloptr158049, i64 0                ; &cloptr158049[0]
  %f158055 = ptrtoint void(i64,i64,i64)* @lam155943 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158055, i64* %eptr158050                                               ; store fptr
  %arg155606 = ptrtoint i64* %cloptr158049 to i64                                    ; closure cast; i64* -> i64
  %cloptr158056 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158057 = getelementptr inbounds i64, i64* %cloptr158056, i64 0                ; &cloptr158056[0]
  %f158058 = ptrtoint void(i64,i64,i64,i64)* @lam155939 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f158058, i64* %eptr158057                                               ; store fptr
  %arg155605 = ptrtoint i64* %cloptr158056 to i64                                    ; closure cast; i64* -> i64
  %cloptr158059 = inttoptr i64 %eN1$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr158060 = getelementptr inbounds i64, i64* %cloptr158059, i64 0               ; &cloptr158059[0]
  %f158062 = load i64, i64* %i0ptr158060, align 8                                    ; load; *i0ptr158060
  %fptr158061 = inttoptr i64 %f158062 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158061(i64 %eN1$_37foldr, i64 %arg155606, i64 %arg155605, i64 %a154650, i64 %Rkz$vs); tail call
  ret void
}


define void @lam155943(i64 %env155944, i64 %_95154869, i64 %a154651) {
  %envptr158063 = inttoptr i64 %env155944 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158064 = getelementptr inbounds i64, i64* %envptr158063, i64 4              ; &envptr158063[4]
  %qSp$lsts_43 = load i64, i64* %envptr158064, align 8                               ; load; *envptr158064
  %envptr158065 = inttoptr i64 %env155944 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158066 = getelementptr inbounds i64, i64* %envptr158065, i64 3              ; &envptr158065[3]
  %cont154860 = load i64, i64* %envptr158066, align 8                                ; load; *envptr158066
  %envptr158067 = inttoptr i64 %env155944 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158068 = getelementptr inbounds i64, i64* %envptr158067, i64 2              ; &envptr158067[2]
  %LJO$f = load i64, i64* %envptr158068, align 8                                     ; load; *envptr158068
  %envptr158069 = inttoptr i64 %env155944 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158070 = getelementptr inbounds i64, i64* %envptr158069, i64 1              ; &envptr158069[1]
  %L5o$_37foldl = load i64, i64* %envptr158070, align 8                              ; load; *envptr158070
  %cloptr158071 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr158073 = getelementptr inbounds i64, i64* %cloptr158071, i64 1                ; &eptr158073[1]
  %eptr158074 = getelementptr inbounds i64, i64* %cloptr158071, i64 2                ; &eptr158074[2]
  %eptr158075 = getelementptr inbounds i64, i64* %cloptr158071, i64 3                ; &eptr158075[3]
  %eptr158076 = getelementptr inbounds i64, i64* %cloptr158071, i64 4                ; &eptr158076[4]
  store i64 %L5o$_37foldl, i64* %eptr158073                                          ; *eptr158073 = %L5o$_37foldl
  store i64 %LJO$f, i64* %eptr158074                                                 ; *eptr158074 = %LJO$f
  store i64 %cont154860, i64* %eptr158075                                            ; *eptr158075 = %cont154860
  store i64 %qSp$lsts_43, i64* %eptr158076                                           ; *eptr158076 = %qSp$lsts_43
  %eptr158072 = getelementptr inbounds i64, i64* %cloptr158071, i64 0                ; &cloptr158071[0]
  %f158077 = ptrtoint void(i64,i64,i64)* @lam155941 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158077, i64* %eptr158072                                               ; store fptr
  %arg155609 = ptrtoint i64* %cloptr158071 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst154870 = call i64 @prim_cons(i64 %arg155609, i64 %a154651)               ; call prim_cons
  %cloptr158078 = inttoptr i64 %LJO$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr158079 = getelementptr inbounds i64, i64* %cloptr158078, i64 0               ; &cloptr158078[0]
  %f158081 = load i64, i64* %i0ptr158079, align 8                                    ; load; *i0ptr158079
  %fptr158080 = inttoptr i64 %f158081 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158080(i64 %LJO$f, i64 %cps_45lst154870)            ; tail call
  ret void
}


define void @lam155941(i64 %env155942, i64 %_95154867, i64 %MKo$acc_43) {
  %envptr158082 = inttoptr i64 %env155942 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158083 = getelementptr inbounds i64, i64* %envptr158082, i64 4              ; &envptr158082[4]
  %qSp$lsts_43 = load i64, i64* %envptr158083, align 8                               ; load; *envptr158083
  %envptr158084 = inttoptr i64 %env155942 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158085 = getelementptr inbounds i64, i64* %envptr158084, i64 3              ; &envptr158084[3]
  %cont154860 = load i64, i64* %envptr158085, align 8                                ; load; *envptr158085
  %envptr158086 = inttoptr i64 %env155942 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158087 = getelementptr inbounds i64, i64* %envptr158086, i64 2              ; &envptr158086[2]
  %LJO$f = load i64, i64* %envptr158087, align 8                                     ; load; *envptr158087
  %envptr158088 = inttoptr i64 %env155942 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158089 = getelementptr inbounds i64, i64* %envptr158088, i64 1              ; &envptr158088[1]
  %L5o$_37foldl = load i64, i64* %envptr158089, align 8                              ; load; *envptr158089
  %a154652 = call i64 @prim_cons(i64 %MKo$acc_43, i64 %qSp$lsts_43)                  ; call prim_cons
  %a154653 = call i64 @prim_cons(i64 %LJO$f, i64 %a154652)                           ; call prim_cons
  %cps_45lst154868 = call i64 @prim_cons(i64 %cont154860, i64 %a154653)              ; call prim_cons
  %cloptr158090 = inttoptr i64 %L5o$_37foldl to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr158091 = getelementptr inbounds i64, i64* %cloptr158090, i64 0               ; &cloptr158090[0]
  %f158093 = load i64, i64* %i0ptr158091, align 8                                    ; load; *i0ptr158091
  %fptr158092 = inttoptr i64 %f158093 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158092(i64 %L5o$_37foldl, i64 %cps_45lst154868)     ; tail call
  ret void
}


define void @lam155939(i64 %env155940, i64 %cont154871, i64 %CxS$a, i64 %qzi$b) {
  %retprim154872 = call i64 @prim_cons(i64 %CxS$a, i64 %qzi$b)                       ; call prim_cons
  %arg155619 = add i64 0, 0                                                          ; quoted ()
  %cloptr158094 = inttoptr i64 %cont154871 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158095 = getelementptr inbounds i64, i64* %cloptr158094, i64 0               ; &cloptr158094[0]
  %f158097 = load i64, i64* %i0ptr158095, align 8                                    ; load; *i0ptr158095
  %fptr158096 = inttoptr i64 %f158097 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158096(i64 %cont154871, i64 %arg155619, i64 %retprim154872); tail call
  ret void
}


define void @lam155936(i64 %env155937, i64 %cont154873, i64 %IsZ$x) {
  %retprim154874 = call i64 @prim_car(i64 %IsZ$x)                                    ; call prim_car
  %arg155623 = add i64 0, 0                                                          ; quoted ()
  %cloptr158098 = inttoptr i64 %cont154873 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158099 = getelementptr inbounds i64, i64* %cloptr158098, i64 0               ; &cloptr158098[0]
  %f158101 = load i64, i64* %i0ptr158099, align 8                                    ; load; *i0ptr158099
  %fptr158100 = inttoptr i64 %f158101 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158100(i64 %cont154873, i64 %arg155623, i64 %retprim154874); tail call
  ret void
}


define void @lam155933(i64 %env155934, i64 %cont154875, i64 %BQv$x) {
  %retprim154876 = call i64 @prim_cdr(i64 %BQv$x)                                    ; call prim_cdr
  %arg155627 = add i64 0, 0                                                          ; quoted ()
  %cloptr158102 = inttoptr i64 %cont154875 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158103 = getelementptr inbounds i64, i64* %cloptr158102, i64 0               ; &cloptr158102[0]
  %f158105 = load i64, i64* %i0ptr158103, align 8                                    ; load; *i0ptr158103
  %fptr158104 = inttoptr i64 %f158105 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158104(i64 %cont154875, i64 %arg155627, i64 %retprim154876); tail call
  ret void
}


define void @lam155929(i64 %env155930, i64 %cont154877, i64 %G7R$lst, i64 %vUI$b) {
  %cmp158106 = icmp eq i64 %vUI$b, 15                                                ; false?
  br i1 %cmp158106, label %else158108, label %then158107                             ; if

then158107:
  %arg155630 = add i64 0, 0                                                          ; quoted ()
  %cloptr158109 = inttoptr i64 %cont154877 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158110 = getelementptr inbounds i64, i64* %cloptr158109, i64 0               ; &cloptr158109[0]
  %f158112 = load i64, i64* %i0ptr158110, align 8                                    ; load; *i0ptr158110
  %fptr158111 = inttoptr i64 %f158112 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158111(i64 %cont154877, i64 %arg155630, i64 %vUI$b) ; tail call
  ret void

else158108:
  %retprim154878 = call i64 @prim_null_63(i64 %G7R$lst)                              ; call prim_null_63
  %arg155634 = add i64 0, 0                                                          ; quoted ()
  %cloptr158113 = inttoptr i64 %cont154877 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158114 = getelementptr inbounds i64, i64* %cloptr158113, i64 0               ; &cloptr158113[0]
  %f158116 = load i64, i64* %i0ptr158114, align 8                                    ; load; *i0ptr158114
  %fptr158115 = inttoptr i64 %f158116 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158115(i64 %cont154877, i64 %arg155634, i64 %retprim154878); tail call
  ret void
}


define void @lam155922(i64 %env155923, i64 %cont154881, i64 %K0e$_37foldr) {
  %envptr158117 = inttoptr i64 %env155923 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158118 = getelementptr inbounds i64, i64* %envptr158117, i64 2              ; &envptr158117[2]
  %x9O$_37map1 = load i64, i64* %envptr158118, align 8                               ; load; *envptr158118
  %envptr158119 = inttoptr i64 %env155923 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158120 = getelementptr inbounds i64, i64* %envptr158119, i64 1              ; &envptr158119[1]
  %e2X$_37foldr1 = load i64, i64* %envptr158120, align 8                             ; load; *envptr158120
  %arg155637 = add i64 0, 0                                                          ; quoted ()
  %cloptr158121 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158123 = getelementptr inbounds i64, i64* %cloptr158121, i64 1                ; &eptr158123[1]
  %eptr158124 = getelementptr inbounds i64, i64* %cloptr158121, i64 2                ; &eptr158124[2]
  %eptr158125 = getelementptr inbounds i64, i64* %cloptr158121, i64 3                ; &eptr158125[3]
  store i64 %e2X$_37foldr1, i64* %eptr158123                                         ; *eptr158123 = %e2X$_37foldr1
  store i64 %K0e$_37foldr, i64* %eptr158124                                          ; *eptr158124 = %K0e$_37foldr
  store i64 %x9O$_37map1, i64* %eptr158125                                           ; *eptr158125 = %x9O$_37map1
  %eptr158122 = getelementptr inbounds i64, i64* %cloptr158121, i64 0                ; &cloptr158121[0]
  %f158126 = ptrtoint void(i64,i64)* @lam155919 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f158126, i64* %eptr158122                                               ; store fptr
  %arg155636 = ptrtoint i64* %cloptr158121 to i64                                    ; closure cast; i64* -> i64
  %cloptr158127 = inttoptr i64 %cont154881 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158128 = getelementptr inbounds i64, i64* %cloptr158127, i64 0               ; &cloptr158127[0]
  %f158130 = load i64, i64* %i0ptr158128, align 8                                    ; load; *i0ptr158128
  %fptr158129 = inttoptr i64 %f158130 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158129(i64 %cont154881, i64 %arg155637, i64 %arg155636); tail call
  ret void
}


define void @lam155919(i64 %env155920, i64 %Nrj$args154883) {
  %envptr158131 = inttoptr i64 %env155920 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158132 = getelementptr inbounds i64, i64* %envptr158131, i64 3              ; &envptr158131[3]
  %x9O$_37map1 = load i64, i64* %envptr158132, align 8                               ; load; *envptr158132
  %envptr158133 = inttoptr i64 %env155920 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158134 = getelementptr inbounds i64, i64* %envptr158133, i64 2              ; &envptr158133[2]
  %K0e$_37foldr = load i64, i64* %envptr158134, align 8                              ; load; *envptr158134
  %envptr158135 = inttoptr i64 %env155920 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158136 = getelementptr inbounds i64, i64* %envptr158135, i64 1              ; &envptr158135[1]
  %e2X$_37foldr1 = load i64, i64* %envptr158136, align 8                             ; load; *envptr158136
  %cont154882 = call i64 @prim_car(i64 %Nrj$args154883)                              ; call prim_car
  %Nrj$args = call i64 @prim_cdr(i64 %Nrj$args154883)                                ; call prim_cdr
  %OyX$f = call i64 @prim_car(i64 %Nrj$args)                                         ; call prim_car
  %a154633 = call i64 @prim_cdr(i64 %Nrj$args)                                       ; call prim_cdr
  %retprim154902 = call i64 @prim_car(i64 %a154633)                                  ; call prim_car
  %cloptr158137 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr158139 = getelementptr inbounds i64, i64* %cloptr158137, i64 1                ; &eptr158139[1]
  %eptr158140 = getelementptr inbounds i64, i64* %cloptr158137, i64 2                ; &eptr158140[2]
  %eptr158141 = getelementptr inbounds i64, i64* %cloptr158137, i64 3                ; &eptr158141[3]
  %eptr158142 = getelementptr inbounds i64, i64* %cloptr158137, i64 4                ; &eptr158142[4]
  %eptr158143 = getelementptr inbounds i64, i64* %cloptr158137, i64 5                ; &eptr158143[5]
  %eptr158144 = getelementptr inbounds i64, i64* %cloptr158137, i64 6                ; &eptr158144[6]
  store i64 %e2X$_37foldr1, i64* %eptr158139                                         ; *eptr158139 = %e2X$_37foldr1
  store i64 %K0e$_37foldr, i64* %eptr158140                                          ; *eptr158140 = %K0e$_37foldr
  store i64 %Nrj$args, i64* %eptr158141                                              ; *eptr158141 = %Nrj$args
  store i64 %x9O$_37map1, i64* %eptr158142                                           ; *eptr158142 = %x9O$_37map1
  store i64 %cont154882, i64* %eptr158143                                            ; *eptr158143 = %cont154882
  store i64 %OyX$f, i64* %eptr158144                                                 ; *eptr158144 = %OyX$f
  %eptr158138 = getelementptr inbounds i64, i64* %cloptr158137, i64 0                ; &cloptr158137[0]
  %f158145 = ptrtoint void(i64,i64,i64)* @lam155917 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158145, i64* %eptr158138                                               ; store fptr
  %arg155646 = ptrtoint i64* %cloptr158137 to i64                                    ; closure cast; i64* -> i64
  %arg155645 = add i64 0, 0                                                          ; quoted ()
  %cloptr158146 = inttoptr i64 %arg155646 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158147 = getelementptr inbounds i64, i64* %cloptr158146, i64 0               ; &cloptr158146[0]
  %f158149 = load i64, i64* %i0ptr158147, align 8                                    ; load; *i0ptr158147
  %fptr158148 = inttoptr i64 %f158149 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158148(i64 %arg155646, i64 %arg155645, i64 %retprim154902); tail call
  ret void
}


define void @lam155917(i64 %env155918, i64 %_95154884, i64 %wj6$acc) {
  %envptr158150 = inttoptr i64 %env155918 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158151 = getelementptr inbounds i64, i64* %envptr158150, i64 6              ; &envptr158150[6]
  %OyX$f = load i64, i64* %envptr158151, align 8                                     ; load; *envptr158151
  %envptr158152 = inttoptr i64 %env155918 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158153 = getelementptr inbounds i64, i64* %envptr158152, i64 5              ; &envptr158152[5]
  %cont154882 = load i64, i64* %envptr158153, align 8                                ; load; *envptr158153
  %envptr158154 = inttoptr i64 %env155918 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158155 = getelementptr inbounds i64, i64* %envptr158154, i64 4              ; &envptr158154[4]
  %x9O$_37map1 = load i64, i64* %envptr158155, align 8                               ; load; *envptr158155
  %envptr158156 = inttoptr i64 %env155918 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158157 = getelementptr inbounds i64, i64* %envptr158156, i64 3              ; &envptr158156[3]
  %Nrj$args = load i64, i64* %envptr158157, align 8                                  ; load; *envptr158157
  %envptr158158 = inttoptr i64 %env155918 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158159 = getelementptr inbounds i64, i64* %envptr158158, i64 2              ; &envptr158158[2]
  %K0e$_37foldr = load i64, i64* %envptr158159, align 8                              ; load; *envptr158159
  %envptr158160 = inttoptr i64 %env155918 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158161 = getelementptr inbounds i64, i64* %envptr158160, i64 1              ; &envptr158160[1]
  %e2X$_37foldr1 = load i64, i64* %envptr158161, align 8                             ; load; *envptr158161
  %a154634 = call i64 @prim_cdr(i64 %Nrj$args)                                       ; call prim_cdr
  %retprim154901 = call i64 @prim_cdr(i64 %a154634)                                  ; call prim_cdr
  %cloptr158162 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr158164 = getelementptr inbounds i64, i64* %cloptr158162, i64 1                ; &eptr158164[1]
  %eptr158165 = getelementptr inbounds i64, i64* %cloptr158162, i64 2                ; &eptr158165[2]
  %eptr158166 = getelementptr inbounds i64, i64* %cloptr158162, i64 3                ; &eptr158166[3]
  %eptr158167 = getelementptr inbounds i64, i64* %cloptr158162, i64 4                ; &eptr158167[4]
  %eptr158168 = getelementptr inbounds i64, i64* %cloptr158162, i64 5                ; &eptr158168[5]
  %eptr158169 = getelementptr inbounds i64, i64* %cloptr158162, i64 6                ; &eptr158169[6]
  store i64 %e2X$_37foldr1, i64* %eptr158164                                         ; *eptr158164 = %e2X$_37foldr1
  store i64 %K0e$_37foldr, i64* %eptr158165                                          ; *eptr158165 = %K0e$_37foldr
  store i64 %x9O$_37map1, i64* %eptr158166                                           ; *eptr158166 = %x9O$_37map1
  store i64 %cont154882, i64* %eptr158167                                            ; *eptr158167 = %cont154882
  store i64 %wj6$acc, i64* %eptr158168                                               ; *eptr158168 = %wj6$acc
  store i64 %OyX$f, i64* %eptr158169                                                 ; *eptr158169 = %OyX$f
  %eptr158163 = getelementptr inbounds i64, i64* %cloptr158162, i64 0                ; &cloptr158162[0]
  %f158170 = ptrtoint void(i64,i64,i64)* @lam155915 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158170, i64* %eptr158163                                               ; store fptr
  %arg155651 = ptrtoint i64* %cloptr158162 to i64                                    ; closure cast; i64* -> i64
  %arg155650 = add i64 0, 0                                                          ; quoted ()
  %cloptr158171 = inttoptr i64 %arg155651 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr158172 = getelementptr inbounds i64, i64* %cloptr158171, i64 0               ; &cloptr158171[0]
  %f158174 = load i64, i64* %i0ptr158172, align 8                                    ; load; *i0ptr158172
  %fptr158173 = inttoptr i64 %f158174 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158173(i64 %arg155651, i64 %arg155650, i64 %retprim154901); tail call
  ret void
}


define void @lam155915(i64 %env155916, i64 %_95154885, i64 %f3t$lsts) {
  %envptr158175 = inttoptr i64 %env155916 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158176 = getelementptr inbounds i64, i64* %envptr158175, i64 6              ; &envptr158175[6]
  %OyX$f = load i64, i64* %envptr158176, align 8                                     ; load; *envptr158176
  %envptr158177 = inttoptr i64 %env155916 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158178 = getelementptr inbounds i64, i64* %envptr158177, i64 5              ; &envptr158177[5]
  %wj6$acc = load i64, i64* %envptr158178, align 8                                   ; load; *envptr158178
  %envptr158179 = inttoptr i64 %env155916 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158180 = getelementptr inbounds i64, i64* %envptr158179, i64 4              ; &envptr158179[4]
  %cont154882 = load i64, i64* %envptr158180, align 8                                ; load; *envptr158180
  %envptr158181 = inttoptr i64 %env155916 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158182 = getelementptr inbounds i64, i64* %envptr158181, i64 3              ; &envptr158181[3]
  %x9O$_37map1 = load i64, i64* %envptr158182, align 8                               ; load; *envptr158182
  %envptr158183 = inttoptr i64 %env155916 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158184 = getelementptr inbounds i64, i64* %envptr158183, i64 2              ; &envptr158183[2]
  %K0e$_37foldr = load i64, i64* %envptr158184, align 8                              ; load; *envptr158184
  %envptr158185 = inttoptr i64 %env155916 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158186 = getelementptr inbounds i64, i64* %envptr158185, i64 1              ; &envptr158185[1]
  %e2X$_37foldr1 = load i64, i64* %envptr158186, align 8                             ; load; *envptr158186
  %cloptr158187 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr158189 = getelementptr inbounds i64, i64* %cloptr158187, i64 1                ; &eptr158189[1]
  %eptr158190 = getelementptr inbounds i64, i64* %cloptr158187, i64 2                ; &eptr158190[2]
  %eptr158191 = getelementptr inbounds i64, i64* %cloptr158187, i64 3                ; &eptr158191[3]
  %eptr158192 = getelementptr inbounds i64, i64* %cloptr158187, i64 4                ; &eptr158192[4]
  %eptr158193 = getelementptr inbounds i64, i64* %cloptr158187, i64 5                ; &eptr158193[5]
  %eptr158194 = getelementptr inbounds i64, i64* %cloptr158187, i64 6                ; &eptr158194[6]
  %eptr158195 = getelementptr inbounds i64, i64* %cloptr158187, i64 7                ; &eptr158195[7]
  store i64 %e2X$_37foldr1, i64* %eptr158189                                         ; *eptr158189 = %e2X$_37foldr1
  store i64 %K0e$_37foldr, i64* %eptr158190                                          ; *eptr158190 = %K0e$_37foldr
  store i64 %f3t$lsts, i64* %eptr158191                                              ; *eptr158191 = %f3t$lsts
  store i64 %x9O$_37map1, i64* %eptr158192                                           ; *eptr158192 = %x9O$_37map1
  store i64 %cont154882, i64* %eptr158193                                            ; *eptr158193 = %cont154882
  store i64 %wj6$acc, i64* %eptr158194                                               ; *eptr158194 = %wj6$acc
  store i64 %OyX$f, i64* %eptr158195                                                 ; *eptr158195 = %OyX$f
  %eptr158188 = getelementptr inbounds i64, i64* %cloptr158187, i64 0                ; &cloptr158187[0]
  %f158196 = ptrtoint void(i64,i64,i64)* @lam155913 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158196, i64* %eptr158188                                               ; store fptr
  %arg155655 = ptrtoint i64* %cloptr158187 to i64                                    ; closure cast; i64* -> i64
  %cloptr158197 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158198 = getelementptr inbounds i64, i64* %cloptr158197, i64 0                ; &cloptr158197[0]
  %f158199 = ptrtoint void(i64,i64,i64,i64)* @lam155892 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f158199, i64* %eptr158198                                               ; store fptr
  %arg155654 = ptrtoint i64* %cloptr158197 to i64                                    ; closure cast; i64* -> i64
  %arg155653 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr158200 = inttoptr i64 %e2X$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr158201 = getelementptr inbounds i64, i64* %cloptr158200, i64 0               ; &cloptr158200[0]
  %f158203 = load i64, i64* %i0ptr158201, align 8                                    ; load; *i0ptr158201
  %fptr158202 = inttoptr i64 %f158203 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158202(i64 %e2X$_37foldr1, i64 %arg155655, i64 %arg155654, i64 %arg155653, i64 %f3t$lsts); tail call
  ret void
}


define void @lam155913(i64 %env155914, i64 %_95154886, i64 %a154635) {
  %envptr158204 = inttoptr i64 %env155914 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158205 = getelementptr inbounds i64, i64* %envptr158204, i64 7              ; &envptr158204[7]
  %OyX$f = load i64, i64* %envptr158205, align 8                                     ; load; *envptr158205
  %envptr158206 = inttoptr i64 %env155914 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158207 = getelementptr inbounds i64, i64* %envptr158206, i64 6              ; &envptr158206[6]
  %wj6$acc = load i64, i64* %envptr158207, align 8                                   ; load; *envptr158207
  %envptr158208 = inttoptr i64 %env155914 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158209 = getelementptr inbounds i64, i64* %envptr158208, i64 5              ; &envptr158208[5]
  %cont154882 = load i64, i64* %envptr158209, align 8                                ; load; *envptr158209
  %envptr158210 = inttoptr i64 %env155914 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158211 = getelementptr inbounds i64, i64* %envptr158210, i64 4              ; &envptr158210[4]
  %x9O$_37map1 = load i64, i64* %envptr158211, align 8                               ; load; *envptr158211
  %envptr158212 = inttoptr i64 %env155914 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158213 = getelementptr inbounds i64, i64* %envptr158212, i64 3              ; &envptr158212[3]
  %f3t$lsts = load i64, i64* %envptr158213, align 8                                  ; load; *envptr158213
  %envptr158214 = inttoptr i64 %env155914 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158215 = getelementptr inbounds i64, i64* %envptr158214, i64 2              ; &envptr158214[2]
  %K0e$_37foldr = load i64, i64* %envptr158215, align 8                              ; load; *envptr158215
  %envptr158216 = inttoptr i64 %env155914 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158217 = getelementptr inbounds i64, i64* %envptr158216, i64 1              ; &envptr158216[1]
  %e2X$_37foldr1 = load i64, i64* %envptr158217, align 8                             ; load; *envptr158217
  %cmp158218 = icmp eq i64 %a154635, 15                                              ; false?
  br i1 %cmp158218, label %else158220, label %then158219                             ; if

then158219:
  %arg155658 = add i64 0, 0                                                          ; quoted ()
  %cloptr158221 = inttoptr i64 %cont154882 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158222 = getelementptr inbounds i64, i64* %cloptr158221, i64 0               ; &cloptr158221[0]
  %f158224 = load i64, i64* %i0ptr158222, align 8                                    ; load; *i0ptr158222
  %fptr158223 = inttoptr i64 %f158224 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158223(i64 %cont154882, i64 %arg155658, i64 %wj6$acc); tail call
  ret void

else158220:
  %cloptr158225 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr158227 = getelementptr inbounds i64, i64* %cloptr158225, i64 1                ; &eptr158227[1]
  %eptr158228 = getelementptr inbounds i64, i64* %cloptr158225, i64 2                ; &eptr158228[2]
  %eptr158229 = getelementptr inbounds i64, i64* %cloptr158225, i64 3                ; &eptr158229[3]
  %eptr158230 = getelementptr inbounds i64, i64* %cloptr158225, i64 4                ; &eptr158230[4]
  %eptr158231 = getelementptr inbounds i64, i64* %cloptr158225, i64 5                ; &eptr158231[5]
  %eptr158232 = getelementptr inbounds i64, i64* %cloptr158225, i64 6                ; &eptr158232[6]
  %eptr158233 = getelementptr inbounds i64, i64* %cloptr158225, i64 7                ; &eptr158233[7]
  store i64 %e2X$_37foldr1, i64* %eptr158227                                         ; *eptr158227 = %e2X$_37foldr1
  store i64 %K0e$_37foldr, i64* %eptr158228                                          ; *eptr158228 = %K0e$_37foldr
  store i64 %f3t$lsts, i64* %eptr158229                                              ; *eptr158229 = %f3t$lsts
  store i64 %x9O$_37map1, i64* %eptr158230                                           ; *eptr158230 = %x9O$_37map1
  store i64 %cont154882, i64* %eptr158231                                            ; *eptr158231 = %cont154882
  store i64 %wj6$acc, i64* %eptr158232                                               ; *eptr158232 = %wj6$acc
  store i64 %OyX$f, i64* %eptr158233                                                 ; *eptr158233 = %OyX$f
  %eptr158226 = getelementptr inbounds i64, i64* %cloptr158225, i64 0                ; &cloptr158225[0]
  %f158234 = ptrtoint void(i64,i64,i64)* @lam155911 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158234, i64* %eptr158226                                               ; store fptr
  %arg155662 = ptrtoint i64* %cloptr158225 to i64                                    ; closure cast; i64* -> i64
  %cloptr158235 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158236 = getelementptr inbounds i64, i64* %cloptr158235, i64 0                ; &cloptr158235[0]
  %f158237 = ptrtoint void(i64,i64,i64)* @lam155896 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158237, i64* %eptr158236                                               ; store fptr
  %arg155661 = ptrtoint i64* %cloptr158235 to i64                                    ; closure cast; i64* -> i64
  %cloptr158238 = inttoptr i64 %x9O$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr158239 = getelementptr inbounds i64, i64* %cloptr158238, i64 0               ; &cloptr158238[0]
  %f158241 = load i64, i64* %i0ptr158239, align 8                                    ; load; *i0ptr158239
  %fptr158240 = inttoptr i64 %f158241 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158240(i64 %x9O$_37map1, i64 %arg155662, i64 %arg155661, i64 %f3t$lsts); tail call
  ret void
}


define void @lam155911(i64 %env155912, i64 %_95154887, i64 %zt3$lsts_43) {
  %envptr158242 = inttoptr i64 %env155912 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158243 = getelementptr inbounds i64, i64* %envptr158242, i64 7              ; &envptr158242[7]
  %OyX$f = load i64, i64* %envptr158243, align 8                                     ; load; *envptr158243
  %envptr158244 = inttoptr i64 %env155912 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158245 = getelementptr inbounds i64, i64* %envptr158244, i64 6              ; &envptr158244[6]
  %wj6$acc = load i64, i64* %envptr158245, align 8                                   ; load; *envptr158245
  %envptr158246 = inttoptr i64 %env155912 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158247 = getelementptr inbounds i64, i64* %envptr158246, i64 5              ; &envptr158246[5]
  %cont154882 = load i64, i64* %envptr158247, align 8                                ; load; *envptr158247
  %envptr158248 = inttoptr i64 %env155912 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158249 = getelementptr inbounds i64, i64* %envptr158248, i64 4              ; &envptr158248[4]
  %x9O$_37map1 = load i64, i64* %envptr158249, align 8                               ; load; *envptr158249
  %envptr158250 = inttoptr i64 %env155912 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158251 = getelementptr inbounds i64, i64* %envptr158250, i64 3              ; &envptr158250[3]
  %f3t$lsts = load i64, i64* %envptr158251, align 8                                  ; load; *envptr158251
  %envptr158252 = inttoptr i64 %env155912 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158253 = getelementptr inbounds i64, i64* %envptr158252, i64 2              ; &envptr158252[2]
  %K0e$_37foldr = load i64, i64* %envptr158253, align 8                              ; load; *envptr158253
  %envptr158254 = inttoptr i64 %env155912 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158255 = getelementptr inbounds i64, i64* %envptr158254, i64 1              ; &envptr158254[1]
  %e2X$_37foldr1 = load i64, i64* %envptr158255, align 8                             ; load; *envptr158255
  %cloptr158256 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr158258 = getelementptr inbounds i64, i64* %cloptr158256, i64 1                ; &eptr158258[1]
  %eptr158259 = getelementptr inbounds i64, i64* %cloptr158256, i64 2                ; &eptr158259[2]
  %eptr158260 = getelementptr inbounds i64, i64* %cloptr158256, i64 3                ; &eptr158260[3]
  %eptr158261 = getelementptr inbounds i64, i64* %cloptr158256, i64 4                ; &eptr158261[4]
  %eptr158262 = getelementptr inbounds i64, i64* %cloptr158256, i64 5                ; &eptr158262[5]
  %eptr158263 = getelementptr inbounds i64, i64* %cloptr158256, i64 6                ; &eptr158263[6]
  store i64 %zt3$lsts_43, i64* %eptr158258                                           ; *eptr158258 = %zt3$lsts_43
  store i64 %e2X$_37foldr1, i64* %eptr158259                                         ; *eptr158259 = %e2X$_37foldr1
  store i64 %K0e$_37foldr, i64* %eptr158260                                          ; *eptr158260 = %K0e$_37foldr
  store i64 %cont154882, i64* %eptr158261                                            ; *eptr158261 = %cont154882
  store i64 %wj6$acc, i64* %eptr158262                                               ; *eptr158262 = %wj6$acc
  store i64 %OyX$f, i64* %eptr158263                                                 ; *eptr158263 = %OyX$f
  %eptr158257 = getelementptr inbounds i64, i64* %cloptr158256, i64 0                ; &cloptr158256[0]
  %f158264 = ptrtoint void(i64,i64,i64)* @lam155909 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158264, i64* %eptr158257                                               ; store fptr
  %arg155666 = ptrtoint i64* %cloptr158256 to i64                                    ; closure cast; i64* -> i64
  %cloptr158265 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158266 = getelementptr inbounds i64, i64* %cloptr158265, i64 0                ; &cloptr158265[0]
  %f158267 = ptrtoint void(i64,i64,i64)* @lam155899 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158267, i64* %eptr158266                                               ; store fptr
  %arg155665 = ptrtoint i64* %cloptr158265 to i64                                    ; closure cast; i64* -> i64
  %cloptr158268 = inttoptr i64 %x9O$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr158269 = getelementptr inbounds i64, i64* %cloptr158268, i64 0               ; &cloptr158268[0]
  %f158271 = load i64, i64* %i0ptr158269, align 8                                    ; load; *i0ptr158269
  %fptr158270 = inttoptr i64 %f158271 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158270(i64 %x9O$_37map1, i64 %arg155666, i64 %arg155665, i64 %f3t$lsts); tail call
  ret void
}


define void @lam155909(i64 %env155910, i64 %_95154888, i64 %EZG$vs) {
  %envptr158272 = inttoptr i64 %env155910 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158273 = getelementptr inbounds i64, i64* %envptr158272, i64 6              ; &envptr158272[6]
  %OyX$f = load i64, i64* %envptr158273, align 8                                     ; load; *envptr158273
  %envptr158274 = inttoptr i64 %env155910 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158275 = getelementptr inbounds i64, i64* %envptr158274, i64 5              ; &envptr158274[5]
  %wj6$acc = load i64, i64* %envptr158275, align 8                                   ; load; *envptr158275
  %envptr158276 = inttoptr i64 %env155910 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158277 = getelementptr inbounds i64, i64* %envptr158276, i64 4              ; &envptr158276[4]
  %cont154882 = load i64, i64* %envptr158277, align 8                                ; load; *envptr158277
  %envptr158278 = inttoptr i64 %env155910 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158279 = getelementptr inbounds i64, i64* %envptr158278, i64 3              ; &envptr158278[3]
  %K0e$_37foldr = load i64, i64* %envptr158279, align 8                              ; load; *envptr158279
  %envptr158280 = inttoptr i64 %env155910 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158281 = getelementptr inbounds i64, i64* %envptr158280, i64 2              ; &envptr158280[2]
  %e2X$_37foldr1 = load i64, i64* %envptr158281, align 8                             ; load; *envptr158281
  %envptr158282 = inttoptr i64 %env155910 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158283 = getelementptr inbounds i64, i64* %envptr158282, i64 1              ; &envptr158282[1]
  %zt3$lsts_43 = load i64, i64* %envptr158283, align 8                               ; load; *envptr158283
  %a154636 = call i64 @prim_cons(i64 %wj6$acc, i64 %zt3$lsts_43)                     ; call prim_cons
  %a154637 = call i64 @prim_cons(i64 %OyX$f, i64 %a154636)                           ; call prim_cons
  %cloptr158284 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr158286 = getelementptr inbounds i64, i64* %cloptr158284, i64 1                ; &eptr158286[1]
  %eptr158287 = getelementptr inbounds i64, i64* %cloptr158284, i64 2                ; &eptr158287[2]
  %eptr158288 = getelementptr inbounds i64, i64* %cloptr158284, i64 3                ; &eptr158288[3]
  %eptr158289 = getelementptr inbounds i64, i64* %cloptr158284, i64 4                ; &eptr158289[4]
  store i64 %e2X$_37foldr1, i64* %eptr158286                                         ; *eptr158286 = %e2X$_37foldr1
  store i64 %cont154882, i64* %eptr158287                                            ; *eptr158287 = %cont154882
  store i64 %EZG$vs, i64* %eptr158288                                                ; *eptr158288 = %EZG$vs
  store i64 %OyX$f, i64* %eptr158289                                                 ; *eptr158289 = %OyX$f
  %eptr158285 = getelementptr inbounds i64, i64* %cloptr158284, i64 0                ; &cloptr158284[0]
  %f158290 = ptrtoint void(i64,i64,i64)* @lam155907 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158290, i64* %eptr158285                                               ; store fptr
  %arg155673 = ptrtoint i64* %cloptr158284 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst154894 = call i64 @prim_cons(i64 %arg155673, i64 %a154637)               ; call prim_cons
  %cloptr158291 = inttoptr i64 %K0e$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr158292 = getelementptr inbounds i64, i64* %cloptr158291, i64 0               ; &cloptr158291[0]
  %f158294 = load i64, i64* %i0ptr158292, align 8                                    ; load; *i0ptr158292
  %fptr158293 = inttoptr i64 %f158294 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158293(i64 %K0e$_37foldr, i64 %cps_45lst154894)     ; tail call
  ret void
}


define void @lam155907(i64 %env155908, i64 %_95154889, i64 %a154638) {
  %envptr158295 = inttoptr i64 %env155908 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158296 = getelementptr inbounds i64, i64* %envptr158295, i64 4              ; &envptr158295[4]
  %OyX$f = load i64, i64* %envptr158296, align 8                                     ; load; *envptr158296
  %envptr158297 = inttoptr i64 %env155908 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158298 = getelementptr inbounds i64, i64* %envptr158297, i64 3              ; &envptr158297[3]
  %EZG$vs = load i64, i64* %envptr158298, align 8                                    ; load; *envptr158298
  %envptr158299 = inttoptr i64 %env155908 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158300 = getelementptr inbounds i64, i64* %envptr158299, i64 2              ; &envptr158299[2]
  %cont154882 = load i64, i64* %envptr158300, align 8                                ; load; *envptr158300
  %envptr158301 = inttoptr i64 %env155908 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158302 = getelementptr inbounds i64, i64* %envptr158301, i64 1              ; &envptr158301[1]
  %e2X$_37foldr1 = load i64, i64* %envptr158302, align 8                             ; load; *envptr158302
  %arg155674 = add i64 0, 0                                                          ; quoted ()
  %a154639 = call i64 @prim_cons(i64 %a154638, i64 %arg155674)                       ; call prim_cons
  %cloptr158303 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158305 = getelementptr inbounds i64, i64* %cloptr158303, i64 1                ; &eptr158305[1]
  %eptr158306 = getelementptr inbounds i64, i64* %cloptr158303, i64 2                ; &eptr158306[2]
  store i64 %cont154882, i64* %eptr158305                                            ; *eptr158305 = %cont154882
  store i64 %OyX$f, i64* %eptr158306                                                 ; *eptr158306 = %OyX$f
  %eptr158304 = getelementptr inbounds i64, i64* %cloptr158303, i64 0                ; &cloptr158303[0]
  %f158307 = ptrtoint void(i64,i64,i64)* @lam155904 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158307, i64* %eptr158304                                               ; store fptr
  %arg155679 = ptrtoint i64* %cloptr158303 to i64                                    ; closure cast; i64* -> i64
  %cloptr158308 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr158309 = getelementptr inbounds i64, i64* %cloptr158308, i64 0                ; &cloptr158308[0]
  %f158310 = ptrtoint void(i64,i64,i64,i64)* @lam155902 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f158310, i64* %eptr158309                                               ; store fptr
  %arg155678 = ptrtoint i64* %cloptr158308 to i64                                    ; closure cast; i64* -> i64
  %cloptr158311 = inttoptr i64 %e2X$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr158312 = getelementptr inbounds i64, i64* %cloptr158311, i64 0               ; &cloptr158311[0]
  %f158314 = load i64, i64* %i0ptr158312, align 8                                    ; load; *i0ptr158312
  %fptr158313 = inttoptr i64 %f158314 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158313(i64 %e2X$_37foldr1, i64 %arg155679, i64 %arg155678, i64 %a154639, i64 %EZG$vs); tail call
  ret void
}


define void @lam155904(i64 %env155905, i64 %_95154890, i64 %a154640) {
  %envptr158315 = inttoptr i64 %env155905 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158316 = getelementptr inbounds i64, i64* %envptr158315, i64 2              ; &envptr158315[2]
  %OyX$f = load i64, i64* %envptr158316, align 8                                     ; load; *envptr158316
  %envptr158317 = inttoptr i64 %env155905 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158318 = getelementptr inbounds i64, i64* %envptr158317, i64 1              ; &envptr158317[1]
  %cont154882 = load i64, i64* %envptr158318, align 8                                ; load; *envptr158318
  %cps_45lst154891 = call i64 @prim_cons(i64 %cont154882, i64 %a154640)              ; call prim_cons
  %cloptr158319 = inttoptr i64 %OyX$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr158320 = getelementptr inbounds i64, i64* %cloptr158319, i64 0               ; &cloptr158319[0]
  %f158322 = load i64, i64* %i0ptr158320, align 8                                    ; load; *i0ptr158320
  %fptr158321 = inttoptr i64 %f158322 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158321(i64 %OyX$f, i64 %cps_45lst154891)            ; tail call
  ret void
}


define void @lam155902(i64 %env155903, i64 %cont154892, i64 %WfY$a, i64 %SAJ$b) {
  %retprim154893 = call i64 @prim_cons(i64 %WfY$a, i64 %SAJ$b)                       ; call prim_cons
  %arg155686 = add i64 0, 0                                                          ; quoted ()
  %cloptr158323 = inttoptr i64 %cont154892 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158324 = getelementptr inbounds i64, i64* %cloptr158323, i64 0               ; &cloptr158323[0]
  %f158326 = load i64, i64* %i0ptr158324, align 8                                    ; load; *i0ptr158324
  %fptr158325 = inttoptr i64 %f158326 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158325(i64 %cont154892, i64 %arg155686, i64 %retprim154893); tail call
  ret void
}


define void @lam155899(i64 %env155900, i64 %cont154895, i64 %ooH$x) {
  %retprim154896 = call i64 @prim_car(i64 %ooH$x)                                    ; call prim_car
  %arg155690 = add i64 0, 0                                                          ; quoted ()
  %cloptr158327 = inttoptr i64 %cont154895 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158328 = getelementptr inbounds i64, i64* %cloptr158327, i64 0               ; &cloptr158327[0]
  %f158330 = load i64, i64* %i0ptr158328, align 8                                    ; load; *i0ptr158328
  %fptr158329 = inttoptr i64 %f158330 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158329(i64 %cont154895, i64 %arg155690, i64 %retprim154896); tail call
  ret void
}


define void @lam155896(i64 %env155897, i64 %cont154897, i64 %eTU$x) {
  %retprim154898 = call i64 @prim_cdr(i64 %eTU$x)                                    ; call prim_cdr
  %arg155694 = add i64 0, 0                                                          ; quoted ()
  %cloptr158331 = inttoptr i64 %cont154897 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158332 = getelementptr inbounds i64, i64* %cloptr158331, i64 0               ; &cloptr158331[0]
  %f158334 = load i64, i64* %i0ptr158332, align 8                                    ; load; *i0ptr158332
  %fptr158333 = inttoptr i64 %f158334 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158333(i64 %cont154897, i64 %arg155694, i64 %retprim154898); tail call
  ret void
}


define void @lam155892(i64 %env155893, i64 %cont154899, i64 %y7V$lst, i64 %B5a$b) {
  %cmp158335 = icmp eq i64 %B5a$b, 15                                                ; false?
  br i1 %cmp158335, label %else158337, label %then158336                             ; if

then158336:
  %arg155697 = add i64 0, 0                                                          ; quoted ()
  %cloptr158338 = inttoptr i64 %cont154899 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158339 = getelementptr inbounds i64, i64* %cloptr158338, i64 0               ; &cloptr158338[0]
  %f158341 = load i64, i64* %i0ptr158339, align 8                                    ; load; *i0ptr158339
  %fptr158340 = inttoptr i64 %f158341 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158340(i64 %cont154899, i64 %arg155697, i64 %B5a$b) ; tail call
  ret void

else158337:
  %retprim154900 = call i64 @prim_null_63(i64 %y7V$lst)                              ; call prim_null_63
  %arg155701 = add i64 0, 0                                                          ; quoted ()
  %cloptr158342 = inttoptr i64 %cont154899 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158343 = getelementptr inbounds i64, i64* %cloptr158342, i64 0               ; &cloptr158342[0]
  %f158345 = load i64, i64* %i0ptr158343, align 8                                    ; load; *i0ptr158343
  %fptr158344 = inttoptr i64 %f158345 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158344(i64 %cont154899, i64 %arg155701, i64 %retprim154900); tail call
  ret void
}


define void @lam155885(i64 %env155886, i64 %cont154903, i64 %atW$_37foldl1) {
  %arg155704 = add i64 0, 0                                                          ; quoted ()
  %cloptr158346 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr158348 = getelementptr inbounds i64, i64* %cloptr158346, i64 1                ; &eptr158348[1]
  store i64 %atW$_37foldl1, i64* %eptr158348                                         ; *eptr158348 = %atW$_37foldl1
  %eptr158347 = getelementptr inbounds i64, i64* %cloptr158346, i64 0                ; &cloptr158346[0]
  %f158349 = ptrtoint void(i64,i64,i64,i64,i64)* @lam155882 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f158349, i64* %eptr158347                                               ; store fptr
  %arg155703 = ptrtoint i64* %cloptr158346 to i64                                    ; closure cast; i64* -> i64
  %cloptr158350 = inttoptr i64 %cont154903 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158351 = getelementptr inbounds i64, i64* %cloptr158350, i64 0               ; &cloptr158350[0]
  %f158353 = load i64, i64* %i0ptr158351, align 8                                    ; load; *i0ptr158351
  %fptr158352 = inttoptr i64 %f158353 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158352(i64 %cont154903, i64 %arg155704, i64 %arg155703); tail call
  ret void
}


define void @lam155882(i64 %env155883, i64 %cont154904, i64 %tr5$f, i64 %sZL$acc, i64 %q0v$lst) {
  %envptr158354 = inttoptr i64 %env155883 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158355 = getelementptr inbounds i64, i64* %envptr158354, i64 1              ; &envptr158354[1]
  %atW$_37foldl1 = load i64, i64* %envptr158355, align 8                             ; load; *envptr158355
  %a154627 = call i64 @prim_null_63(i64 %q0v$lst)                                    ; call prim_null_63
  %cmp158356 = icmp eq i64 %a154627, 15                                              ; false?
  br i1 %cmp158356, label %else158358, label %then158357                             ; if

then158357:
  %arg155708 = add i64 0, 0                                                          ; quoted ()
  %cloptr158359 = inttoptr i64 %cont154904 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158360 = getelementptr inbounds i64, i64* %cloptr158359, i64 0               ; &cloptr158359[0]
  %f158362 = load i64, i64* %i0ptr158360, align 8                                    ; load; *i0ptr158360
  %fptr158361 = inttoptr i64 %f158362 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158361(i64 %cont154904, i64 %arg155708, i64 %sZL$acc); tail call
  ret void

else158358:
  %a154628 = call i64 @prim_car(i64 %q0v$lst)                                        ; call prim_car
  %cloptr158363 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr158365 = getelementptr inbounds i64, i64* %cloptr158363, i64 1                ; &eptr158365[1]
  %eptr158366 = getelementptr inbounds i64, i64* %cloptr158363, i64 2                ; &eptr158366[2]
  %eptr158367 = getelementptr inbounds i64, i64* %cloptr158363, i64 3                ; &eptr158367[3]
  %eptr158368 = getelementptr inbounds i64, i64* %cloptr158363, i64 4                ; &eptr158368[4]
  store i64 %q0v$lst, i64* %eptr158365                                               ; *eptr158365 = %q0v$lst
  store i64 %atW$_37foldl1, i64* %eptr158366                                         ; *eptr158366 = %atW$_37foldl1
  store i64 %tr5$f, i64* %eptr158367                                                 ; *eptr158367 = %tr5$f
  store i64 %cont154904, i64* %eptr158368                                            ; *eptr158368 = %cont154904
  %eptr158364 = getelementptr inbounds i64, i64* %cloptr158363, i64 0                ; &cloptr158363[0]
  %f158369 = ptrtoint void(i64,i64,i64)* @lam155880 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158369, i64* %eptr158364                                               ; store fptr
  %arg155713 = ptrtoint i64* %cloptr158363 to i64                                    ; closure cast; i64* -> i64
  %cloptr158370 = inttoptr i64 %tr5$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr158371 = getelementptr inbounds i64, i64* %cloptr158370, i64 0               ; &cloptr158370[0]
  %f158373 = load i64, i64* %i0ptr158371, align 8                                    ; load; *i0ptr158371
  %fptr158372 = inttoptr i64 %f158373 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158372(i64 %tr5$f, i64 %arg155713, i64 %a154628, i64 %sZL$acc); tail call
  ret void
}


define void @lam155880(i64 %env155881, i64 %_95154905, i64 %a154629) {
  %envptr158374 = inttoptr i64 %env155881 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158375 = getelementptr inbounds i64, i64* %envptr158374, i64 4              ; &envptr158374[4]
  %cont154904 = load i64, i64* %envptr158375, align 8                                ; load; *envptr158375
  %envptr158376 = inttoptr i64 %env155881 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158377 = getelementptr inbounds i64, i64* %envptr158376, i64 3              ; &envptr158376[3]
  %tr5$f = load i64, i64* %envptr158377, align 8                                     ; load; *envptr158377
  %envptr158378 = inttoptr i64 %env155881 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158379 = getelementptr inbounds i64, i64* %envptr158378, i64 2              ; &envptr158378[2]
  %atW$_37foldl1 = load i64, i64* %envptr158379, align 8                             ; load; *envptr158379
  %envptr158380 = inttoptr i64 %env155881 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158381 = getelementptr inbounds i64, i64* %envptr158380, i64 1              ; &envptr158380[1]
  %q0v$lst = load i64, i64* %envptr158381, align 8                                   ; load; *envptr158381
  %a154630 = call i64 @prim_cdr(i64 %q0v$lst)                                        ; call prim_cdr
  %cloptr158382 = inttoptr i64 %atW$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr158383 = getelementptr inbounds i64, i64* %cloptr158382, i64 0               ; &cloptr158382[0]
  %f158385 = load i64, i64* %i0ptr158383, align 8                                    ; load; *i0ptr158383
  %fptr158384 = inttoptr i64 %f158385 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158384(i64 %atW$_37foldl1, i64 %cont154904, i64 %tr5$f, i64 %a154629, i64 %a154630); tail call
  ret void
}


define void @lam155877(i64 %env155878, i64 %cont154906, i64 %oJO$_37length) {
  %arg155722 = add i64 0, 0                                                          ; quoted ()
  %cloptr158386 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr158388 = getelementptr inbounds i64, i64* %cloptr158386, i64 1                ; &eptr158388[1]
  store i64 %oJO$_37length, i64* %eptr158388                                         ; *eptr158388 = %oJO$_37length
  %eptr158387 = getelementptr inbounds i64, i64* %cloptr158386, i64 0                ; &cloptr158386[0]
  %f158389 = ptrtoint void(i64,i64,i64)* @lam155874 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158389, i64* %eptr158387                                               ; store fptr
  %arg155721 = ptrtoint i64* %cloptr158386 to i64                                    ; closure cast; i64* -> i64
  %cloptr158390 = inttoptr i64 %cont154906 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158391 = getelementptr inbounds i64, i64* %cloptr158390, i64 0               ; &cloptr158390[0]
  %f158393 = load i64, i64* %i0ptr158391, align 8                                    ; load; *i0ptr158391
  %fptr158392 = inttoptr i64 %f158393 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158392(i64 %cont154906, i64 %arg155722, i64 %arg155721); tail call
  ret void
}


define void @lam155874(i64 %env155875, i64 %cont154907, i64 %FC5$lst) {
  %envptr158394 = inttoptr i64 %env155875 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158395 = getelementptr inbounds i64, i64* %envptr158394, i64 1              ; &envptr158394[1]
  %oJO$_37length = load i64, i64* %envptr158395, align 8                             ; load; *envptr158395
  %a154624 = call i64 @prim_null_63(i64 %FC5$lst)                                    ; call prim_null_63
  %cmp158396 = icmp eq i64 %a154624, 15                                              ; false?
  br i1 %cmp158396, label %else158398, label %then158397                             ; if

then158397:
  %arg155726 = add i64 0, 0                                                          ; quoted ()
  %arg155725 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr158399 = inttoptr i64 %cont154907 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158400 = getelementptr inbounds i64, i64* %cloptr158399, i64 0               ; &cloptr158399[0]
  %f158402 = load i64, i64* %i0ptr158400, align 8                                    ; load; *i0ptr158400
  %fptr158401 = inttoptr i64 %f158402 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158401(i64 %cont154907, i64 %arg155726, i64 %arg155725); tail call
  ret void

else158398:
  %a154625 = call i64 @prim_cdr(i64 %FC5$lst)                                        ; call prim_cdr
  %cloptr158403 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr158405 = getelementptr inbounds i64, i64* %cloptr158403, i64 1                ; &eptr158405[1]
  store i64 %cont154907, i64* %eptr158405                                            ; *eptr158405 = %cont154907
  %eptr158404 = getelementptr inbounds i64, i64* %cloptr158403, i64 0                ; &cloptr158403[0]
  %f158406 = ptrtoint void(i64,i64,i64)* @lam155872 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158406, i64* %eptr158404                                               ; store fptr
  %arg155730 = ptrtoint i64* %cloptr158403 to i64                                    ; closure cast; i64* -> i64
  %cloptr158407 = inttoptr i64 %oJO$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr158408 = getelementptr inbounds i64, i64* %cloptr158407, i64 0               ; &cloptr158407[0]
  %f158410 = load i64, i64* %i0ptr158408, align 8                                    ; load; *i0ptr158408
  %fptr158409 = inttoptr i64 %f158410 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158409(i64 %oJO$_37length, i64 %arg155730, i64 %a154625); tail call
  ret void
}


define void @lam155872(i64 %env155873, i64 %_95154908, i64 %a154626) {
  %envptr158411 = inttoptr i64 %env155873 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158412 = getelementptr inbounds i64, i64* %envptr158411, i64 1              ; &envptr158411[1]
  %cont154907 = load i64, i64* %envptr158412, align 8                                ; load; *envptr158412
  %arg155733 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim154909 = call i64 @prim__43(i64 %arg155733, i64 %a154626)                  ; call prim__43
  %arg155735 = add i64 0, 0                                                          ; quoted ()
  %cloptr158413 = inttoptr i64 %cont154907 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158414 = getelementptr inbounds i64, i64* %cloptr158413, i64 0               ; &cloptr158413[0]
  %f158416 = load i64, i64* %i0ptr158414, align 8                                    ; load; *i0ptr158414
  %fptr158415 = inttoptr i64 %f158416 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158415(i64 %cont154907, i64 %arg155735, i64 %retprim154909); tail call
  ret void
}


define void @lam155866(i64 %env155867, i64 %cont154910, i64 %VHZ$_37take) {
  %arg155738 = add i64 0, 0                                                          ; quoted ()
  %cloptr158417 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr158419 = getelementptr inbounds i64, i64* %cloptr158417, i64 1                ; &eptr158419[1]
  store i64 %VHZ$_37take, i64* %eptr158419                                           ; *eptr158419 = %VHZ$_37take
  %eptr158418 = getelementptr inbounds i64, i64* %cloptr158417, i64 0                ; &cloptr158417[0]
  %f158420 = ptrtoint void(i64,i64,i64,i64)* @lam155863 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f158420, i64* %eptr158418                                               ; store fptr
  %arg155737 = ptrtoint i64* %cloptr158417 to i64                                    ; closure cast; i64* -> i64
  %cloptr158421 = inttoptr i64 %cont154910 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158422 = getelementptr inbounds i64, i64* %cloptr158421, i64 0               ; &cloptr158421[0]
  %f158424 = load i64, i64* %i0ptr158422, align 8                                    ; load; *i0ptr158422
  %fptr158423 = inttoptr i64 %f158424 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158423(i64 %cont154910, i64 %arg155738, i64 %arg155737); tail call
  ret void
}


define void @lam155863(i64 %env155864, i64 %cont154911, i64 %TDh$lst, i64 %hun$n) {
  %envptr158425 = inttoptr i64 %env155864 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158426 = getelementptr inbounds i64, i64* %envptr158425, i64 1              ; &envptr158425[1]
  %VHZ$_37take = load i64, i64* %envptr158426, align 8                               ; load; *envptr158426
  %arg155740 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a154618 = call i64 @prim__61(i64 %hun$n, i64 %arg155740)                          ; call prim__61
  %cmp158427 = icmp eq i64 %a154618, 15                                              ; false?
  br i1 %cmp158427, label %else158429, label %then158428                             ; if

then158428:
  %arg155743 = add i64 0, 0                                                          ; quoted ()
  %arg155742 = add i64 0, 0                                                          ; quoted ()
  %cloptr158430 = inttoptr i64 %cont154911 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158431 = getelementptr inbounds i64, i64* %cloptr158430, i64 0               ; &cloptr158430[0]
  %f158433 = load i64, i64* %i0ptr158431, align 8                                    ; load; *i0ptr158431
  %fptr158432 = inttoptr i64 %f158433 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158432(i64 %cont154911, i64 %arg155743, i64 %arg155742); tail call
  ret void

else158429:
  %a154619 = call i64 @prim_null_63(i64 %TDh$lst)                                    ; call prim_null_63
  %cmp158434 = icmp eq i64 %a154619, 15                                              ; false?
  br i1 %cmp158434, label %else158436, label %then158435                             ; if

then158435:
  %arg155747 = add i64 0, 0                                                          ; quoted ()
  %arg155746 = add i64 0, 0                                                          ; quoted ()
  %cloptr158437 = inttoptr i64 %cont154911 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158438 = getelementptr inbounds i64, i64* %cloptr158437, i64 0               ; &cloptr158437[0]
  %f158440 = load i64, i64* %i0ptr158438, align 8                                    ; load; *i0ptr158438
  %fptr158439 = inttoptr i64 %f158440 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158439(i64 %cont154911, i64 %arg155747, i64 %arg155746); tail call
  ret void

else158436:
  %a154620 = call i64 @prim_car(i64 %TDh$lst)                                        ; call prim_car
  %a154621 = call i64 @prim_cdr(i64 %TDh$lst)                                        ; call prim_cdr
  %arg155751 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a154622 = call i64 @prim__45(i64 %hun$n, i64 %arg155751)                          ; call prim__45
  %cloptr158441 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158443 = getelementptr inbounds i64, i64* %cloptr158441, i64 1                ; &eptr158443[1]
  %eptr158444 = getelementptr inbounds i64, i64* %cloptr158441, i64 2                ; &eptr158444[2]
  store i64 %a154620, i64* %eptr158443                                               ; *eptr158443 = %a154620
  store i64 %cont154911, i64* %eptr158444                                            ; *eptr158444 = %cont154911
  %eptr158442 = getelementptr inbounds i64, i64* %cloptr158441, i64 0                ; &cloptr158441[0]
  %f158445 = ptrtoint void(i64,i64,i64)* @lam155859 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158445, i64* %eptr158442                                               ; store fptr
  %arg155755 = ptrtoint i64* %cloptr158441 to i64                                    ; closure cast; i64* -> i64
  %cloptr158446 = inttoptr i64 %VHZ$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr158447 = getelementptr inbounds i64, i64* %cloptr158446, i64 0               ; &cloptr158446[0]
  %f158449 = load i64, i64* %i0ptr158447, align 8                                    ; load; *i0ptr158447
  %fptr158448 = inttoptr i64 %f158449 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158448(i64 %VHZ$_37take, i64 %arg155755, i64 %a154621, i64 %a154622); tail call
  ret void
}


define void @lam155859(i64 %env155860, i64 %_95154912, i64 %a154623) {
  %envptr158450 = inttoptr i64 %env155860 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158451 = getelementptr inbounds i64, i64* %envptr158450, i64 2              ; &envptr158450[2]
  %cont154911 = load i64, i64* %envptr158451, align 8                                ; load; *envptr158451
  %envptr158452 = inttoptr i64 %env155860 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158453 = getelementptr inbounds i64, i64* %envptr158452, i64 1              ; &envptr158452[1]
  %a154620 = load i64, i64* %envptr158453, align 8                                   ; load; *envptr158453
  %retprim154913 = call i64 @prim_cons(i64 %a154620, i64 %a154623)                   ; call prim_cons
  %arg155760 = add i64 0, 0                                                          ; quoted ()
  %cloptr158454 = inttoptr i64 %cont154911 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158455 = getelementptr inbounds i64, i64* %cloptr158454, i64 0               ; &cloptr158454[0]
  %f158457 = load i64, i64* %i0ptr158455, align 8                                    ; load; *i0ptr158455
  %fptr158456 = inttoptr i64 %f158457 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158456(i64 %cont154911, i64 %arg155760, i64 %retprim154913); tail call
  ret void
}


define void @lam155852(i64 %env155853, i64 %cont154914, i64 %wkq$_37map) {
  %arg155763 = add i64 0, 0                                                          ; quoted ()
  %cloptr158458 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr158460 = getelementptr inbounds i64, i64* %cloptr158458, i64 1                ; &eptr158460[1]
  store i64 %wkq$_37map, i64* %eptr158460                                            ; *eptr158460 = %wkq$_37map
  %eptr158459 = getelementptr inbounds i64, i64* %cloptr158458, i64 0                ; &cloptr158458[0]
  %f158461 = ptrtoint void(i64,i64,i64,i64)* @lam155849 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f158461, i64* %eptr158459                                               ; store fptr
  %arg155762 = ptrtoint i64* %cloptr158458 to i64                                    ; closure cast; i64* -> i64
  %cloptr158462 = inttoptr i64 %cont154914 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158463 = getelementptr inbounds i64, i64* %cloptr158462, i64 0               ; &cloptr158462[0]
  %f158465 = load i64, i64* %i0ptr158463, align 8                                    ; load; *i0ptr158463
  %fptr158464 = inttoptr i64 %f158465 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158464(i64 %cont154914, i64 %arg155763, i64 %arg155762); tail call
  ret void
}


define void @lam155849(i64 %env155850, i64 %cont154915, i64 %UEc$f, i64 %r1P$lst) {
  %envptr158466 = inttoptr i64 %env155850 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158467 = getelementptr inbounds i64, i64* %envptr158466, i64 1              ; &envptr158466[1]
  %wkq$_37map = load i64, i64* %envptr158467, align 8                                ; load; *envptr158467
  %a154613 = call i64 @prim_null_63(i64 %r1P$lst)                                    ; call prim_null_63
  %cmp158468 = icmp eq i64 %a154613, 15                                              ; false?
  br i1 %cmp158468, label %else158470, label %then158469                             ; if

then158469:
  %arg155767 = add i64 0, 0                                                          ; quoted ()
  %arg155766 = add i64 0, 0                                                          ; quoted ()
  %cloptr158471 = inttoptr i64 %cont154915 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158472 = getelementptr inbounds i64, i64* %cloptr158471, i64 0               ; &cloptr158471[0]
  %f158474 = load i64, i64* %i0ptr158472, align 8                                    ; load; *i0ptr158472
  %fptr158473 = inttoptr i64 %f158474 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158473(i64 %cont154915, i64 %arg155767, i64 %arg155766); tail call
  ret void

else158470:
  %a154614 = call i64 @prim_car(i64 %r1P$lst)                                        ; call prim_car
  %cloptr158475 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr158477 = getelementptr inbounds i64, i64* %cloptr158475, i64 1                ; &eptr158477[1]
  %eptr158478 = getelementptr inbounds i64, i64* %cloptr158475, i64 2                ; &eptr158478[2]
  %eptr158479 = getelementptr inbounds i64, i64* %cloptr158475, i64 3                ; &eptr158479[3]
  %eptr158480 = getelementptr inbounds i64, i64* %cloptr158475, i64 4                ; &eptr158480[4]
  store i64 %UEc$f, i64* %eptr158477                                                 ; *eptr158477 = %UEc$f
  store i64 %wkq$_37map, i64* %eptr158478                                            ; *eptr158478 = %wkq$_37map
  store i64 %cont154915, i64* %eptr158479                                            ; *eptr158479 = %cont154915
  store i64 %r1P$lst, i64* %eptr158480                                               ; *eptr158480 = %r1P$lst
  %eptr158476 = getelementptr inbounds i64, i64* %cloptr158475, i64 0                ; &cloptr158475[0]
  %f158481 = ptrtoint void(i64,i64,i64)* @lam155847 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158481, i64* %eptr158476                                               ; store fptr
  %arg155771 = ptrtoint i64* %cloptr158475 to i64                                    ; closure cast; i64* -> i64
  %cloptr158482 = inttoptr i64 %UEc$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr158483 = getelementptr inbounds i64, i64* %cloptr158482, i64 0               ; &cloptr158482[0]
  %f158485 = load i64, i64* %i0ptr158483, align 8                                    ; load; *i0ptr158483
  %fptr158484 = inttoptr i64 %f158485 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158484(i64 %UEc$f, i64 %arg155771, i64 %a154614)    ; tail call
  ret void
}


define void @lam155847(i64 %env155848, i64 %_95154916, i64 %a154615) {
  %envptr158486 = inttoptr i64 %env155848 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158487 = getelementptr inbounds i64, i64* %envptr158486, i64 4              ; &envptr158486[4]
  %r1P$lst = load i64, i64* %envptr158487, align 8                                   ; load; *envptr158487
  %envptr158488 = inttoptr i64 %env155848 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158489 = getelementptr inbounds i64, i64* %envptr158488, i64 3              ; &envptr158488[3]
  %cont154915 = load i64, i64* %envptr158489, align 8                                ; load; *envptr158489
  %envptr158490 = inttoptr i64 %env155848 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158491 = getelementptr inbounds i64, i64* %envptr158490, i64 2              ; &envptr158490[2]
  %wkq$_37map = load i64, i64* %envptr158491, align 8                                ; load; *envptr158491
  %envptr158492 = inttoptr i64 %env155848 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158493 = getelementptr inbounds i64, i64* %envptr158492, i64 1              ; &envptr158492[1]
  %UEc$f = load i64, i64* %envptr158493, align 8                                     ; load; *envptr158493
  %a154616 = call i64 @prim_cdr(i64 %r1P$lst)                                        ; call prim_cdr
  %cloptr158494 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158496 = getelementptr inbounds i64, i64* %cloptr158494, i64 1                ; &eptr158496[1]
  %eptr158497 = getelementptr inbounds i64, i64* %cloptr158494, i64 2                ; &eptr158497[2]
  store i64 %cont154915, i64* %eptr158496                                            ; *eptr158496 = %cont154915
  store i64 %a154615, i64* %eptr158497                                               ; *eptr158497 = %a154615
  %eptr158495 = getelementptr inbounds i64, i64* %cloptr158494, i64 0                ; &cloptr158494[0]
  %f158498 = ptrtoint void(i64,i64,i64)* @lam155845 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158498, i64* %eptr158495                                               ; store fptr
  %arg155776 = ptrtoint i64* %cloptr158494 to i64                                    ; closure cast; i64* -> i64
  %cloptr158499 = inttoptr i64 %wkq$_37map to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158500 = getelementptr inbounds i64, i64* %cloptr158499, i64 0               ; &cloptr158499[0]
  %f158502 = load i64, i64* %i0ptr158500, align 8                                    ; load; *i0ptr158500
  %fptr158501 = inttoptr i64 %f158502 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158501(i64 %wkq$_37map, i64 %arg155776, i64 %UEc$f, i64 %a154616); tail call
  ret void
}


define void @lam155845(i64 %env155846, i64 %_95154917, i64 %a154617) {
  %envptr158503 = inttoptr i64 %env155846 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158504 = getelementptr inbounds i64, i64* %envptr158503, i64 2              ; &envptr158503[2]
  %a154615 = load i64, i64* %envptr158504, align 8                                   ; load; *envptr158504
  %envptr158505 = inttoptr i64 %env155846 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158506 = getelementptr inbounds i64, i64* %envptr158505, i64 1              ; &envptr158505[1]
  %cont154915 = load i64, i64* %envptr158506, align 8                                ; load; *envptr158506
  %retprim154918 = call i64 @prim_cons(i64 %a154615, i64 %a154617)                   ; call prim_cons
  %arg155781 = add i64 0, 0                                                          ; quoted ()
  %cloptr158507 = inttoptr i64 %cont154915 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158508 = getelementptr inbounds i64, i64* %cloptr158507, i64 0               ; &cloptr158507[0]
  %f158510 = load i64, i64* %i0ptr158508, align 8                                    ; load; *i0ptr158508
  %fptr158509 = inttoptr i64 %f158510 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158509(i64 %cont154915, i64 %arg155781, i64 %retprim154918); tail call
  ret void
}


define void @lam155840(i64 %env155841, i64 %cont154919, i64 %UAb$_37foldr1) {
  %arg155784 = add i64 0, 0                                                          ; quoted ()
  %cloptr158511 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr158513 = getelementptr inbounds i64, i64* %cloptr158511, i64 1                ; &eptr158513[1]
  store i64 %UAb$_37foldr1, i64* %eptr158513                                         ; *eptr158513 = %UAb$_37foldr1
  %eptr158512 = getelementptr inbounds i64, i64* %cloptr158511, i64 0                ; &cloptr158511[0]
  %f158514 = ptrtoint void(i64,i64,i64,i64,i64)* @lam155837 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f158514, i64* %eptr158512                                               ; store fptr
  %arg155783 = ptrtoint i64* %cloptr158511 to i64                                    ; closure cast; i64* -> i64
  %cloptr158515 = inttoptr i64 %cont154919 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158516 = getelementptr inbounds i64, i64* %cloptr158515, i64 0               ; &cloptr158515[0]
  %f158518 = load i64, i64* %i0ptr158516, align 8                                    ; load; *i0ptr158516
  %fptr158517 = inttoptr i64 %f158518 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158517(i64 %cont154919, i64 %arg155784, i64 %arg155783); tail call
  ret void
}


define void @lam155837(i64 %env155838, i64 %cont154920, i64 %sz6$f, i64 %FBk$acc, i64 %hdZ$lst) {
  %envptr158519 = inttoptr i64 %env155838 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158520 = getelementptr inbounds i64, i64* %envptr158519, i64 1              ; &envptr158519[1]
  %UAb$_37foldr1 = load i64, i64* %envptr158520, align 8                             ; load; *envptr158520
  %a154609 = call i64 @prim_null_63(i64 %hdZ$lst)                                    ; call prim_null_63
  %cmp158521 = icmp eq i64 %a154609, 15                                              ; false?
  br i1 %cmp158521, label %else158523, label %then158522                             ; if

then158522:
  %arg155788 = add i64 0, 0                                                          ; quoted ()
  %cloptr158524 = inttoptr i64 %cont154920 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158525 = getelementptr inbounds i64, i64* %cloptr158524, i64 0               ; &cloptr158524[0]
  %f158527 = load i64, i64* %i0ptr158525, align 8                                    ; load; *i0ptr158525
  %fptr158526 = inttoptr i64 %f158527 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158526(i64 %cont154920, i64 %arg155788, i64 %FBk$acc); tail call
  ret void

else158523:
  %a154610 = call i64 @prim_car(i64 %hdZ$lst)                                        ; call prim_car
  %a154611 = call i64 @prim_cdr(i64 %hdZ$lst)                                        ; call prim_cdr
  %cloptr158528 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158530 = getelementptr inbounds i64, i64* %cloptr158528, i64 1                ; &eptr158530[1]
  %eptr158531 = getelementptr inbounds i64, i64* %cloptr158528, i64 2                ; &eptr158531[2]
  %eptr158532 = getelementptr inbounds i64, i64* %cloptr158528, i64 3                ; &eptr158532[3]
  store i64 %sz6$f, i64* %eptr158530                                                 ; *eptr158530 = %sz6$f
  store i64 %cont154920, i64* %eptr158531                                            ; *eptr158531 = %cont154920
  store i64 %a154610, i64* %eptr158532                                               ; *eptr158532 = %a154610
  %eptr158529 = getelementptr inbounds i64, i64* %cloptr158528, i64 0                ; &cloptr158528[0]
  %f158533 = ptrtoint void(i64,i64,i64)* @lam155835 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158533, i64* %eptr158529                                               ; store fptr
  %arg155795 = ptrtoint i64* %cloptr158528 to i64                                    ; closure cast; i64* -> i64
  %cloptr158534 = inttoptr i64 %UAb$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr158535 = getelementptr inbounds i64, i64* %cloptr158534, i64 0               ; &cloptr158534[0]
  %f158537 = load i64, i64* %i0ptr158535, align 8                                    ; load; *i0ptr158535
  %fptr158536 = inttoptr i64 %f158537 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158536(i64 %UAb$_37foldr1, i64 %arg155795, i64 %sz6$f, i64 %FBk$acc, i64 %a154611); tail call
  ret void
}


define void @lam155835(i64 %env155836, i64 %_95154921, i64 %a154612) {
  %envptr158538 = inttoptr i64 %env155836 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158539 = getelementptr inbounds i64, i64* %envptr158538, i64 3              ; &envptr158538[3]
  %a154610 = load i64, i64* %envptr158539, align 8                                   ; load; *envptr158539
  %envptr158540 = inttoptr i64 %env155836 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158541 = getelementptr inbounds i64, i64* %envptr158540, i64 2              ; &envptr158540[2]
  %cont154920 = load i64, i64* %envptr158541, align 8                                ; load; *envptr158541
  %envptr158542 = inttoptr i64 %env155836 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158543 = getelementptr inbounds i64, i64* %envptr158542, i64 1              ; &envptr158542[1]
  %sz6$f = load i64, i64* %envptr158543, align 8                                     ; load; *envptr158543
  %cloptr158544 = inttoptr i64 %sz6$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr158545 = getelementptr inbounds i64, i64* %cloptr158544, i64 0               ; &cloptr158544[0]
  %f158547 = load i64, i64* %i0ptr158545, align 8                                    ; load; *i0ptr158545
  %fptr158546 = inttoptr i64 %f158547 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158546(i64 %sz6$f, i64 %cont154920, i64 %a154610, i64 %a154612); tail call
  ret void
}


define void @lam155832(i64 %env155833, i64 %cont154923, i64 %PnQ$y) {
  %arg155802 = add i64 0, 0                                                          ; quoted ()
  %cloptr158548 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr158550 = getelementptr inbounds i64, i64* %cloptr158548, i64 1                ; &eptr158550[1]
  store i64 %PnQ$y, i64* %eptr158550                                                 ; *eptr158550 = %PnQ$y
  %eptr158549 = getelementptr inbounds i64, i64* %cloptr158548, i64 0                ; &cloptr158548[0]
  %f158551 = ptrtoint void(i64,i64,i64)* @lam155829 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158551, i64* %eptr158549                                               ; store fptr
  %arg155801 = ptrtoint i64* %cloptr158548 to i64                                    ; closure cast; i64* -> i64
  %cloptr158552 = inttoptr i64 %cont154923 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr158553 = getelementptr inbounds i64, i64* %cloptr158552, i64 0               ; &cloptr158552[0]
  %f158555 = load i64, i64* %i0ptr158553, align 8                                    ; load; *i0ptr158553
  %fptr158554 = inttoptr i64 %f158555 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158554(i64 %cont154923, i64 %arg155802, i64 %arg155801); tail call
  ret void
}


define void @lam155829(i64 %env155830, i64 %cont154924, i64 %EQ3$f) {
  %envptr158556 = inttoptr i64 %env155830 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158557 = getelementptr inbounds i64, i64* %envptr158556, i64 1              ; &envptr158556[1]
  %PnQ$y = load i64, i64* %envptr158557, align 8                                     ; load; *envptr158557
  %cloptr158558 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158560 = getelementptr inbounds i64, i64* %cloptr158558, i64 1                ; &eptr158560[1]
  %eptr158561 = getelementptr inbounds i64, i64* %cloptr158558, i64 2                ; &eptr158561[2]
  store i64 %EQ3$f, i64* %eptr158560                                                 ; *eptr158560 = %EQ3$f
  store i64 %PnQ$y, i64* %eptr158561                                                 ; *eptr158561 = %PnQ$y
  %eptr158559 = getelementptr inbounds i64, i64* %cloptr158558, i64 0                ; &cloptr158558[0]
  %f158562 = ptrtoint void(i64,i64)* @lam155827 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f158562, i64* %eptr158559                                               ; store fptr
  %arg155804 = ptrtoint i64* %cloptr158558 to i64                                    ; closure cast; i64* -> i64
  %cloptr158563 = inttoptr i64 %EQ3$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr158564 = getelementptr inbounds i64, i64* %cloptr158563, i64 0               ; &cloptr158563[0]
  %f158566 = load i64, i64* %i0ptr158564, align 8                                    ; load; *i0ptr158564
  %fptr158565 = inttoptr i64 %f158566 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158565(i64 %EQ3$f, i64 %cont154924, i64 %arg155804) ; tail call
  ret void
}


define void @lam155827(i64 %env155828, i64 %kIv$args154926) {
  %envptr158567 = inttoptr i64 %env155828 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158568 = getelementptr inbounds i64, i64* %envptr158567, i64 2              ; &envptr158567[2]
  %PnQ$y = load i64, i64* %envptr158568, align 8                                     ; load; *envptr158568
  %envptr158569 = inttoptr i64 %env155828 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158570 = getelementptr inbounds i64, i64* %envptr158569, i64 1              ; &envptr158569[1]
  %EQ3$f = load i64, i64* %envptr158570, align 8                                     ; load; *envptr158570
  %cont154925 = call i64 @prim_car(i64 %kIv$args154926)                              ; call prim_car
  %kIv$args = call i64 @prim_cdr(i64 %kIv$args154926)                                ; call prim_cdr
  %cloptr158571 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr158573 = getelementptr inbounds i64, i64* %cloptr158571, i64 1                ; &eptr158573[1]
  %eptr158574 = getelementptr inbounds i64, i64* %cloptr158571, i64 2                ; &eptr158574[2]
  %eptr158575 = getelementptr inbounds i64, i64* %cloptr158571, i64 3                ; &eptr158575[3]
  store i64 %kIv$args, i64* %eptr158573                                              ; *eptr158573 = %kIv$args
  store i64 %cont154925, i64* %eptr158574                                            ; *eptr158574 = %cont154925
  store i64 %EQ3$f, i64* %eptr158575                                                 ; *eptr158575 = %EQ3$f
  %eptr158572 = getelementptr inbounds i64, i64* %cloptr158571, i64 0                ; &cloptr158571[0]
  %f158576 = ptrtoint void(i64,i64,i64)* @lam155825 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158576, i64* %eptr158572                                               ; store fptr
  %arg155810 = ptrtoint i64* %cloptr158571 to i64                                    ; closure cast; i64* -> i64
  %cloptr158577 = inttoptr i64 %PnQ$y to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr158578 = getelementptr inbounds i64, i64* %cloptr158577, i64 0               ; &cloptr158577[0]
  %f158580 = load i64, i64* %i0ptr158578, align 8                                    ; load; *i0ptr158578
  %fptr158579 = inttoptr i64 %f158580 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158579(i64 %PnQ$y, i64 %arg155810, i64 %PnQ$y)      ; tail call
  ret void
}


define void @lam155825(i64 %env155826, i64 %_95154927, i64 %a154607) {
  %envptr158581 = inttoptr i64 %env155826 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158582 = getelementptr inbounds i64, i64* %envptr158581, i64 3              ; &envptr158581[3]
  %EQ3$f = load i64, i64* %envptr158582, align 8                                     ; load; *envptr158582
  %envptr158583 = inttoptr i64 %env155826 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158584 = getelementptr inbounds i64, i64* %envptr158583, i64 2              ; &envptr158583[2]
  %cont154925 = load i64, i64* %envptr158584, align 8                                ; load; *envptr158584
  %envptr158585 = inttoptr i64 %env155826 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158586 = getelementptr inbounds i64, i64* %envptr158585, i64 1              ; &envptr158585[1]
  %kIv$args = load i64, i64* %envptr158586, align 8                                  ; load; *envptr158586
  %cloptr158587 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr158589 = getelementptr inbounds i64, i64* %cloptr158587, i64 1                ; &eptr158589[1]
  %eptr158590 = getelementptr inbounds i64, i64* %cloptr158587, i64 2                ; &eptr158590[2]
  store i64 %kIv$args, i64* %eptr158589                                              ; *eptr158589 = %kIv$args
  store i64 %cont154925, i64* %eptr158590                                            ; *eptr158590 = %cont154925
  %eptr158588 = getelementptr inbounds i64, i64* %cloptr158587, i64 0                ; &cloptr158587[0]
  %f158591 = ptrtoint void(i64,i64,i64)* @lam155823 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f158591, i64* %eptr158588                                               ; store fptr
  %arg155813 = ptrtoint i64* %cloptr158587 to i64                                    ; closure cast; i64* -> i64
  %cloptr158592 = inttoptr i64 %a154607 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr158593 = getelementptr inbounds i64, i64* %cloptr158592, i64 0               ; &cloptr158592[0]
  %f158595 = load i64, i64* %i0ptr158593, align 8                                    ; load; *i0ptr158593
  %fptr158594 = inttoptr i64 %f158595 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158594(i64 %a154607, i64 %arg155813, i64 %EQ3$f)    ; tail call
  ret void
}


define void @lam155823(i64 %env155824, i64 %_95154928, i64 %a154608) {
  %envptr158596 = inttoptr i64 %env155824 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158597 = getelementptr inbounds i64, i64* %envptr158596, i64 2              ; &envptr158596[2]
  %cont154925 = load i64, i64* %envptr158597, align 8                                ; load; *envptr158597
  %envptr158598 = inttoptr i64 %env155824 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr158599 = getelementptr inbounds i64, i64* %envptr158598, i64 1              ; &envptr158598[1]
  %kIv$args = load i64, i64* %envptr158599, align 8                                  ; load; *envptr158599
  %cps_45lst154929 = call i64 @prim_cons(i64 %cont154925, i64 %kIv$args)             ; call prim_cons
  %cloptr158600 = inttoptr i64 %a154608 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr158601 = getelementptr inbounds i64, i64* %cloptr158600, i64 0               ; &cloptr158600[0]
  %f158603 = load i64, i64* %i0ptr158601, align 8                                    ; load; *i0ptr158601
  %fptr158602 = inttoptr i64 %f158603 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr158602(i64 %a154608, i64 %cps_45lst154929)          ; tail call
  ret void
}





@sym157149 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
