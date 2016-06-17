.class public Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "VideoDetailActivity.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/wandoujia/p4/video/model/VideoType;

.field private d:Lcom/wandoujia/p4/video/model/VideoSubType;

.field private e:Ljava/lang/String;

.field private f:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

.field private g:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_8

    .line 67
    const-string v0, "videos.wandoujia.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video.wandoujia.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    const-string v0, "videos"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->a:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoType;->getVideoType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->c:Lcom/wandoujia/p4/video/model/VideoType;

    .line 106
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    const v0, 0x7f0e060b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->b:Ljava/lang/String;

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->d:Lcom/wandoujia/p4/video/model/VideoSubType;

    sget-object v1, Lcom/wandoujia/p4/video/model/VideoSubType;->ANIME:Lcom/wandoujia/p4/video/model/VideoSubType;

    if-ne v0, v1, :cond_4

    .line 110
    const v0, 0x7f0f009b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->setTheme(I)V

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->f:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_9

    const v0, 0x7f0e0481

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->finish()V

    .line 114
    :cond_5
    :goto_2
    return-void

    .line 82
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wdj"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "videos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 88
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->a:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    :cond_7
    :goto_3
    const-string v0, "video_type"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoType;->getVideoType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->c:Lcom/wandoujia/p4/video/model/VideoType;

    .line 94
    const-string v0, "sub_type"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoSubType;->getVideoSubType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSubType;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->d:Lcom/wandoujia/p4/video/model/VideoSubType;

    goto/16 :goto_1

    .line 98
    :cond_8
    const-string v0, "video_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->a:J

    .line 99
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/VideoType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->c:Lcom/wandoujia/p4/video/model/VideoType;

    .line 100
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sub_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/VideoSubType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->d:Lcom/wandoujia/p4/video/model/VideoSubType;

    .line 101
    const-string v0, "video_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->b:Ljava/lang/String;

    .line 102
    const-string v0, "setting_auto_download"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 103
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_detail_tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->f:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    .line 104
    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->e:Ljava/lang/String;

    goto/16 :goto_1

    .line 113
    :cond_9
    iget-object v1, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->g:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    if-nez v1, :cond_b

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->a:J

    iget-object v1, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->c:Lcom/wandoujia/p4/video/model/VideoType;

    iget-object v4, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->d:Lcom/wandoujia/p4/video/model/VideoSubType;

    iget-object v5, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->e:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4, v5}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(JLcom/wandoujia/p4/video/model/VideoType;Lcom/wandoujia/p4/video/model/VideoSubType;Ljava/lang/String;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->g:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->g:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iput-object v0, v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->k:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    :cond_a
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->g:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-virtual {v0, v1, v2}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->g:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->a:J

    iget-object v4, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->c:Lcom/wandoujia/p4/video/model/VideoType;

    iget-object v5, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->d:Lcom/wandoujia/p4/video/model/VideoSubType;

    iget-wide v6, v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_c

    iput-wide v2, v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d:J

    iput-object v4, v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e:Lcom/wandoujia/p4/video/model/VideoType;

    iput-object v5, v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d()V

    :cond_c
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->g:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->getTabId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->a(Landroid/content/Intent;)V

    .line 47
    sget-object v0, Lcom/wandoujia/p4/VerticalItem;->VIDEO:Lcom/wandoujia/p4/VerticalItem;

    new-instance v1, Lgfj;

    invoke-direct {v1, p0}, Lgfj;-><init>(Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;)V

    invoke-static {p0, v0, v1}, Ld;->a(Landroid/content/Context;Lcom/wandoujia/p4/VerticalItem;Lfzf;)Z

    .line 56
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;->a(Landroid/content/Intent;)V

    .line 62
    return-void
.end method
