.class public Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;
.super Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;
.source "PlayExpPlayerFragment.java"

# interfaces
.implements Leax;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:J

.field private E:J

.field private F:J

.field private G:J

.field private H:Lgom;

.field private k:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field private l:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field private m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Landroid/webkit/WebView;

.field private q:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;

.field private r:Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;

.field private s:J

.field private t:Lgtl;

.field private u:Lgok;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 64
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->v:Z

    .line 94
    iput-boolean v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->w:Z

    .line 95
    iput-boolean v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->x:Z

    .line 96
    iput-boolean v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    .line 103
    iput-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->D:J

    .line 104
    iput-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->E:J

    .line 105
    iput-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->F:J

    .line 106
    iput-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->G:J

    .line 835
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->E:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Lgyp;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 64
    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->r:Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->r:Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;

    new-instance v2, Lgoc;

    invoke-direct {v2, p0}, Lgoc;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->setOnBackButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->r:Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;

    new-instance v2, Lgod;

    invoke-direct {v2, p0}, Lgod;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->setOnRefreshButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->r:Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    new-instance v2, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment$PlayExpWebChromeClient;

    invoke-direct {v2, p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment$PlayExpWebChromeClient;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Lgoa;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    new-instance v1, Lgol;

    invoke-direct {v1, p0, v4}, Lgol;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lgtl;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lgtl;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->wapPlayUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->r:Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->setOriginWebUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->r:Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;->b()V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->u:Lgok;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Lgok;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    new-instance v1, Lgof;

    invoke-direct {v1, p0, p1}, Lgof;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Lgyp;)V

    iput-object v1, v0, Lgtl;->c:Lgtt;

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->r:Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;)Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->q:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;

    return-object p1
.end method

.method public static a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Ljava/util/List;I)Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video2/model/VideoMetaModel;",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;I)",
            "Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;-><init>()V

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v2, "video_meta_model"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 116
    const-string v2, "video_episode_model"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 117
    const-string v2, "video_play_model_list"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 119
    const-string v2, "selected_provider_index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 120
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 121
    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Lgok;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->u:Lgok;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->z:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/player/flv/FlvResult;)Ljava/util/List;
    .locals 4
    .parameter

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/wandoujia/p4/player/flv/FlvResult;->result:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/player/flv/FlvResult$UrlResult;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/wandoujia/p4/player/flv/FlvResult$UrlResult;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/wandoujia/p4/player/flv/FlvResult$UrlResult;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->x:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->D:J

    return-wide v0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 64
    return-object p0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->x:Z

    if-eqz v0, :cond_0

    const-string v0, "play exp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load javascript time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->D:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->H:Lgom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->D:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lgom;->a(J)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Lgom;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->H:Lgom;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->q:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerControllerView;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->r:Lcom/wandoujia/p4/video2/playexp/PlayExpWebPage;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Lcom/wandoujia/p4/video2/model/VideoPlayModel;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->k:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->l:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->j()V

    return-void
.end method

