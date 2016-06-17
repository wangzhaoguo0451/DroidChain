.class public Lcom/wandoujia/p4/jni/NativeDiffDecoder;
.super Ljava/lang/Object;
.source "NativeDiffDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    const-string v0, "DiffDecoder"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadLibrarySafety(Landroid/content/Context;Ljava/lang/String;)Z

    .line 16
    invoke-static {p1, p2, p3}, Lcom/wandoujia/p4/jni/NativeDiffDecoder;->decodeNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private static native decodeNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
