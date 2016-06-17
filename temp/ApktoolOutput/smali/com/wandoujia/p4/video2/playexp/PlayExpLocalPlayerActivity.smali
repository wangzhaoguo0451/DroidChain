.class public Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "PlayExpLocalPlayerActivity.java"


# instance fields
.field private a:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->d()V

    .line 53
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 26
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;->setVolumeControlStream(I)V

    .line 27
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "local_video_album_model"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    const-string v2, "local_video_episode_model"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04dd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;->finish()V

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {v0, v1}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->a(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;

    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerActivity;->a:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;

    const-string v3, "play"

    invoke-virtual {v0, v1, v2, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method
