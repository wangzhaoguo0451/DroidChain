.class final Lfeo;
.super Ljava/lang/Object;
.source "CommunityQuitGroupAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfel;


# direct methods
.method constructor <init>(Lfel;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lfeo;->a:Lfel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 69
    .line 71
    :try_start_0
    new-instance v1, Lfko;

    invoke-direct {v1}, Lfko;-><init>()V

    .line 72
    invoke-virtual {v1}, Lfko;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmv;

    iget-object v3, p0, Lfeo;->a:Lfel;

    invoke-static {v3}, Lfel;->b(Lfel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfmv;->a(Ljava/lang/String;)Lflr;

    .line 73
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 75
    :goto_0
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0211

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v1

    new-instance v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v4, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->QUIT_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v1, v3}, Lhrx;->d(Ljava/lang/Object;)V

    .line 96
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lfep;

    invoke-direct {v2, v0}, Lfep;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v4, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->QUIT_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lhrx;->d(Ljava/lang/Object;)V

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->QUIT_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-direct {v1, v3, v5, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e020f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
