.class public final Ldtl;
.super Lgcd;
.source "JupiterPublisher.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/model/Model;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lgcd;-><init>()V

    .line 34
    iput-object p1, p0, Ldtl;->b:Lcom/wandoujia/ripple_framework/model/Model;

    .line 35
    iput-object p2, p0, Ldtl;->a:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic a(Ldtl;Ljava/util/concurrent/CountDownLatch;Ldtr;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 28
    iget-object v0, p0, Ldtl;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldtl;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ld;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, v6}, Ldtl;->b(Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V

    :goto_1
    return-void

    :cond_0
    new-instance v3, Lhoq;

    invoke-direct {v3, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e023a

    new-instance v4, Ldto;

    invoke-direct {v4, p1, p2}, Ldto;-><init>(Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    invoke-virtual {v3, v0, v4}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    const v0, 0x7f0e0162

    new-instance v4, Ldtp;

    invoke-direct {v4, p1, p2}, Ldtp;-><init>(Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    invoke-virtual {v3, v0, v4}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    new-instance v0, Ldtq;

    invoke-direct {v0, p1, p2}, Ldtq;-><init>(Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    invoke-virtual {v3, v0}, Lhoq;->a(Landroid/content/DialogInterface$OnDismissListener;)Lhoq;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f030238

    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e05bd

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Ldtl;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v5

    iget-object v5, v5, Lcom/wandoujia/api/proto/PublisherDetail;->nick:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Lhoq;->a(Landroid/view/View;)Lhoq;

    invoke-virtual {v3}, Lhoq;->b()Lhoj;

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Ldtl;->b(Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V

    return-void
.end method

.method private static b(Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-interface {p1, p2}, Ldtr;->a(Z)V

    .line 109
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 110
    return-void
.end method


# virtual methods
.method public final doSubscribe()Z
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    iget-object v1, p0, Ldtl;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/PublisherDetail;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    invoke-virtual {p0}, Ldtl;->getSource()Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public final doUnsubscribe()Z
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    iget-object v1, p0, Ldtl;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/PublisherDetail;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    invoke-virtual {p0}, Ldtl;->getSource()Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ldtl;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ldtl;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/PublisherDetail;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final hasSubscribed()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ldtl;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0}, Ldux;->a(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v0

    return v0
.end method

.method public final setSubscribeStatus(Z)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Ldtl;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0, p1}, Ldux;->a(Lcom/wandoujia/ripple_framework/model/Model;Z)V

    .line 85
    return-void
.end method

.method public final unsubscribe()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 56
    new-array v3, v0, [Z

    .line 57
    aput-boolean v1, v3, v1

    .line 58
    new-instance v4, Ldtm;

    invoke-direct {v4, v3}, Ldtm;-><init>([Z)V

    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Ldtn;

    invoke-direct {v6, p0, v2, v4}, Ldtn;-><init>(Ldtl;Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    aget-boolean v2, v3, v1

    if-eqz v2, :cond_0

    invoke-super {p0}, Lgcd;->unsubscribe()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
