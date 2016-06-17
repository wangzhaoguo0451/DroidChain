.class final Lauw;
.super Laum;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laum",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Laqx;

.field private synthetic b:Lauv;


# direct methods
.method constructor <init>(Lauv;Lask;Laug;Ljava/lang/String;Ljava/lang/String;Laqx;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lauw;->b:Lauv;

    iput-object p6, p0, Lauw;->a:Laqx;

    invoke-direct {p0, p2, p3, p4, p5}, Laum;-><init>(Lask;Laug;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()Laqx;
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lauw;->b:Lauv;

    iget-object v0, v0, Lauv;->b:Larv;

    invoke-virtual {v0}, Larv;->a()Larx;

    move-result-object v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lauw;->a:Laqx;

    invoke-virtual {v0}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lanb;->a(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v2

    sget-object v3, Laux;->a:[I

    invoke-virtual {v2}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong image format"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Larx;->close()V

    throw v0

    .line 109
    :pswitch_0
    :try_start_1
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/nativecode/WebpTranscoder;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 110
    :goto_0
    invoke-virtual {v1}, Larx;->c()Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lakk;->a(Ljava/io/Closeable;)Lakk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 113
    :try_start_2
    new-instance v0, Laqx;

    invoke-direct {v0, v2}, Laqx;-><init>(Lakk;)V

    .line 114
    iget-object v3, p0, Lauw;->a:Laqx;

    invoke-virtual {v0, v3}, Laqx;->b(Laqx;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    :try_start_3
    invoke-static {v2}, Lakk;->c(Lakk;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    invoke-virtual {v1}, Larx;->close()V

    return-object v0

    .line 109
    :pswitch_1
    :try_start_4
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/nativecode/WebpTranscoder;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 117
    :catchall_1
    move-exception v0

    invoke-static {v2}, Lakk;->c(Lakk;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lauw;->a:Laqx;

    invoke-static {v0}, Laqx;->d(Laqx;)V

    .line 138
    invoke-super {p0, p1}, Laum;->a(Ljava/lang/Exception;)V

    .line 139
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    check-cast p1, Laqx;

    iget-object v0, p0, Lauw;->a:Laqx;

    invoke-static {v0}, Laqx;->d(Laqx;)V

    invoke-super {p0, p1}, Laum;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lauw;->a:Laqx;

    invoke-static {v0}, Laqx;->d(Laqx;)V

    .line 144
    invoke-super {p0}, Laum;->b()V

    .line 145
    return-void
.end method

.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    check-cast p1, Laqx;

    invoke-static {p1}, Laqx;->d(Laqx;)V

    return-void
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lauw;->d()Laqx;

    move-result-object v0

    return-object v0
.end method
