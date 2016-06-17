.class public Lcom/wandoujia/p4/imagepicker/activity/FolderImageActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "FolderImageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/FolderImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/FolderImageActivity;->finish()V

    .line 56
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v1, "folder_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/FolderImageActivity;->finish()V

    goto :goto_0

    .line 39
    :cond_1
    sget-object v1, Ldca;->a:Ldca;

    iget-object v1, v1, Ldca;->c:Lfpk;

    invoke-virtual {v1}, Lfpk;->d()Ljava/util/HashMap;

    move-result-object v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/FolderImageActivity;->finish()V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpq;

    .line 47
    if-nez v0, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/FolderImageActivity;->finish()V

    goto :goto_0

    .line 52
    :cond_3
    new-instance v1, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;

    invoke-direct {v1}, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;-><init>()V

    .line 53
    iput-object v0, v1, Lcom/wandoujia/p4/imagepicker/fragment/FolderImageFragment;->e:Lfpq;

    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/FolderImageActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    goto :goto_0
.end method
