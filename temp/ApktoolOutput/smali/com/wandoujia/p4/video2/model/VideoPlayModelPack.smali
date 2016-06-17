.class public Lcom/wandoujia/p4/video2/model/VideoPlayModelPack;
.super Ljava/lang/Object;
.source "VideoPlayModelPack.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1b16e382bc96ea59L


# instance fields
.field public final episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field public final metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field public final playModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Ljava/util/List;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModelPack;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 20
    iput-object p2, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModelPack;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 21
    iput-object p3, p0, Lcom/wandoujia/p4/video2/model/VideoPlayModelPack;->playModelList:Ljava/util/List;

    .line 22
    return-void
.end method
