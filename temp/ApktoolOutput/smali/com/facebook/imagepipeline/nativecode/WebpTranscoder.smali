.class public Lcom/facebook/imagepipeline/nativecode/WebpTranscoder;
.super Ljava/lang/Object;
.source "WebpTranscoder.java"


# annotations
.annotation build Laka;
.end annotation


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v3, 0x11

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    invoke-static {}, Larz;->a()V

    .line 39
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    sput-boolean v0, Lcom/facebook/imagepipeline/nativecode/WebpTranscoder;->a:Z

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v3, :cond_2

    const-string v2, "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA=="

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v4, v2

    invoke-static {v2, v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v1, :cond_0

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v2, v1, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/nativecode/WebpTranscoder;->nativeTranscodeWebpToJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 102
    return-void
.end method

.method public static a(Lcom/facebook/imageformat/ImageFormat;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    sget-object v1, Lasa;->a:[I

    invoke-virtual {p0}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 86
    invoke-static {v0}, Ld;->a(Z)V

    .line 87
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 78
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :pswitch_2
    sget-boolean v0, Lcom/facebook/imagepipeline/nativecode/WebpTranscoder;->a:Z

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/nativecode/WebpTranscoder;->nativeTranscodeWebpToPng(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 113
    return-void
.end method

.method private static native nativeTranscodeWebpToJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .annotation build Laka;
    .end annotation
.end method

.method private static native nativeTranscodeWebpToPng(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .annotation build Laka;
    .end annotation
.end method
