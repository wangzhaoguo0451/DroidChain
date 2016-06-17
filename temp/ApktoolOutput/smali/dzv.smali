.class public final Ldzv;
.super Landroid/os/AsyncTask;
.source "GameFolderFragment.java"


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
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1}, Ldzv;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 387
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
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 387
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;I)I

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->d(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Ldzw;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldzw;->a(Ljava/util/List;)V

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->e(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Lcom/wandoujia/launcher/view/LauncherGridView;

    move-result-object v0

    iget-object v1, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->d(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Ldzw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/view/LauncherGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->f(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->f(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->e(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Lcom/wandoujia/launcher/view/LauncherGridView;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->h(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a(I)V

    :goto_0
    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->j(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)V

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/launcher_base/view/tips/TipsType;

    sget-object v2, Lcom/wandoujia/launcher_base/view/tips/TipsType;->LOADING:Lcom/wandoujia/launcher_base/view/tips/TipsType;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ld;->a(Landroid/view/View;[Lcom/wandoujia/launcher_base/view/tips/TipsType;)V

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->h(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)I

    move-result v0

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0, v3}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;I)I

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->f(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    iget-object v1, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$layout;->game_folder_no_game_layout:I

    invoke-static {v1, v2}, Ledx;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->g(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->f(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_3
    iget-object v0, p0, Ldzv;->a:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->i(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;)Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/wandoujia/launcher/launcher/views/GameFolderScrollView;->fling(I)V

    goto :goto_0
.end method