.method public static synthetic k(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->g_()V

    return-void
.end method

.method public static synthetic l(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->v:Z

    return v0
.end method

.method public static synthetic m(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->n:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic n(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->o:I

    return v0
.end method

.method public static synthetic o(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->wapPlayUrl:Ljava/lang/String;

    new-instance v1, Lgau;

    invoke-direct {v1, p0}, Lgau;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V

    new-instance v2, Lgas;

    invoke-direct {v2, v0, v1, v3}, Lgas;-><init>(Ljava/lang/String;Lgau;B)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-static {v2, v0}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)J
    .locals 4
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->F:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->F:J

    return-wide v0
.end method

.method public static synthetic q(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->F:J

    return-wide v0
.end method

.method public static synthetic r(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic s(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->i()V

    return-void
.end method

.method public static synthetic t(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->x:Z

    return v0
.end method

.method public static synthetic u(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->E:J

    return-wide v0
.end method


# virtual methods
.method protected final a(Lgyp;)Lgyo;
    .locals 1
    .parameter

    .prologue
    .line 192
    new-instance v0, Lgob;

    invoke-direct {v0, p0, p1}, Lgob;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Lgyp;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 5
    .parameter

    .prologue
    .line 458
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->a(I)V

    .line 459
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    if-eqz v0, :cond_0

    .line 460
    iput p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->A:I

    .line 461
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->A:I

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->B:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->C:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->b(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 464
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 501
    invoke-super {p0, p1, p2}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->a(J)V

    .line 502
    return-void
.end method

.method public final a(JI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 483
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->a(JI)V

    .line 484
    iput p3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->C:I

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    .line 486
    const-string v0, "play exp"

    const-string v1, " player on ready"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->q()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->A:I

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->B:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->C:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->c(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 490
    iput-boolean v5, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->G:J

    .line 492
    const-string v0, "play exp"

    const-string v1, " js on ended in on ready"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :cond_0
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->h:Z

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->H:Lgom;

    invoke-virtual {v0}, Lgom;->b()V

    .line 497
    :cond_1
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V
    .locals 1
    .parameter

    .prologue
    .line 399
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->n()V

    .line 400
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->H:Lgom;

    invoke-virtual {v0, p1}, Lgom;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V

    .line 401
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 477
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->a(Ljava/lang/String;)V

    .line 478
    const-string v0, "play exp"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method public final b(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 506
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->b(I)V

    .line 507
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    if-nez v0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iput p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->A:I

    .line 511
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->A:I

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->B:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->C:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->d(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 513
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->q()I

    move-result v0

    .line 517
    iget-boolean v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    if-ge p1, v0, :cond_0

    sub-int v1, v0, p1

    int-to-long v2, v1

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 519
    const-string v1, "play exp"

    const-string v2, " js on ended in on progress"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    new-instance v2, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->A:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->B:I

    invoke-direct {v2, v3, v4, v0}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v1, v2}, Lgtl;->c(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 522
    iput-boolean v6, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->G:J

    goto :goto_0
.end method

.method public final c(I)V
    .locals 5
    .parameter

    .prologue
    .line 529
    iget v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->C:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->B:I

    .line 530
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->A:I

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->B:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->C:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->e(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 534
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->v:Z

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;->NORMAL:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->d()V

    goto :goto_0
.end method

.method protected final e()V
    .locals 3

    .prologue
    .line 393
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04d8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 395
    sget-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;->ERROR:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V

    .line 396
    return-void
.end method

.method public final e_()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 539
    iget-boolean v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->w:Z

    if-eqz v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 553
    :cond_1
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 554
    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ld;->ae(Ljava/lang/String;)Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    move-result-object v2

    .line 555
    sget-object v1, Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;->DIALOG_INSTALLED:Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;

    if-eq v2, v1, :cond_0

    .line 558
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    invoke-direct {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;-><init>()V

    .line 559
    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DISPLAY:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setAction(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PLAYER:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setFromType(Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->WAP:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayType(Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->k:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoType(Lcom/wandoujia/p4/video/model/VideoType;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->k:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v4, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v0, v4, v5}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setVideoId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->l:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v4, v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-virtual {v0, v4, v5}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setEpisodeId(J)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setProviderName(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->wapPlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->setPlayUrl(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder;->send()V

    .line 568
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    new-instance v3, Lgog;

    invoke-direct {v3, p0}, Lgog;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V

    iget-object v5, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v7, v4, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->packageName:Ljava/lang/String;

    new-instance v4, Lgoi;

    invoke-direct {v4, p0, v2, v7, v5}, Lgoi;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;Ljava/lang/String;Lcom/wandoujia/p4/video2/model/VideoPlayModel;)V

    new-instance v5, Lgoh;

    invoke-direct {v5, p0}, Lgoh;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/video2/play/PlayUtil$InstallType;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;

    move-result-object v0

    .line 594
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getFragmentManager()Ls;

    move-result-object v1

    const-string v2, "video play"

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/p4/video2/fragment/VideoAppInstallDialogFragment;->show(Ls;Ljava/lang/String;)V

    .line 595
    iput-boolean v6, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->w:Z

    move v0, v6

    .line 596
    goto/16 :goto_0

    .line 599
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->s:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 602
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e04d6

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->s:J

    move v0, v6

    .line 605
    goto/16 :goto_0
.end method

.method public final f()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 405
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "play exp"

    const-string v1, " js on ended in on progress"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->A:I

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->B:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->C:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->c(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 409
    iput-boolean v5, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->G:J

    .line 411
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->g_()V

    .line 412
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->f:Lgyk;

    invoke-virtual {v0, v6}, Lgyk;->removeMessages(I)V

    .line 413
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->u:Lgok;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->u:Lgok;

    invoke-virtual {v1, v7}, Lgok;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Lgok;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 424
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->G:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-gtz v0, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->g_()V

    .line 417
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->f:Lgyk;

    invoke-virtual {v0, v6}, Lgyk;->removeMessages(I)V

    .line 418
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->u:Lgok;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->u:Lgok;

    invoke-virtual {v1, v7}, Lgok;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->G:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lgok;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 422
    :cond_1
    sget-object v0, Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;->NORMAL:Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpLogBuilder$ExitReason;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 452
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->g()V

    .line 453
    invoke-static {}, Lgom;->a()V

    .line 454
    return-void
.end method

.method public final h()V
    .locals 5

    .prologue
    .line 468
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->h()V

    .line 469
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->y:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->A:I

    iget v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->B:I

    iget v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->C:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->a(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 473
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->D:J

    .line 128
    new-instance v0, Lgok;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgok;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;B)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->u:Lgok;

    .line 129
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "get null Arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "video_meta_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->k:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 133
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "video_episode_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->l:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 135
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_provider_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->o:I

    .line 136
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "video_play_model_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->n:Ljava/util/List;

    .line 139
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->n:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->o:I

    if-gt v0, v1, :cond_1

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t get play model from Arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->n:Ljava/util/List;

    iget v1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    .line 144
    new-instance v0, Lgom;

    invoke-direct {v0}, Lgom;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->H:Lgom;

    .line 145
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 444
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onDestroy()V

    .line 445
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 448
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onPause()V

    .line 437
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 440
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 428
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onResume()V

    .line 429
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 432
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/wandoujia/phoenix2/videoplayer/VideoPlayerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "play model is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "video_id"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->k:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v4, v3, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "episode_id"

    iget-object v3, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->l:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v4, v3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->m:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerInfo:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isPlayWithPlayExp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-static {}, Lgtu;->a()Lgtu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lgoa;

    invoke-direct {v3, p0}, Lgoa;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lgtu;->a(Landroid/content/Context;ZLgtx;)V

    .line 187
    :cond_1
    return-void
.end method
