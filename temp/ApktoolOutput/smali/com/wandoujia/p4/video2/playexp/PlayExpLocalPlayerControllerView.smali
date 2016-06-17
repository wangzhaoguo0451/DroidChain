.class public Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;
.super Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;
.source "PlayExpLocalPlayerControllerView.java"


# instance fields
.field private a:Lcom/wandoujia/image/view/AsyncImageView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

.field private m:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

.field private n:Lcom/wandoujia/ripple_framework/download/DownloadInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;)Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;)Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->m:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->l:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->a()V

    .line 67
    const v0, 0x7f0c0459

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->e:Landroid/view/View;

    .line 68
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    .line 69
    const v0, 0x7f0c045b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->b:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0c045d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    .line 71
    const v0, 0x7f0c045e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->d:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0c045c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->k:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenHeight(Landroid/view/WindowManager;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 77
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    new-instance v1, Lgmw;

    invoke-direct {v1}, Lgmw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setOnButtonClickListener(Lgec;)V

    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    new-instance v1, Lgmx;

    invoke-direct {v1, p0}, Lgmx;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setOnInstalledListener(Lged;)V

    .line 91
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0a0044

    const/16 v4, 0x8

    .line 110
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->l:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 111
    iput-object p2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->m:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 112
    iget-object v0, p2, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->providerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v0

    iget-object v1, p2, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v1

    .line 115
    iget-object v0, p2, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->d:Landroid/widget/TextView;

    invoke-static {v0}, Ld;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->d:Landroid/widget/TextView;

    new-instance v3, Lgmy;

    invoke-direct {v3, p0, v0}, Lgmy;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->a:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v5}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    new-instance v2, Lgmz;

    invoke-direct {v2, p0}, Lgmz;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setOnButtonClickListener(Lgec;)V

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setVisibility(I)V

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v0

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getAppVersionCode()I

    move-result v3

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setVisibility(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lham;->f:Lham;

    const-string v3, "download"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->n:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->c:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->n:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-virtual {v0, v2, v1, v3}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->b()V

    .line 96
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->g:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->c()V

    .line 104
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->g:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0301ed

    return v0
.end method
