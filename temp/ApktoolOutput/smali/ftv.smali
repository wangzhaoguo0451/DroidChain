.class public final Lftv;
.super Ljava/lang/Object;
.source "GameVideoPlayerFragment.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/callback/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/entities/app/AppLiteInfo;",
        ">;",
        "Ljava/util/concurrent/ExecutionException;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lftv;->a:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onError(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 102
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lftv;->a:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getIcons()Lcom/wandoujia/entities/app/IconSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftv;->a:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->b(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftv;->a:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->b(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getIcons()Lcom/wandoujia/entities/app/IconSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/IconSet;->getSuitableIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->setIcon(Ljava/lang/String;)V

    iget-object v0, p0, Lftv;->a:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->c(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftv;->a:Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;->b(Lcom/wandoujia/p4/game/fragment/GameVideoPlayerFragment;)Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
