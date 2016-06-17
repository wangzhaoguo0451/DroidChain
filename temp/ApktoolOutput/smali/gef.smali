.class final Lgef;
.super Ljava/lang/Object;
.source "VideoCardButtonSelector.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

.field private synthetic c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoMetaModel;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lgef;->a:Landroid/content/Context;

    iput-object p2, p0, Lgef;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iput-object p3, p0, Lgef;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 8

    .prologue
    .line 91
    new-instance v0, Lgdy;

    iget-object v1, p0, Lgef;->a:Landroid/content/Context;

    iget-object v2, p0, Lgef;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    iget-object v4, p0, Lgef;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v4, v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    iget-object v5, p0, Lgef;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v5, v5, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    iget-object v6, p0, Lgef;->b:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v6, v6, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subType:Lcom/wandoujia/p4/video/model/VideoSubType;

    iget-object v7, p0, Lgef;->c:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-direct/range {v0 .. v7}, Lgdy;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/wandoujia/p4/video/model/VideoType;Lcom/wandoujia/p4/video/model/VideoSubType;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;)V

    invoke-virtual {v0}, Lgdy;->execute()V

    .line 93
    return-void
.end method
