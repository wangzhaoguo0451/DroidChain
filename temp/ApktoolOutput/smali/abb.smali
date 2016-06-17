.class public final Labb;
.super Landroid/os/Handler;
.source "Picasso.java"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/squareup/picasso/Request;

    .line 62
    iget-object v1, v0, Lcom/alipay/squareup/picasso/Request;->h:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/alipay/squareup/picasso/Request;->l:Z

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, v0, Lcom/alipay/squareup/picasso/Request;->a:Lcom/alipay/squareup/picasso/Picasso;

    .line 67
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 82
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown handler message received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 69
    :pswitch_0
    iget-object v1, v1, Lcom/alipay/squareup/picasso/Picasso;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/squareup/picasso/Request;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v0}, Lcom/alipay/squareup/picasso/Request;->b()V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-boolean v2, v0, Lcom/alipay/squareup/picasso/Request;->l:Z

    if-nez v2, :cond_0

    iget v2, v0, Lcom/alipay/squareup/picasso/Request;->k:I

    if-lez v2, :cond_2

    iget v2, v0, Lcom/alipay/squareup/picasso/Request;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/alipay/squareup/picasso/Request;->k:I

    invoke-virtual {v1, v0}, Lcom/alipay/squareup/picasso/Picasso;->a(Lcom/alipay/squareup/picasso/Request;)V

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/alipay/squareup/picasso/Picasso;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/squareup/picasso/Request;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/squareup/picasso/Request;->c()V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v1, v1, Lcom/alipay/squareup/picasso/Picasso;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/squareup/picasso/Request;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/squareup/picasso/Request;->c()V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
