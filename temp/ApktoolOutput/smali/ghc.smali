.class public final Lghc;
.super Ljava/lang/Object;
.source "VideoDownloadAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

.field private synthetic b:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

.field private synthetic c:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lghc;->c:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    iput-object p2, p0, Lghc;->a:Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    iput-object p3, p0, Lghc;->b:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-static {}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a()Ldd;

    .line 282
    iget-object v0, p0, Lghc;->c:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->d(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Z

    .line 285
    iget-object v0, p0, Lghc;->c:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    iget-object v1, p0, Lghc;->c:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->e(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v1

    iget-object v2, p0, Lghc;->a:Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    iget-object v3, p0, Lghc;->b:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoDownloadModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    .line 286
    return-void
.end method
