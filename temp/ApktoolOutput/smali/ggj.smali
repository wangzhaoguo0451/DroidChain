.class final Lggj;
.super Ljava/lang/Object;
.source "VideoDetailOperationBarController.java"

# interfaces
.implements Lgls;


# instance fields
.field private synthetic a:Lggi;


# direct methods
.method constructor <init>(Lggi;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lggj;->a:Lggi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)Z
    .locals 4
    .parameter

    .prologue
    .line 91
    if-eqz p1, :cond_0

    iget-object v0, p0, Lggj;->a:Lggi;

    iget-object v0, v0, Lggi;->g:Lggn;

    iget-object v0, v0, Lggn;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iget-wide v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    iget-wide v2, p1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lggj;->c(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lggj;->a:Lggi;

    iget-object v0, v0, Lggi;->g:Lggn;

    iput-object p1, v0, Lggn;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 61
    :cond_0
    iget-object v0, p0, Lggj;->a:Lggi;

    iget-object v1, p0, Lggj;->a:Lggi;

    iget-object v1, v1, Lggi;->f:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    iget-object v2, p0, Lggj;->a:Lggi;

    iget-object v2, v2, Lggi;->g:Lggn;

    invoke-virtual {v0, v1, v2}, Lggi;->a(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    .line 62
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lggj;->c(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lggj;->a:Lggi;

    iget-object v0, v0, Lggi;->g:Lggn;

    iput-object p1, v0, Lggn;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 70
    :cond_0
    iget-object v0, p0, Lggj;->a:Lggi;

    iget-object v1, p0, Lggj;->a:Lggi;

    iget-object v1, v1, Lggi;->f:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    iget-object v2, p0, Lggj;->a:Lggi;

    iget-object v2, v2, Lggi;->g:Lggn;

    invoke-virtual {v0, v1, v2}, Lggi;->a(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    .line 71
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lggj;->c(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lggj;->a:Lggi;

    iget-object v0, v0, Lggi;->g:Lggn;

    const/4 v1, 0x0

    iput-object v1, v0, Lggn;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 78
    :cond_0
    iget-object v0, p0, Lggj;->a:Lggi;

    iget-object v1, p0, Lggj;->a:Lggi;

    iget-object v1, v1, Lggi;->f:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    iget-object v2, p0, Lggj;->a:Lggi;

    iget-object v2, v2, Lggi;->g:Lggn;

    invoke-virtual {v0, v1, v2}, Lggi;->a(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    .line 79
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lggj;->c(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lggj;->a:Lggi;

    iget-object v0, v0, Lggi;->g:Lggn;

    iput-object p1, v0, Lggn;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 87
    :cond_0
    iget-object v0, p0, Lggj;->a:Lggi;

    iget-object v1, p0, Lggj;->a:Lggi;

    iget-object v1, v1, Lggi;->f:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    iget-object v2, p0, Lggj;->a:Lggi;

    iget-object v2, v2, Lggi;->g:Lggn;

    invoke-virtual {v0, v1, v2}, Lggi;->a(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    .line 88
    return-void
.end method
