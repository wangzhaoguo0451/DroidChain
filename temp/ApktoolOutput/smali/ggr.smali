.class public final Lggr;
.super Ljava/lang/Object;
.source "VideoEpisodeContainer.java"

# interfaces
.implements Lggh;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lggr;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V
    .locals 4
    .parameter

    .prologue
    .line 94
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    iget-object v2, p0, Lggr;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->a(Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lggr;->a:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer;->a(Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V

    .line 97
    :cond_0
    return-void
.end method
