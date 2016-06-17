.class final Lfew;
.super Ljava/lang/Object;
.source "CommunityStickTopicAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfev;


# direct methods
.method constructor <init>(Lfev;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lfew;->a:Lfev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v0, Lcql;

    iget-object v2, p0, Lfew;->a:Lfev;

    invoke-static {v2}, Lfev;->a(Lfev;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfew;->a:Lfev;

    invoke-static {v3}, Lfev;->b(Lfev;)Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcql;-><init>(Ljava/lang/String;Z)V

    .line 41
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->isDataValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->STICK_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 66
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->isStickOverflow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lfex;

    invoke-direct {v2, p0}, Lfex;-><init>(Lfew;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    :cond_2
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->STICK_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    goto :goto_1
.end method
