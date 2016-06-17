.class public final Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;
.super Ljava/lang/Object;
.source "VideoOnlinePlayAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field public a:I

.field public b:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

.field public c:Lgmu;

.field private final d:Landroid/content/Context;

.field private final e:J

.field private final f:J

.field private g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field private h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Lhoj;

.field private l:Lgmr;

.field private m:Lcom/wandoujia/appmanager/LocalAppChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->j:I

    .line 101
    iput v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a:I

    .line 103
    sget-object v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->UNKNOWN:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->b:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    .line 126
    new-instance v0, Lgmf;

    invoke-direct {v0, p0}, Lgmf;-><init>(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->m:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 111
    iput-object p1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    .line 112
    iput-wide p2, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->e:J

    .line 113
    iput-wide p4, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->f:J

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->j:I

    .line 101
    iput v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a:I

    .line 103
    sget-object v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->UNKNOWN:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->b:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    .line 126
    new-instance v0, Lgmf;

    invoke-direct {v0, p0}, Lgmf;-><init>(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->m:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 119
    iput-object p1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    .line 120
    iget-wide v0, p2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->e:J

    .line 121
    iget-wide v0, p3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->f:J

    .line 122
    iput-object p2, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 123
    iput-object p3, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 124
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;Lcom/wandoujia/p4/video2/model/VideoMetaModel;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;Lgmr;)Lgmr;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->l:Lgmr;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;Lhoj;)Lhoj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->k:Lhoj;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->c:Lgmu;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->c:Lgmu;

    invoke-interface {v0}, Lgmu;->a()V

    .line 511
    :cond_0
    invoke-static {}, Ld;->D()V

    .line 512
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v1, p1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    if-eqz v1, :cond_0

    new-instance v2, Lhby;

    invoke-direct {v2}, Lhby;-><init>()V

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getAppDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lhby;->d:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, v2, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lhby;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lhby;->j:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lhby;->i:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v2, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    iput-object v0, v2, Lhby;->h:Ljava/lang/String;

    sget-object v0, Lham;->f:Lham;

    const-string v3, "download"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v2}, Lhby;->a()Lhbx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getAppDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lg;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 82
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p2, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lhoq;

    invoke-direct {v1, p1}, Lhoq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0622

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v2

    const v3, 0x7f0e0621

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v6, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-static {v5, v6}, Ld;->a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p2, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v2

    const v3, 0x7f0e0390

    new-instance v4, Lgmp;

    invoke-direct {v4, p0, v0, p2, p1}, Lgmp;-><init>(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;ZLcom/wandoujia/p4/video2/model/VideoPlayModel;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v2, 0x7f0e0513

    new-instance v3, Lgmo;

    invoke-direct {v3, p0}, Lgmo;-><init>(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)V

    invoke-virtual {v0, v2, v3}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-virtual {v1}, Lhoq;->b()Lhoj;

    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DISPLAY:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setAction(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->SOURCE_SELECT:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setFromType(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->getPlayType()Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayType(Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoType(Lcom/wandoujia/p4/video/model/VideoType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setEpisodeId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setProviderName(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->send()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lhoq;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0627

    invoke-virtual {v0, v1}, Lhoq;->a(I)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0626

    invoke-virtual {v0, v1}, Lhoq;->b(I)Lhoq;

    move-result-object v0

    const v1, 0x7f0e04d2

    new-instance v2, Lgmj;

    invoke-direct {v2, p0}, Lgmj;-><init>(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0162

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    goto :goto_0

    :cond_3
    new-instance v7, Lhoq;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    invoke-direct {v7, v0}, Lhoq;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    const v1, 0x7f03004f

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/wandoujia/p4/video2/adapter/VideoProviderAdapter;-><init>(Ljava/util/List;)V

    new-instance v8, Leus;

    invoke-direct {v8, v1}, Leus;-><init>(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v1

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->e:J

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->f:J

    new-instance v6, Lgmk;

    invoke-direct {v6, p0, v0, v8, v7}, Lgmk;-><init>(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;Landroid/widget/ListView;Leus;Lhoq;)V

    invoke-virtual/range {v1 .. v6}, Lgkr;->a(JJLglt;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->b(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a:I

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    .line 424
    const/4 v2, 0x0

    .line 425
    sget-object v3, Lgmq;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->getPlayType()Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 453
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 454
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a()V

    move v0, v1

    .line 463
    :goto_1
    return v0

    .line 427
    :pswitch_0
    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->buildAppPlayIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 430
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 431
    iget-object v3, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    const-class v4, Lcom/wandoujia/p4/video2/activity/VideoPlayHtml5Activity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 432
    const-string v3, "html5_play"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v3, "html5_play_url"

    iget-object v4, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->html5PlayUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v3, "video_meta_model"

    iget-object v4, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 435
    const-string v3, "video_episode_model"

    iget-object v4, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 436
    const-string v3, "video_play_model_list"

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 438
    const-string v3, "selected_provider_index"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 441
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 442
    iget-object v3, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    const-class v4, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 443
    const-string v3, "video_meta_model"

    iget-object v4, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 444
    const-string v3, "video_episode_model"

    iget-object v4, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 445
    const-string v3, "selected_provider_index"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const-string v3, "video_play_model_list"

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    iget v3, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a:I

    if-lez v3, :cond_0

    .line 449
    const-string v3, "video_progress"

    iget v4, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 458
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 459
    iget-object v2, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->c:Lgmu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->c:Lgmu;

    invoke-interface {v2, v0}, Lgmu;->a(Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V

    :cond_2
    iget-object v2, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v4, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    iget v5, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a:I

    invoke-static {v2, v3, v4, v0, v5}, Ld;->a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Ljava/util/List;Lcom/wandoujia/p4/video2/model/VideoPlayModel;I)V

    invoke-static {}, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;->a()Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;

    move-result-object v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->e:J

    invoke-virtual {v2, v4, v5}, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;->a(J)V

    new-instance v2, Lcom/wandoujia/p4/video2/model/VideoLogModel;

    invoke-direct {v2}, Lcom/wandoujia/p4/video2/model/VideoLogModel;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setVideoInfo(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setEpisodeInfo(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setEpisodeInfo(Lcom/wandoujia/p4/video2/model/VideoPlayModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->b:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    invoke-virtual {v3}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setConsumptionSource(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;->ONLINE:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setOpenTypeModeV3(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    move-result-object v2

    sget-object v3, Lgmq;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->getPlayType()Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->PARTNER_PRIVATE:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setResourceTypeV3(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    :goto_2
    sget-object v3, Lgmq;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->getPlayType()Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_2

    .line 460
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 459
    :pswitch_3
    sget-object v3, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->WDJ_HOSTED:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setResourceTypeV3(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 462
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a()V

    move v0, v1

    .line 463
    goto/16 :goto_1

    .line 459
    :pswitch_4
    :try_start_1
    sget-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->IAS_APP:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setOpenTypeV3(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    goto :goto_3

    :pswitch_5
    sget-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->IAS_HTML5:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setOpenTypeV3(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    goto :goto_3

    :pswitch_6
    sget-object v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;->WDJ:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->setOpenTypeV3(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;)Lcom/wandoujia/p4/video2/model/VideoLogModel;

    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;-><init>()V

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;->PLAY_START:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$Action;)Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 459
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static synthetic c(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)J
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->e:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)J
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->f:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->j:I

    return v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)Lgmu;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->c:Lgmu;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)Lgmr;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->l:Lgmr;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)Lhoj;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->k:Lhoj;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)Lcom/wandoujia/appmanager/LocalAppChangedListener;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->m:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    return-object v0
.end method

.method public static synthetic k(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    return-object v0
.end method

.method public static synthetic l(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a:I

    return v0
.end method

.method public static synthetic m(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 175
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 176
    iput p1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->j:I

    .line 177
    return-object p0

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;)",
            "Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->g:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->h:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 164
    iput-object p1, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->i:Ljava/util/List;

    .line 165
    return-object p0
.end method

.method public final execute()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 192
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->d:Landroid/content/Context;

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->VIDEO:Lcom/wandoujia/p4/VerticalItem;

    new-instance v2, Lgmg;

    invoke-direct {v2, p0}, Lgmg;-><init>(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)V

    invoke-static {v0, v1, v2}, Ld;->a(Landroid/content/Context;Lcom/wandoujia/p4/VerticalItem;Lfzf;)Z

    .line 264
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->e:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a()V

    goto :goto_0

    .line 211
    :cond_1
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->a()V

    goto :goto_0

    .line 217
    :cond_2
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->e:J

    iget-wide v6, p0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->f:J

    new-instance v3, Lgmh;

    invoke-direct {v3, p0}, Lgmh;-><init>(Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;)V

    iget-object v0, v2, Lgkr;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Lgll;

    invoke-direct/range {v1 .. v7}, Lgll;-><init>(Lgkr;Lglq;JJ)V

    invoke-virtual {v2, v1}, Lgkr;->a(Lglv;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v4, v5, v6, v7}, Lgkr;->a(JJ)Z

    move-result v0

    invoke-interface {v3, v0}, Lglq;->a(Z)V

    goto :goto_0
.end method
