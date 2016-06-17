.class public final Lflp;
.super Lflh;
.source "CommunityNewTopicPoster.java"


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    const v0, 0x7f0e020a

    const v1, 0x7f0e0205

    invoke-direct {p0, p1, p2, v0, v1}, Lflh;-><init>(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 32
    iput-object p3, p0, Lflp;->i:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lflp;->h:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 38
    new-instance v1, Lfkf;

    invoke-direct {v1}, Lfkf;-><init>()V

    .line 39
    invoke-virtual {v1}, Lfkf;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmp;

    iget-object v3, p0, Lflp;->i:Ljava/lang/String;

    iput-object v3, v0, Lfmp;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lflp;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfmp;->c:Ljava/lang/String;

    iget-object v3, p0, Lflp;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lfmp;->a(Ljava/lang/String;)Lflr;

    move-result-object v0

    invoke-virtual {v0, v8}, Lflr;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 44
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 49
    :goto_0
    const-string v0, "ugc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "post new topic message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lflp;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p0, v2}, Lflp;->a(Ljava/lang/String;)V

    .line 80
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "ugc"

    const-string v3, "post new topic message error "

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-static {v1, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    .line 55
    :cond_0
    new-instance v3, Lcvo;

    invoke-direct {v3}, Lcvo;-><init>()V

    .line 57
    :try_start_1
    const-class v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    invoke-virtual {v3, v1, v0}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    .line 59
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 60
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v4

    new-instance v5, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v6, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->POST_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7, v0}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lhrx;->d(Ljava/lang/Object;)V

    .line 62
    const/4 v0, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lflp;->a(ZZ)V
    :try_end_1
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    const-string v4, "ugc"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "post new topic fromJson error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lflp;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_1
    :try_start_2
    const-class v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    invoke-virtual {v3, v1, v0}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    .line 72
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;
    :try_end_2
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 74
    :goto_2
    const-string v1, "ugc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "post new topic error errorMsg "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0, v0}, Lflp;->a(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->POST_TOPIC:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-direct {v1, v3, v9, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method
