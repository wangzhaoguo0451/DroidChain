.class public Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "VideoPlayHtml5Fragment.java"


# instance fields
.field private a:Lgie;

.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/wandoujia/base/view/NonLeakingWebView;

.field private d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

.field private e:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

.field private f:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field private i:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field private j:I

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->m:Z

    .line 96
    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->n:Z

    .line 637
    return-void
.end method

.method static synthetic a(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->j:I

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 186
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->i:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->l:Z

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f()V

    .line 202
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->e()V

    .line 203
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b()V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e04d6

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->k:J

    goto :goto_0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    return-object v0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h()Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v1

    .line 423
    if-nez v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->promoteType:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 576
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v0}, Lcom/wandoujia/base/view/NonLeakingWebView;->removeAllViews()V

    .line 577
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v0}, Lcom/wandoujia/base/view/NonLeakingWebView;->destroy()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    .line 580
    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v0}, Lcom/wandoujia/base/view/NonLeakingWebView;->onPause()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    if-nez v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v0}, Lcom/wandoujia/base/view/NonLeakingWebView;->onResume()V

    goto :goto_0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f()V

    return-void
.end method

.method static synthetic h(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/base/view/NonLeakingWebView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    return-object v0
.end method

.method private h()Lcom/wandoujia/p4/video2/model/VideoPlayModel;
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    return-object v0
.end method

.method static synthetic i(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic j(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->m:Z

    return v0
.end method

.method static synthetic k(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->g()V

    return-void
.end method

.method static synthetic l(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->m:Z

    return v0
.end method

.method public static synthetic m(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c()V

    return-void
.end method

.method public static synthetic n(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)Lcom/wandoujia/p4/video2/model/VideoPlayModel;
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h()Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic o(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setSpinnerEnable(Z)V

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f()V

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->g()V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h()Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->html5PlayUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/base/utils/FreeHttpUtils;->buildFreeURLIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/view/NonLeakingWebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V
    .locals 4
    .parameter

    .prologue
    .line 66
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04e4

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 431
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h()Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v5

    .line 432
    if-nez v5, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b()V

    .line 503
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d()Z

    move-result v0

    if-nez v0, :cond_7

    .line 441
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h()Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->promoteType:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v0, v6

    :goto_1
    if-eqz v0, :cond_7

    .line 443
    iget-object v0, v5, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 445
    :goto_2
    iget-object v1, v5, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b()V

    goto :goto_0

    .line 441
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 443
    :cond_3
    iget-object v0, v5, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 451
    :cond_4
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 453
    invoke-static {v0}, Ld;->ae(Ljava/lang/String;)Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    move-result-object v2

    .line 454
    sget-object v3, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_INSTALLED:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    if-ne v2, v3, :cond_5

    .line 455
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c()V

    goto :goto_0

    .line 458
    :cond_5
    new-instance v3, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    invoke-direct {v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;-><init>()V

    .line 459
    sget-object v4, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DISPLAY:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setAction(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PLAYER:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setFromType(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->HTML5:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayType(Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v4, v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoType(Lcom/wandoujia/p4/video/model/VideoType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v8, v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v3, v8, v9}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->i:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v8, v4, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-virtual {v3, v8, v9}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setEpisodeId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h()Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v4

    iget-object v4, v4, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setProviderName(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h()Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v4

    iget-object v4, v4, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->html5PlayUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayUrl(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->send()V

    .line 468
    new-instance v3, Lgic;

    invoke-direct {v3, p0}, Lgic;-><init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    new-instance v4, Lghu;

    invoke-direct {v4, p0, v2, v0, v5}, Lghu;-><init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;Ljava/lang/String;Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V

    new-instance v5, Lgid;

    invoke-direct {v5, p0}, Lgid;-><init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    const-string v2, "video play"

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->show(Ls;Ljava/lang/String;)V

    .line 496
    iput-boolean v6, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->l:Z

    goto/16 :goto_0

    .line 498
    :cond_6
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c()V

    goto/16 :goto_0

    .line 501
    :cond_7
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c()V

    goto/16 :goto_0
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 410
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "meta_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 104
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "episode_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->i:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 106
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "play_model_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->g:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_provider_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->j:I

    .line 108
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    const v0, 0x7f03004b

    invoke-static {p2, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->e()V

    .line 235
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onDestroy()V

    .line 236
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onPause()V

    .line 220
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->f()V

    .line 221
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onResume()V

    .line 214
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->g()V

    .line 215
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 119
    const v0, 0x7f0c01a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b:Landroid/widget/FrameLayout;

    const v0, 0x7f0c00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/base/view/NonLeakingWebView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->e:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->e:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->e:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    new-instance v1, Lghw;

    invoke-direct {v1, p0}, Lghw;-><init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setSpinnerOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    invoke-virtual {v0, v6}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setSpinnerEnable(Z)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    iget v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->j:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setSpinnerSelectedItem(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    invoke-virtual {v0, v7}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->a(Z)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    new-instance v1, Lghy;

    invoke-direct {v1, p0}, Lghy;-><init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    new-instance v1, Lghz;

    invoke-direct {v1, p0}, Lghz;-><init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setBackButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->i:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-static {v0, v1}, Ld;->b(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setTitleText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    new-instance v1, Lgia;

    invoke-direct {v1}, Lgia;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setTopbarOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->e:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    new-instance v1, Lgib;

    invoke-direct {v1, p0}, Lgib;-><init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->setBackButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v0}, Lcom/wandoujia/base/view/NonLeakingWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v0}, Lcom/wandoujia/base/view/NonLeakingWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v0}, Lcom/wandoujia/base/view/NonLeakingWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v0}, Lcom/wandoujia/base/view/NonLeakingWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    new-instance v0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment$7;-><init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/base/view/NonLeakingWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    iput-boolean v7, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->n:Z

    .line 122
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->n:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h()Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setPlayModel(Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    new-instance v2, Lgdz;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->g:Ljava/util/ArrayList;

    invoke-static {v3}, Ld;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lgdz;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setSpinnerAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    iget v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->j:I

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setSpinnerSelectedItem(I)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->c:Lcom/wandoujia/base/view/NonLeakingWebView;

    new-instance v2, Lght;

    invoke-direct {v2, p0}, Lght;-><init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;)V

    iget-object v3, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->html5PlayUrl:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wandoujia/base/http/FreeWebViewClientWrapper;->newInstance(Landroid/webkit/WebViewClient;Ljava/lang/String;)Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/base/view/NonLeakingWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d:Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/video/view/VideoPlayHtml5ControlView;->setPlayModel(Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->e:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    invoke-virtual {v1, v6}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->e:Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    iput-object v0, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v2, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v2

    iget-object v3, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v3, v3, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0510

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v5, v5, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v2

    iget-object v3, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v3, v3, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0631

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    new-instance v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    invoke-direct {v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;-><init>()V

    sget-object v2, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DISPLAY:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setAction(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PLAYER:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setFromType(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->getPlayType()Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayType(Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoType(Lcom/wandoujia/p4/video/model/VideoType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->h:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->i:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setEpisodeId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setProviderName(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->html5PlayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayUrl(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->send()V

    :cond_3
    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->a:Lgie;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->a:Lgie;

    invoke-static {v1}, Ld;->a(Landroid/os/AsyncTask;)V

    :cond_4
    new-instance v1, Lgie;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->html5PlayUrl:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lgie;-><init>(Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->a:Lgie;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/VideoPlayHtml5Fragment;->a:Lgie;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 123
    :cond_5
    return-void

    .line 122
    :cond_6
    iget-object v2, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e062d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v5, v5, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e062c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
