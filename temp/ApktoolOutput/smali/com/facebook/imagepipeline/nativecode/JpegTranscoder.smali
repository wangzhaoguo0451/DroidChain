.class public Lcom/facebook/imagepipeline/nativecode/JpegTranscoder;
.super Ljava/lang/Object;
.source "JpegTranscoder.java"


# annotations
.annotation build Laka;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 26
    invoke-static {}, Larz;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 58
    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 59
    const/16 v0, 0x10

    if-gt p2, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ld;->a(Z)V

    .line 60
    invoke-static {v1}, Ld;->a(Z)V

    .line 61
    invoke-static {v1}, Ld;->a(Z)V

    .line 62
    invoke-static {v1}, Ld;->a(Z)V

    .line 63
    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    :goto_2
    const-string v0, "no transformation requested"

    invoke-static {v1, v0}, Ld;->a(ZLjava/lang/Object;)V

    .line 66
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    const/16 v3, 0x55

    invoke-static {v0, v1, v2, p2, v3}, Lcom/facebook/imagepipeline/nativecode/JpegTranscoder;->nativeTranscodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    .line 72
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v0, v2

    .line 59
    goto :goto_1

    :cond_2
    move v1, v2

    .line 63
    goto :goto_2
.end method

.method private static native nativeTranscodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .annotation build Laka;
    .end annotation
.end method
