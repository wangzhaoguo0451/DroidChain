.class public Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;
.super Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;
.source "PlayExpPlayerControllerView.java"


# instance fields
.field public a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field public b:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field public c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field private k:Lcom/wandoujia/image/view/AsyncImageView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lgnz;

.field private r:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->s:Z

    .line 61
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->m:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->r:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    return-object p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->s:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->h:Lgyp;

    invoke-interface {v0}, Lgyp;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->t:Z

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->h:Lgyp;

    invoke-interface {v0}, Lgyp;->s()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->s:Z

    return-void
.end method

.method public static synthetic d(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->b()V

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->h:Lgyp;

    invoke-interface {v0}, Lgyp;->r()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->s:Z

    return-void
.end method

.method public static synthetic e(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->d:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->e:I

    return v0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->b:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Lgyp;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->h:Lgyp;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Lgyp;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->h:Lgyp;

    return-object v0
.end method

.method public static synthetic k(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Lgyp;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->h:Lgyp;

    return-object v0
.end method

.method public static synthetic l(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Lgnz;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->q:Lgnz;

    return-object v0
.end method

.method public static synthetic m(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Lcom/wandoujia/p4/video2/model/VideoPlayModel;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    return-object v0
.end method

.method public static synthetic n(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->r:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->a()V

    .line 71
    const v0, 0x7f0c0459

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->o:Landroid/view/View;

    .line 72
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->k:Lcom/wandoujia/image/view/AsyncImageView;

    .line 73
    const v0, 0x7f0c045b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->l:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0c045d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->m:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    .line 75
    const v0, 0x7f0c045e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->n:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0c045c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->p:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenHeight(Landroid/view/WindowManager;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 79
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->m:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    new-instance v1, Lgnp;

    invoke-direct {v1}, Lgnp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setOnButtonClickListener(Lgec;)V

    .line 86
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->m:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    new-instance v1, Lgnq;

    invoke-direct {v1, p0}, Lgnq;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setOnInstalledListener(Lged;)V

    .line 93
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/video/model/ProviderInfo;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0a0044

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 136
    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->k:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->n:Landroid/widget/TextView;

    invoke-static {p2}, Ld;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->n:Landroid/widget/TextView;

    new-instance v1, Lgnr;

    invoke-direct {v1, p0, p2}, Lgnr;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->m:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_5

    .line 155
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->o:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 156
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->o:Landroid/view/View;

    new-instance v1, Lgns;

    invoke-direct {v1, p0}, Lgns;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :goto_1
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->k:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->m:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    new-instance v1, Lgnw;

    invoke-direct {v1, p0}, Lgnw;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setOnButtonClickListener(Lgec;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->m:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->m:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setVisibility(I)V

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getAppVersionCode()I

    move-result v2

    if-lt v1, v2, :cond_4

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->m:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setVisibility(I)V

    goto :goto_0

    :cond_4
    new-instance v1, Lgnx;

    invoke-direct {v1, p0, v0}, Lgnx;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-static {v1, v0}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 229
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->b()V

    .line 98
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->g:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->c()V

    .line 106
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->g:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    :cond_0
    return-void
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0301ed

    return v0
.end method

.method public setOnSourceChangedListener(Lgnz;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;->q:Lgnz;

    .line 122
    return-void
.end method
