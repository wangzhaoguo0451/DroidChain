.class public final Lfcl;
.super Ljava/lang/Object;
.source "CommunityBallotGroupAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lfcl;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lfcl;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic a(Lfcl;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lfcl;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lfcl;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 27
    :try_start_0
    new-instance v2, Lfkk;

    invoke-direct {v2}, Lfkk;-><init>()V

    invoke-virtual {v2}, Lfkk;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfmt;

    iget-object v3, p0, Lfcl;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lfmt;->a(Ljava/lang/String;)Lflr;

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->isDataValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BALLOT:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lfcp;

    invoke-direct {v2, p0, v0}, Lfcp;-><init>(Lfcl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BALLOT:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v5, v4}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lhrx;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityResponseInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ld;->B()Lhrx;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;

    sget-object v3, Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;->BALLOT:Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;

    invoke-direct {v2, v3, v5, v1}, Lcom/wandoujia/p4/community/eventbus/CommunityEvent;-><init>(Lcom/wandoujia/p4/community/eventbus/CommunityEvent$Type;ZLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final execute()V
    .locals 8

    .prologue
    .line 39
    iget-object v0, p0, Lfcl;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lfcl;->b:Landroid/content/Context;

    iget-object v1, p0, Lfcl;->b:Landroid/content/Context;

    const v2, 0x7f0e01ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfcl;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0201

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lfcl;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e01c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfcl;->b:Landroid/content/Context;

    const v4, 0x7f0e0162

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lfcm;

    invoke-direct {v4}, Lfcm;-><init>()V

    iget-object v5, p0, Lfcl;->b:Landroid/content/Context;

    const v6, 0x7f0e00c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lfcn;

    invoke-direct {v6, p0}, Lfcn;-><init>(Lfcl;)V

    invoke-static/range {v0 .. v6}, Ld;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lfco;

    invoke-direct {v0, p0}, Lfco;-><init>(Lfcl;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
