.class public Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;
.super Lgcd;
.source "SubscribePublisher.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x691eef5fc5ed16b3L


# instance fields
.field public avatar:Ljava/lang/String;

.field public circleAvatar:Ljava/lang/String;

.field public createTime:J

.field public defaultSelected:Z

.field public description:Ljava/lang/String;

.field public feedCount:I

.field public fullDescription:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public relatedApp:Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher$RelatedApp;

.field public subscribed:Z

.field public subscribedCount:I

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lgcd;-><init>()V

    return-void
.end method

.method public static synthetic access$000$4a141352(Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;Ljava/util/concurrent/CountDownLatch;Ldtr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->showUnsubscribeTipsInMainThread$400df14d(Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    return-void
.end method

.method public static synthetic access$100$790f63e(Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->notifyCaller$3e507a81(Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V

    return-void
.end method

.method private notifyCaller$3e507a81(Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-interface {p2, p3}, Ldtr;->a(Z)V

    .line 128
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 129
    return-void
.end method

.method private showUnsubscribeTips$400df14d(Ljava/util/concurrent/CountDownLatch;Ldtr;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgcm;

    invoke-direct {v1, p0, p1, p2}, Lgcm;-><init>(Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method private showUnsubscribeTipsInMainThread$400df14d(Ljava/util/concurrent/CountDownLatch;Ldtr;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 134
    invoke-static {v5}, Ld;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0, p1, p2, v6}, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->notifyCaller$3e507a81(Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V

    .line 171
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v1, Lhoq;

    invoke-direct {v1, v5}, Lhoq;-><init>(Landroid/content/Context;)V

    .line 142
    const v0, 0x7f0e023a

    new-instance v2, Lgcn;

    invoke-direct {v2, p0, p1, p2}, Lgcn;-><init>(Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    invoke-virtual {v1, v0, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 150
    const v0, 0x7f0e0162

    new-instance v2, Lgco;

    invoke-direct {v2, p0, p1, p2}, Lgco;-><init>(Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    invoke-virtual {v1, v0, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 158
    new-instance v0, Lgcp;

    invoke-direct {v0, p0, p1, p2}, Lgcp;-><init>(Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    invoke-virtual {v1, v0}, Lhoq;->a(Landroid/content/DialogInterface$OnDismissListener;)Lhoq;

    .line 165
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 166
    const v2, 0x7f030238

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    const v2, 0x7f0e05bd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->nick:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v5, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v1, v0}, Lhoq;->a(Landroid/view/View;)Lhoq;

    .line 170
    invoke-virtual {v1}, Lhoq;->b()Lhoj;

    goto :goto_0
.end method


# virtual methods
.method public doSubscribe()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    invoke-virtual {p0}, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->getSource()Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;

    aput-object p0, v3, v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    if-gtz v0, :cond_0

    aget-object v5, v3, v1

    iget-object v5, v5, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v4}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public doUnsubscribe()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    invoke-virtual {p0}, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->getSource()Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;

    aput-object p0, v3, v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    if-gtz v0, :cond_0

    aget-object v5, v3, v1

    iget-object v5, v5, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v4}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->tags:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->tags:Ljava/util/List;

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSubscribed()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->subscribed:Z

    return v0
.end method

.method public setSubscribeStatus(Z)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->subscribed:Z

    .line 109
    return-void
.end method

.method public unsubscribe()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 80
    new-array v3, v0, [Z

    .line 81
    aput-boolean v1, v3, v1

    .line 82
    new-instance v4, Lgcl;

    invoke-direct {v4, v3}, Lgcl;-><init>([Z)V

    invoke-direct {p0, v2, v4}, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->showUnsubscribeTips$400df14d(Ljava/util/concurrent/CountDownLatch;Ldtr;)V

    .line 89
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
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
