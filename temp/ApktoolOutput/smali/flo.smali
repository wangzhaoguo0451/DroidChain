.class public final Lflo;
.super Lflh;
.source "CommunityNewReplyPoster.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const v0, 0x7f0e021b

    const v1, 0x7f0e0216

    invoke-direct {p0, p1, p2, v0, v1}, Lflh;-><init>(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 34
    iput-object p3, p0, Lflo;->i:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lflo;->j:Ljava/lang/String;

    .line 36
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflo;->h:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lflo;->h:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 44
    new-instance v1, Lfke;

    invoke-direct {v1}, Lfke;-><init>()V

    .line 45
    invoke-virtual {v1}, Lfke;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmo;

    iget-object v3, p0, Lflo;->i:Ljava/lang/String;

    iput-object v3, v0, Lfmo;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lflo;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfmo;->d:Ljava/lang/String;

    iget-object v3, p0, Lflo;->j:Ljava/lang/String;

    iput-object v3, v0, Lfmo;->b:Ljava/lang/String;

    iget-object v3, p0, Lflo;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lfmo;->a(Ljava/lang/String;)Lflr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lflr;->setAttachDefaultCookie(Z)Lcom/wandoujia/rpc/http/request/AbstractHttpRequestBuilder;

    .line 50
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 55
    :goto_0
    const-string v0, "ugc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "post new reply message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lflo;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p0, v2}, Lflo;->a(Ljava/lang/String;)V

    .line 85
    :goto_1
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "ugc"

    const-string v3, "post error "

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v1, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    .line 61
    :cond_0
    new-instance v3, Lcvo;

    invoke-direct {v3}, Lcvo;-><init>()V

    .line 63
    :try_start_1
    const-class v0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    invoke-virtual {v3, v1, v0}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    .line 65
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v4, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v5, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->POST_REPLY:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v4}, Lhrx;->d(Ljava/lang/Object;)V

    .line 68
    const/4 v0, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lflo;->a(ZZ)V
    :try_end_1
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 77
    :cond_1
    :try_start_2
    const-class v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    invoke-virtual {v3, v1, v0}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;

    .line 78
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;
    :try_end_2
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 80
    :goto_2
    invoke-virtual {p0, v0}, Lflo;->a(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->POST_REPLY:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-direct {v1, v3, v8, v2}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method
