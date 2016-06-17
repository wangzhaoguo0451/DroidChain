.class public final Lftu;
.super Ljava/lang/Object;
.source "GameVideoPlayerFragment.java"

# interfaces
.implements Lgyo;


# instance fields
.field private synthetic a:Lgyp;

.field private synthetic b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;Lgyp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    iput-object p2, p0, Lftu;->a:Lgyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->a(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lftu;->a:Lgyp;

    iget-object v1, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->a(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgyp;->e(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lgyw;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    new-instance v1, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    iget-object v2, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-virtual {v2}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->a(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;)Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    .line 82
    iget-object v0, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->b(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    move-result-object v0

    iget-object v1, p0, Lftu;->a:Lgyp;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->setMediaPlayerController(Lgyp;)V

    .line 83
    iget-object v0, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->c(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->b(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    move-result-object v0

    iget-object v1, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->c(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->setTitle(Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->b(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    move-result-object v0

    iget-object v1, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->d(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->setPackageName(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lftu;->b:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->b(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    move-result-object v0

    return-object v0
.end method
