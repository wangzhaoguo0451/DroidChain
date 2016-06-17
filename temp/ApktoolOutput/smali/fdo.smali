.class final Lfdo;
.super Ljava/lang/Object;
.source "CommunityLikeTopicAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lfdn;


# direct methods
.method constructor <init>(Lfdn;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lfdo;->b:Lfdn;

    iput-boolean p2, p0, Lfdo;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    new-instance v2, Lfju;

    invoke-direct {v2}, Lfju;-><init>()V

    .line 70
    invoke-virtual {v2}, Lfju;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmk;

    iget-object v3, p0, Lfdo;->b:Lfdn;

    invoke-static {v3}, Lfdn;->a(Lfdn;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfmk;->a:Ljava/lang/String;

    .line 72
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    iget-object v1, p0, Lfdo;->b:Lfdn;

    invoke-static {v1}, Lfdn;->a(Lfdn;)Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/community/http/model/CommunityTopicModel;->setCurUserPermissions(Ljava/util/List;)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lfdp;

    invoke-direct {v1, p0}, Lfdp;-><init>(Lfdo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
