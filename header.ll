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
