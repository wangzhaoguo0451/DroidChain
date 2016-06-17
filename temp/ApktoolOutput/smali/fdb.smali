.class final Lfdb;
.super Ljava/lang/Object;
.source "CommunityForbidUserAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfcy;


# direct methods
.method constructor <init>(Lfcy;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lfdb;->a:Lfcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    :try_start_0
    new-instance v2, Lfki;

    invoke-direct {v2}, Lfki;-><init>()V

    .line 60
    invoke-virtual {v2}, Lfki;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfms;

    iget-object v3, p0, Lfdb;->a:Lfcy;

    invoke-static {v3}, Lfcy;->b(Lfcy;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfms;->b:Ljava/lang/String;

    .line 61
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->isDataValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lfdc;

    invoke-direct {v2, p0, v0}, Lfdc;-><init>(Lfdb;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_1
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
