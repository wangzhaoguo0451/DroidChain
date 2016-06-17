.class final Lfdl;
.super Ljava/lang/Object;
.source "CommunityJoinGroupAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfdi;


# direct methods
.method constructor <init>(Lfdi;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lfdl;->a:Lfdi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 68
    .line 70
    :try_start_0
    new-instance v2, Lfkm;

    invoke-direct {v2}, Lfkm;-><init>()V

    .line 71
    invoke-virtual {v2}, Lfkm;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmu;

    iget-object v3, p0, Lfdl;->a:Lfdi;

    invoke-static {v3}, Lfdi;->b(Lfdi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfmu;->a(Ljava/lang/String;)Lflr;

    .line 72
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->isDataValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->JOIN_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lfdm;

    invoke-direct {v2, v0}, Lfdm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->JOIN_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v5, v4}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_1
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->JOIN_GROUP:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-direct {v2, v3, v5, v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
