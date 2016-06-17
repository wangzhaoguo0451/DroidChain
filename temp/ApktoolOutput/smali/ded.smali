.class public final Lded;
.super Lddw;
.source "JupiterFavoritable.java"


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/model/Model;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lddw;-><init>()V

    .line 32
    iput-object p1, p0, Lded;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lded;->a:Lcom/wandoujia/ripple_framework/model/Model;

    .line 34
    return-void
.end method

.method private a(I)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lded;->a:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_0

    move v0, v2

    .line 129
    :goto_0
    return v0

    .line 89
    :cond_0
    new-array v3, v7, [Z

    .line 90
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 92
    iget-object v0, p0, Lded;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 96
    :goto_1
    iget-object v1, p0, Lded;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v5, Ldeg;->a:[I

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_2
    new-instance v5, Ldee;

    invoke-direct {v5, v3, v4}, Ldee;-><init>([ZLjava/util/concurrent/CountDownLatch;)V

    .line 107
    new-instance v6, Ldef;

    invoke-direct {v6, v3, v4}, Ldef;-><init>([ZLjava/util/concurrent/CountDownLatch;)V

    .line 115
    if-ne p1, v7, :cond_2

    .line 116
    sget-object v7, Lham;->f:Lham;

    invoke-virtual {v7}, Lham;->b()Leqr;

    move-result-object v7

    invoke-static {v1, v0, v7, v5, v6}, Ldec;->a(Ljava/lang/String;Ljava/lang/String;Leqr;Lagu;Lagt;)Ldec;

    move-result-object v0

    invoke-virtual {v0}, Ldec;->j()V

    .line 126
    :goto_3
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 127
    const/4 v0, 0x0

    aget-boolean v0, v3, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lded;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    goto :goto_1

    .line 96
    :pswitch_0
    sget-object v1, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 120
    :cond_2
    sget-object v7, Lham;->f:Lham;

    invoke-virtual {v7}, Lham;->b()Leqr;

    move-result-object v7

    invoke-static {v1, v0, v7, v5, v6}, Ldec;->b(Ljava/lang/String;Ljava/lang/String;Leqr;Lagu;Lagt;)Ldec;

    move-result-object v0

    invoke-virtual {v0}, Ldec;->j()V

    goto :goto_3

    .line 129
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final doSubscribe()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lded;->a(I)Z

    move-result v0

    return v0
.end method

.method protected final doUnsubscribe()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lded;->a(I)Z

    move-result v0

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lded;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lded;->a:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lded;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected final promptSubscribeResult(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 58
    if-eqz p1, :cond_1

    .line 59
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p0}, Lded;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00db

    sget v2, Ldxa;->b:I

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;II)V

    .line 71
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lded;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00da

    sget v2, Ldxa;->b:I

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 65
    :cond_1
    if-eqz p2, :cond_2

    .line 66
    invoke-virtual {p0}, Lded;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0515

    sget v2, Ldxa;->b:I

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lded;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0514

    sget v2, Ldxa;->b:I

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public final setSubscribeStatus(Z)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lded;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0, p1}, Ldux;->b(Lcom/wandoujia/ripple_framework/model/Model;Z)V

    .line 76
    return-void
.end method
