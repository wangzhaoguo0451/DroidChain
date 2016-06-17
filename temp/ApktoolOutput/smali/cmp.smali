.class public Lcmp;
.super Ljava/lang/Object;
.source "AccountOperation.java"


# instance fields
.field protected final a:Lcmg;

.field protected b:Z

.field protected c:Ljava/lang/String;

.field protected d:Lcmm;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcmp;->b:Z

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcmp;->e:Landroid/os/Handler;

    .line 27
    iput-object p2, p0, Lcmp;->a:Lcmg;

    .line 28
    iput-object p1, p0, Lcmp;->c:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcmp;->d:Lcmm;

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/account/dto/AccountResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcmp;->a:Lcmg;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcmp;->e:Landroid/os/Handler;

    new-instance v1, Lcmq;

    invoke-direct {v1, p0, p1}, Lcmq;-><init>(Lcmp;Lcom/wandoujia/account/dto/AccountResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcmp;->d:Lcmm;

    if-nez v0, :cond_0

    move v0, v1

    .line 44
    :goto_0
    return v0

    .line 41
    :cond_0
    sget-object v0, Ld;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    .line 42
    goto :goto_0

    :cond_1
    move v0, v1

    .line 41
    goto :goto_1

    :cond_2
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcmp;->a:Lcmg;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcmp;->e:Landroid/os/Handler;

    new-instance v1, Lcmr;

    invoke-direct {v1, p0}, Lcmr;-><init>(Lcmp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    :cond_0
    return-void
.end method
