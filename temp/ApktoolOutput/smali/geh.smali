.class public final Lgeh;
.super Ljava/lang/Object;
.source "VideoDetailPlayButtonSelector.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lfar;",
        "Lggn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfaq;

.field private b:Z

.field private c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field private d:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field private e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lfaq;

    invoke-direct {v0}, Lfaq;-><init>()V

    iput-object v0, p0, Lgeh;->a:Lfaq;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgeh;->b:Z

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Lfar;Lggn;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0e04e3

    const v8, 0x7f0e04d4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v2, p2, Lggn;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    iput-object v2, p0, Lgeh;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 80
    iget-object v2, p2, Lggn;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lggn;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lggn;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p2, Lggn;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iput-object v2, p0, Lgeh;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 84
    iget-object v2, p2, Lggn;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v2

    iput-object v2, p0, Lgeh;->d:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 85
    iput-boolean v0, p0, Lgeh;->b:Z

    .line 91
    :goto_0
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v2

    invoke-static {}, Lgdp;->a()Lgdp;

    move-result-object v3

    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/button/views/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgdp;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/button/views/StatefulButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v3

    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/button/views/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lgeh;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgeh;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgeh;->d:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    if-nez v2, :cond_2

    :cond_0
    iget-object v0, p0, Lgeh;->a:Lfaq;

    :goto_1
    invoke-virtual {v3, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    .line 95
    return-void

    .line 87
    :cond_1
    iget-object v2, p2, Lggn;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iput-object v2, p0, Lgeh;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 88
    iget-object v2, p2, Lggn;->b:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iput-object v2, p0, Lgeh;->d:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 89
    iput-boolean v1, p0, Lgeh;->b:Z

    goto :goto_0

    .line 93
    :cond_2
    const/4 v2, 0x0

    iget-object v5, p0, Lgeh;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    if-eqz v5, :cond_3

    iget-object v2, p0, Lgeh;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    iget-object v5, p0, Lgeh;->d:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v6, v5, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-virtual {v2, v6, v7}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->getLocalEpisodeModelById(J)Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    new-instance v2, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;

    iget-object v1, p0, Lgeh;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v5, p0, Lgeh;->d:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-direct {v2, v4, v1, v5}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;-><init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)V

    sget-object v1, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->DETAIL:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    iput-object v1, v2, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->b:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    sget-object v1, Lgei;->a:[I

    iget-object v5, p0, Lgeh;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v5, v5, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v5}, Lcom/wandoujia/p4/video/model/VideoType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lgeh;->b:Z

    if-eqz v1, :cond_5

    const v0, 0x7f0e04d5

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Lfaq;

    invoke-direct {v1, v0, v2}, Lfaq;-><init>(Ljava/lang/CharSequence;Lcom/wandoujia/mvc/Action;)V

    move-object v0, v1

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0e04e8

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgeh;->c:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v4, p0, Lgeh;->d:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-static {v1, v4}, Ld;->a(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_1
    if-eqz v0, :cond_4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    check-cast p1, Lfar;

    check-cast p2, Lggn;

    invoke-virtual {p0, p1, p2}, Lgeh;->a(Lfar;Lggn;)V

    return-void
.end method
