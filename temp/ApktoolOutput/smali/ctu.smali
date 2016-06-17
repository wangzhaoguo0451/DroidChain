.class public final Lctu;
.super Landroid/os/AsyncTask;
.source "GLHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lctu;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lctu;-><init>(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 270
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lg;->j()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    iget-object v0, v0, Lebl;->c:Leba;

    invoke-virtual {v0}, Leba;->b()V

    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->b()Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->g()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 270
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lctu;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lctu;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->a(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;Ljava/util/List;)Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lctu;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->b(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)Ljava/util/List;

    iget-object v0, p0, Lctu;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->c(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)V

    iget-object v0, p0, Lctu;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->d(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->a(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lctu;->a:Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;->a(Lcom/wandoujia/game_launcher/fragments/GLHomeFragment;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
