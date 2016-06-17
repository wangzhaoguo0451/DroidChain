.class public Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "PlayExpPlayerActivity.java"


# instance fields
.field private a:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->d()V

    .line 61
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 28
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;->setVolumeControlStream(I)V

    .line 29
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v0, "video_meta_model"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    const-string v1, "video_episode_model"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    const-string v2, "video_play_model_list"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v4, "selected_provider_index"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04dd

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;->finish()V

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Ljava/util/List;I)Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    const-string v3, "play"

    invoke-virtual {v0, v1, v2, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I

    goto :goto_0
.end method
