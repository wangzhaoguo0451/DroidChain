.class final Lfcw;
.super Ljava/lang/Object;
.source "CommunityFeatureTopicAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfcv;


# direct methods
.method constructor <init>(Lfcv;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lfcw;->a:Lfcv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 35
    .line 37
    :try_start_0
    new-instance v2, Lfix;

    invoke-direct {v2}, Lfix;-><init>()V

    .line 38
    invoke-virtual {v2}, Lfix;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lflv;

    iget-object v3, p0, Lfcw;->a:Lfcv;

    invoke-static {v3}, Lfcv;->b(Lfcv;)Z

    move-result v3

    iput-boolean v3, v0, Lflv;->b:Z

    iget-object v3, p0, Lfcw;->a:Lfcv;

    invoke-static {v3}, Lfcv;->a(Lfcv;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lflv;->a(Ljava/lang/String;)Lflr;

    .line 39
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->isDataValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->FEATURE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lfcw;->a:Lfcv;

    invoke-static {v0}, Lfcv;->b(Lfcv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e01d5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_2
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lfcx;

    invoke-direct {v2, v0}, Lfcx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 49
    :cond_0
    const v0, 0x7f0e01d4

    goto :goto_1

    .line 53
    :cond_1
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->FEATURE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v5, v4}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 58
    :cond_2
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->FEATURE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-direct {v2, v3, v5, v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0483

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
