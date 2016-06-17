.class final Labk;
.super Lcom/alipay/squareup/picasso/Request;
.source "TargetRequest.java"


# instance fields
.field private final m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/squareup/picasso/Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alipay/squareup/picasso/Picasso;Landroid/net/Uri;Lcom/alipay/squareup/picasso/Target;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/squareup/picasso/Picasso;",
            "Landroid/net/Uri;",
            "Lcom/alipay/squareup/picasso/Target;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/squareup/picasso/Request;-><init>(Lcom/alipay/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Labk;->m:Ljava/lang/ref/WeakReference;

    .line 17
    return-void
.end method

.method private d()Lcom/alipay/squareup/picasso/Target;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Labk;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/squareup/picasso/Target;

    return-object v0
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Labk;->d()Lcom/alipay/squareup/picasso/Target;

    move-result-object v0

    return-object v0
.end method

.method final b()V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Labk;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Attempted to complete request with no result!\n%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 29
    :cond_0
    invoke-direct {p0}, Labk;->d()Lcom/alipay/squareup/picasso/Target;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    iget-object v1, p0, Labk;->i:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/alipay/squareup/picasso/Target;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 32
    iget-object v0, p0, Labk;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target callback must not recycle bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Labk;->d()Lcom/alipay/squareup/picasso/Target;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-interface {v0}, Lcom/alipay/squareup/picasso/Target;->onError()V

    goto :goto_0
.end method
