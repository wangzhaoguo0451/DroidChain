.class final Lauy;
.super Lass;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lass",
        "<",
        "Laqx;",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Laue;

.field private b:Lcom/facebook/common/util/TriState;

.field private synthetic c:Lauv;


# direct methods
.method public constructor <init>(Lauv;Lask;Laue;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Laqx;",
            ">;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lauy;->c:Lauv;

    .line 65
    invoke-direct {p0, p2}, Lass;-><init>(Lask;)V

    .line 66
    iput-object p3, p0, Lauy;->a:Laue;

    .line 67
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    iput-object v0, p0, Lauy;->b:Lcom/facebook/common/util/TriState;

    .line 68
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p1, Laqx;

    iget-object v0, p0, Lauy;->b:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lanb;->a(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Laux;->a:[I

    invoke-virtual {v0}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    :goto_0
    iput-object v0, p0, Lauy;->b:Lcom/facebook/common/util/TriState;

    :cond_0
    iget-object v0, p0, Lauy;->b:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    if-eq v0, v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lauy;->b:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lauy;->c:Lauv;

    iget-object v2, p0, Lass;->d:Lask;

    iget-object v5, p0, Lauy;->a:Laue;

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Laqx;->a(Laqx;)Laqx;

    move-result-object v6

    new-instance v0, Lauw;

    invoke-interface {v5}, Laue;->c()Laug;

    move-result-object v3

    const-string v4, "WebpTranscodeProducer"

    invoke-interface {v5}, Laue;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lauw;-><init>(Lauv;Lask;Laug;Ljava/lang/String;Ljava/lang/String;Laqx;)V

    iget-object v1, v1, Lauv;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    invoke-static {v0}, Lcom/facebook/imagepipeline/nativecode/WebpTranscoder;->a(Lcom/facebook/imageformat/ImageFormat;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1, p2}, Lask;->b(Ljava/lang/Object;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
