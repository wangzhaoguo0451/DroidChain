.class public abstract Lddw;
.super Lgcd;
.source "AbstractFavoritable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgcd;-><init>()V

    return-void
.end method

.method static synthetic a(Lddw;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lddw;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 28
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->POPUP_BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->PROMOTE_SIGNUP:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "promote_signup"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V

    return-void
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 79
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 80
    new-array v2, v2, [Z

    .line 81
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    new-instance v4, Lddx;

    invoke-direct {v4, p0, v2, v1}, Lddx;-><init>(Lddw;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 125
    const/4 v1, 0x0

    aget-boolean v0, v2, v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lddw;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lddw;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private b()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-static {}, Lchv;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :goto_0
    return v0

    .line 137
    :cond_0
    invoke-direct {p0}, Lddw;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 139
    new-array v0, v0, [Z

    .line 140
    new-instance v3, Lcom/wandoujia/account/AccountParams;

    const-string v4, "favorite_subscribe"

    invoke-direct {v3, v4, v1}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    .line 141
    sget-object v4, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v4, v3, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 142
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ldeb;

    invoke-direct {v5, v0, v2}, Ldeb;-><init>([ZLjava/util/concurrent/CountDownLatch;)V

    invoke-static {v4, v3, v5}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;Lcmk;)V

    .line 151
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 152
    const/4 v2, 0x0

    aget-boolean v0, v0, v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 154
    goto :goto_0
.end method


# virtual methods
.method protected abstract doSubscribe()Z
.end method

.method protected abstract doUnsubscribe()Z
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "FAVORITE"

    return-object v0
.end method

.method public subscribe()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Lddw;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lddw;->doSubscribe()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 42
    :goto_0
    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p0, v1}, Lddw;->setSubscribeStatus(Z)V

    .line 44
    invoke-virtual {p0, v1, v1}, Lddw;->promptSubscribeResult(ZZ)V

    .line 50
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 40
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {}, Lchv;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p0, v1, v2}, Lddw;->promptSubscribeResult(ZZ)V

    goto :goto_1
.end method
