.class public final Lggn;
.super Ljava/lang/Object;
.source "VideoDetailOperationBarModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;


# instance fields
.field public a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

.field public b:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field public c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

.field public d:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

.field public e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p4, p0, Lggn;->d:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    .line 27
    iput-object p1, p0, Lggn;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    .line 28
    iput-object p2, p0, Lggn;->b:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 29
    iput-object p3, p0, Lggn;->c:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    .line 30
    iput-object p5, p0, Lggn;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 31
    return-void
.end method
