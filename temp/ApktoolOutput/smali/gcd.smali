.class public Lgcd;
.super Ljava/lang/Object;
.source "Subscribable.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;


# instance fields
.field transient source:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doSubscribe()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public doUnsubscribe()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lgcd;->source:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "SUBSCRIBE"

    return-object v0
.end method

.method public hasSubscribed()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public promptSubscribeResult(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 133
    if-eqz p1, :cond_1

    .line 134
    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p0}, Lgcd;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0586

    sget v2, Ldxa;->b:I

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;II)V

    .line 146
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lgcd;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0585

    sget v2, Ldxa;->b:I

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 140
    :cond_1
    if-eqz p2, :cond_2

    .line 141
    invoke-virtual {p0}, Lgcd;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e05be

    sget v2, Ldxa;->b:I

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Lgcd;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e05bc

    sget v2, Ldxa;->b:I

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public setSource(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lgcd;->source:Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    .line 36
    return-void
.end method

.method public setSubscribeStatus(Z)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public subscribe()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 54
    new-instance v3, Lcom/wandoujia/account/AccountParams;

    const-string v4, "subscribe"

    invoke-direct {v3, v4, v2}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    .line 55
    sget-object v4, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v4, v3, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 56
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lgcc;

    invoke-direct {v5, v0}, Lgcc;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v4, v3, v5}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;Lcmk;)V

    .line 64
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lgcd;->doSubscribe()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 71
    :goto_1
    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p0, v1}, Lgcd;->setSubscribeStatus(Z)V

    .line 73
    invoke-virtual {p0, v1, v1}, Lgcd;->promptSubscribeResult(ZZ)V

    .line 80
    :cond_1
    :goto_2
    return v0

    :cond_2
    move v0, v2

    .line 66
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {}, Lchv;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {p0, v1, v2}, Lgcd;->promptSubscribeResult(ZZ)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unsubscribe()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Lgcd;->doUnsubscribe()Z

    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, v2}, Lgcd;->setSubscribeStatus(Z)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Lgcd;->promptSubscribeResult(ZZ)V

    .line 99
    :goto_0
    return v0

    .line 97
    :cond_0
    invoke-virtual {p0, v2, v2}, Lgcd;->promptSubscribeResult(ZZ)V

    goto :goto_0
.end method
