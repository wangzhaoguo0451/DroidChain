.class final Lfeg;
.super Ljava/lang/Object;
.source "CommunityPostNewTopicAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfed;


# direct methods
.method private constructor <init>(Lfed;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lfeg;->a:Lfed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfed;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lfeg;-><init>(Lfed;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lfeg;->a:Lfed;

    invoke-static {v0}, Lfed;->b(Lfed;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->currentUserCanAddTopic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 75
    new-instance v2, Lfjd;

    invoke-direct {v2}, Lfjd;-><init>()V

    .line 76
    invoke-virtual {v2}, Lfjd;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfma;

    iget-object v3, p0, Lfeg;->a:Lfed;

    invoke-static {v3}, Lfed;->b(Lfed;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfma;->a:Ljava/lang/String;

    .line 78
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    if-eqz v0, :cond_0

    .line 84
    const-string v1, "ugc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update user Permissions : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lfeg;->a:Lfed;

    invoke-static {v1}, Lfed;->b(Lfed;)Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->setCurUserPermissions(Ljava/util/List;)V

    .line 89
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lfeh;

    invoke-direct {v1, p0}, Lfeh;-><init>(Lfeg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
