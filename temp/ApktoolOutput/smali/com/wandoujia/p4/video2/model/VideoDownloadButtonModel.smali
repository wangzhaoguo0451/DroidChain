.class public Lcom/wandoujia/p4/video2/model/VideoDownloadButtonModel;
.super Ljava/lang/Object;
.source "VideoDownloadButtonModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ebd50dd0eaefbd5L


# instance fields
.field public final episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field public final metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadButtonModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 18
    iput-object p2, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadButtonModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 19
    return-void
.end method
