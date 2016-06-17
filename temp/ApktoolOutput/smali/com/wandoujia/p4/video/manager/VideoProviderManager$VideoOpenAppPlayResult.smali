.class public Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;
.super Ljava/lang/Object;
.source "VideoProviderManager.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x767d6aced172cb87L


# instance fields
.field public localVideoEpisodeModel:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

.field public metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public timestamp:J


# direct methods
.method public constructor <init>(JLcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-wide p1, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->timestamp:J

    .line 736
    iput-object p3, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 737
    iput-object p4, p0, Lcom/wandoujia/p4/video/manager/VideoProviderManager$VideoOpenAppPlayResult;->localVideoEpisodeModel:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 738
    return-void
.end method
