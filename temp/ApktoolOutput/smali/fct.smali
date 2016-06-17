.class final Lfct;
.super Ljava/lang/Object;
.source "CommunityDeleteAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfcq;


# direct methods
.method private constructor <init>(Lfcq;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lfct;->a:Lfcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfcq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lfct;-><init>(Lfcq;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    iget-object v0, p0, Lfct;->a:Lfcq;

    invoke-static {v0}, Lfcq;->b(Lfcq;)Lfir;

    move-result-object v0

    instance-of v0, v0, Lfiw;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->DELETE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    move-object v1, v0

    .line 99
    :goto_0
    const/4 v2, 0x0

    .line 101
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    iget-object v3, p0, Lfct;->a:Lfcq;

    invoke-static {v3}, Lfcq;->b(Lfcq;)Lfir;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->isDataValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    const/4 v3, 0x1

    iget-object v4, p0, Lfct;->a:Lfcq;

    invoke-static {v4}, Lfcq;->c(Lfcq;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lfct;->a:Lfcq;

    invoke-static {v0}, Lfcq;->d(Lfcq;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0609

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lfcu;

    invoke-direct {v2, p0, v0}, Lfcu;-><init>(Lfct;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void

    .line 96
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->DELETE_REPLY:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 112
    :cond_1
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    iget-object v4, p0, Lfct;->a:Lfcq;

    invoke-static {v4}, Lfcq;->c(Lfcq;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v5, v4}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lhrx;->d(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 116
    :cond_2
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    iget-object v3, p0, Lfct;->a:Lfcq;

    invoke-static {v3}, Lfcq;->c(Lfcq;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v5, v3}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lfct;->a:Lfcq;

    invoke-static {v0}, Lfcq;->d(Lfcq;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e01cd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
