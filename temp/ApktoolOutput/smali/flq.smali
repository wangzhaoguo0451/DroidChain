.class public final Lflq;
.super Lflh;
.source "CommunityTopicLikePoster.java"


# instance fields
.field private i:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    const v0, 0x7f0e0218

    const v1, 0x7f0e0217

    invoke-direct {p0, p1, p2, v0, v1}, Lflh;-><init>(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 27
    iput-boolean p3, p0, Lflq;->i:Z

    .line 28
    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 32
    new-instance v4, Lfks;

    invoke-direct {v4}, Lfks;-><init>()V

    .line 33
    invoke-virtual {v4}, Lfks;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmx;

    iget-boolean v5, p0, Lflq;->i:Z

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfmx;->b:Ljava/lang/Integer;

    iget-object v1, p0, Lflq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfmx;->a(Ljava/lang/String;)Lflr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lflr;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 38
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v4}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p0, v3}, Lflq;->a(Ljava/lang/String;)V

    .line 47
    :cond_1
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    .line 49
    :try_start_1
    const-class v2, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    invoke-virtual {v1, v0, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    .line 50
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->isDataValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lflq;->a(ZZ)V

    .line 52
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->LIKE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lflq;->i:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 65
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v4, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->LIKE_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lflq;->i:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lflq;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    invoke-virtual {p0, v3}, Lflq;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
