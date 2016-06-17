.class public Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;
.super Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;
.source "GameVideoPlayerFragment.java"


# instance fields
.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;-><init>()V

    .line 43
    iput-object p0, v0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->k:Ljava/lang/String;

    .line 44
    iput-object p1, v0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->l:Ljava/lang/String;

    .line 45
    iput-object p2, v0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->m:Ljava/lang/String;

    .line 46
    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;)Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->n:Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->n:Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Lgyp;)Lgyo;
    .locals 1
    .parameter

    .prologue
    .line 61
    new-instance v0, Lftu;

    invoke-direct {v0, p0, p1}, Lftu;-><init>(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;Lgyp;)V

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lfwb;

    invoke-direct {v1}, Lfwb;-><init>()V

    invoke-virtual {v1}, Lfwb;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxi;

    iget-object v2, p0, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->m:Ljava/lang/String;

    const-string v3, "phoenix_game_video"

    iput-object v2, v0, Lfxi;->a:Ljava/lang/String;

    iput-object v3, v0, Lfxi;->b:Ljava/lang/String;

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    new-instance v2, Lftv;

    invoke-direct {v2, p0}, Lftv;-><init>(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lfvu;->executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;

    .line 56
    :cond_0
    return-void
.end method
