.class public Lcom/wandoujia/p4/webdownload/player/fragment/VideoOfflinePlayerFragment;
.super Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;
.source "VideoOfflinePlayerFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;
    .locals 1
    .parameter

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfoVideo;

    invoke-direct {v0, p1}, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfoVideo;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lgvz;Landroid/webkit/WebView;)Lguj;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lgul;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/fragment/VideoOfflinePlayerFragment;->a:Lgvb;

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/player/fragment/VideoOfflinePlayerFragment;->b:Lgwh;

    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/player/fragment/VideoOfflinePlayerFragment;->c:Lgwl;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lgul;-><init>(Lgvb;Lgwh;Lgwl;Lgvz;Landroid/webkit/WebView;)V

    return-object v0
.end method

.method protected final a(Lgvz;)Lgun;
    .locals 2
    .parameter

    .prologue
    .line 72
    new-instance v0, Lguo;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/fragment/VideoOfflinePlayerFragment;->a:Lgvb;

    invoke-direct {v0, p1, v1}, Lguo;-><init>(Lgvz;Lgvb;)V

    return-object v0
.end method

.method protected final a(Lgvd;)Lgvz;
    .locals 1
    .parameter

    .prologue
    .line 67
    new-instance v0, Lgwa;

    invoke-direct {v0, p1}, Lgwa;-><init>(Lgvd;)V

    return-object v0
.end method

.method protected final a()Lgwh;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/fragment/VideoOfflinePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;->a(Landroid/app/Activity;)Lcom/wandoujia/p4/webdownload/player/loadingcover/OfflineVideoPageLoadingCover;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Lgvb;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/fragment/VideoOfflinePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->a(Landroid/app/Activity;)Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Lgwl;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/fragment/VideoOfflinePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;->a(Landroid/app/Activity;)Lcom/wandoujia/p4/webdownload/player/webcontainer/CommonVideoWebViewContainer;

    move-result-object v0

    return-object v0
.end method
