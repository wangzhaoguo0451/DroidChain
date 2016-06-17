.class public Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;
.super Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;
.source "PlayExpLocalPlayerFragment.java"

# interfaces
.implements Leax;


# instance fields
.field private A:J

.field private B:J

.field private C:Lgom;

.field private final D:Lgrz;

.field private k:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

.field private l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

.field private m:Landroid/webkit/WebView;

.field private n:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;

.field private o:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

.field private p:Lgtl;

.field private q:Lgnm;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->r:Z

    .line 75
    iput-boolean v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->s:Z

    .line 76
    iput-boolean v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->t:Z

    .line 77
    iput-boolean v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->u:Z

    .line 84
    iput-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->z:J

    .line 85
    iput-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->A:J

    .line 86
    iput-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->B:J

    .line 90
    new-instance v0, Lgnb;

    invoke-direct {v0, p0}, Lgnb;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->D:Lgrz;

    .line 631
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->A:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;)Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->n:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;

    return-object p1
.end method

.method public static a(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 132
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;-><init>()V

    .line 133
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 134
    const-string v2, "local_video_album_model"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 135
    const-string v2, "local_video_episode_model"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 137
    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->v:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;Lgyp;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlayExpLocalPlayerFragment"

    new-instance v2, Lcvo;

    invoke-direct {v2}, Lcvo;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    invoke-virtual {v2, v3}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->getFileModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalFileModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/local/LocalFileModel;->filePath:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Lgyp;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->k:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-static {v0, v1}, Ld;->b(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->n:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->setTitle(Ljava/lang/String;)V

    :cond_2
    iget-boolean v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->h:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->j()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->g_()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ld;->b(Landroid/app/Activity;)V

    :cond_3
    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->q:Lgnm;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lgnm;->removeMessages(I)V

    iput-boolean v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->r:Z

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    if-eqz v1, :cond_4

    const/16 v1, 0xb

    :try_start_0
    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->n:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->k:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    iget-object v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->a(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->n:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;

    invoke-virtual {v1, p1}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;->setMediaPlayerController(Lgyp;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->C:Lgom;

    sget-object v2, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;->SUCCESS:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4, v0}, Lgom;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->s:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;Lgyp;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->o:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->o:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

    new-instance v1, Lgnh;

    invoke-direct {v1, p0, p1}, Lgnh;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;Lgyp;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->setOnDirectPlayButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->o:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

    new-instance v1, Lgni;

    invoke-direct {v1, p0}, Lgni;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->setOnBackButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->o:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

    new-instance v1, Lgnj;

    invoke-direct {v1, p0}, Lgnj;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->setOnRefreshButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->o:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    new-instance v1, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment$PlayExpWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment$PlayExpWebChromeClient;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;Lgnb;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    new-instance v1, Lgnn;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lgnn;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lgtl;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lgtl;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->p:Lgtl;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->p:Lgtl;

    new-instance v1, Lgnk;

    invoke-direct {v1, p0, p1}, Lgnk;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;Lgyp;)V

    iput-object v1, v0, Lgtl;->c:Lgtt;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->o:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 51
    return-object p0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->o:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->setOriginWebUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->o:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;->b()V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->q:Lgnm;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lgnm;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "PlayExpLocalPlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load javascript time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->z:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->C:Lgom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->z:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lgom;->a(J)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Lgnm;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->q:Lgnm;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->z:J

    return-wide v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Lgom;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->C:Lgom;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Lgrz;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->D:Lgrz;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->n:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerControllerView;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->o:Lcom/wandoujia/p4/video2/playexp/PlayExpLocalWebPage;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->r:Z

    return v0
.end method

.method public static synthetic k(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->u:Z

    return v0
.end method

.method public static synthetic l(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)J
    .locals 4
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->B:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->B:J

    return-wide v0
.end method

.method public static synthetic m(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->B:J

    return-wide v0
.end method

.method public static synthetic n(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic o(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->i()V

    return-void
.end method

.method static synthetic p(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->s:Z

    return v0
.end method

.method public static synthetic q(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->u:Z

    return v0
.end method

.method public static synthetic r(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->A:J

    return-wide v0
.end method


# virtual methods
.method protected final a(Lgyp;)Lgyo;
    .locals 1
    .parameter

    .prologue
    .line 217
    new-instance v0, Lgng;

    invoke-direct {v0, p0, p1}, Lgng;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;Lgyp;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 5
    .parameter

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->a(I)V

    .line 430
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->p:Lgtl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->t:Z

    if-eqz v0, :cond_0

    .line 431
    iput p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->w:I

    .line 432
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->p:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->w:I

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->x:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->y:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->b(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 435
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 467
    invoke-super {p0, p1, p2}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->a(J)V

    .line 468
    return-void
.end method

.method public final a(JI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->a(JI)V

    .line 455
    iput p3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->y:I

    .line 456
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    iget-boolean v0, v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isFlvVideo:Z

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->t:Z

    .line 459
    :cond_0
    const-string v0, "PlayExpLocalPlayerFragment"

    const-string v1, " player on ready"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->h:Z

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->C:Lgom;

    invoke-virtual {v0}, Lgom;->b()V

    .line 463
    :cond_1
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V
    .locals 1
    .parameter

    .prologue
    .line 379
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->n()V

    .line 380
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->C:Lgom;

    invoke-virtual {v0, p1}, Lgom;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V

    .line 381
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->a(Ljava/lang/String;)V

    .line 449
    const-string v0, "PlayExpLocalPlayerFragment"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method public final b(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 472
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->b(I)V

    .line 473
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->p:Lgtl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->t:Z

    if-nez v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iput p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->w:I

    .line 477
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->p:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->w:I

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->x:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->y:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->d(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 479
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->q()I

    move-result v0

    .line 483
    iget-boolean v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->t:Z

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    if-ge p1, v0, :cond_0

    sub-int v1, v0, p1

    int-to-long v2, v1

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 485
    const-string v1, "PlayExpLocalPlayerFragment"

    const-string v2, " js on ended in on progress"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->p:Lgtl;

    new-instance v2, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->w:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->x:I

    invoke-direct {v2, v3, v4, v0}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v1, v2}, Lgtl;->c(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 488
    iput-boolean v6, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->t:Z

    goto :goto_0
.end method

.method public final c(I)V
    .locals 5
    .parameter

    .prologue
    .line 494
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->c(I)V

    .line 495
    iget v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->y:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->x:I

    .line 496
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->t:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->p:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->w:I

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->x:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->y:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->e(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 500
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->r:Z

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;->NORMAL:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->d()V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 373
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04d8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    sget-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;->ERROR:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V

    .line 376
    return-void
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;->NORMAL:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V

    .line 386
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 423
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->g()V

    .line 424
    invoke-static {}, Lgom;->a()V

    .line 425
    return-void
.end method

.method public final h()V
    .locals 5

    .prologue
    .line 439
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->h()V

    .line 440
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->p:Lgtl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->t:Z

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->p:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->w:I

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->x:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->y:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->a(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 444
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->z:J

    .line 144
    new-instance v0, Lgnm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnm;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;B)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->q:Lgnm;

    .line 145
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "local_video_album_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->k:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 148
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "local_video_episode_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->k:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    if-nez v0, :cond_2

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->e()V

    .line 156
    :cond_2
    new-instance v0, Lgom;

    invoke-direct {v0}, Lgom;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->C:Lgom;

    .line 157
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onDestroy()V

    .line 407
    new-instance v0, Lgnl;

    invoke-direct {v0, p0}, Lgnl;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 414
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    .line 419
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 398
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onPause()V

    .line 399
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 402
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onResume()V

    .line 391
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->m:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 394
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "video_id"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->k:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    iget-object v3, v3, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v4, v3, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "episode_id"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->l:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    iget-wide v4, v3, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Lgtu;->a()Lgtu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lgne;

    invoke-direct {v3, p0}, Lgne;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lgtu;->a(Landroid/content/Context;ZLgtx;)V

    .line 194
    new-instance v0, Lgnf;

    invoke-direct {v0, p0}, Lgnf;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpLocalPlayerFragment;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method
