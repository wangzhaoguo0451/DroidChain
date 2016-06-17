.class public Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "VideoPlayHtml5Activity.java"


# instance fields
.field private a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    .line 42
    const-string v0, "html5_play"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    const-string v0, "video_meta_model"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 45
    const-string v1, "video_episode_model"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 48
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "video_play_model_list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 51
    const-string v3, "selected_provider_index"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 53
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04e4

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->finish()V

    .line 77
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v4, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-direct {v4}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;-><init>()V

    iput-object v4, p0, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    .line 63
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v5, "meta_model"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    const-string v0, "episode_model"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 66
    const-string v0, "play_model_list"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 67
    const-string v0, "selected_provider_index"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x7f0c01ad

    iget-object v2, p0, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    const-string v3, "play"

    invoke-virtual {v0, v1, v2, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->a:Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->a()V

    .line 84
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x400

    .line 26
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 27
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 29
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->setVolumeControlStream(I)V

    .line 30
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->a(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;->a(Landroid/content/Intent;)V

    .line 39
    return-void
.end method
