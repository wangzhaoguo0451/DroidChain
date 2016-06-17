.class public final Ldhx;
.super Landroid/os/AsyncTask;
.source "DownloadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Ldhx;->a:Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter

    .prologue
    .line 168
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v0

    invoke-static {}, Lglw;->a()V

    iget-object v1, v0, Lgkr;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lgkr;->b()V

    :cond_0
    iget-object v0, v0, Lgkr;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    iget-object v3, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v3, v3, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-direct {v3}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fake_video_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    sget-object v4, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    iput-object v4, v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v4, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v4, v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v4, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v4, v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->n:Ljava/lang/String;

    iget-object v4, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v4, v4, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v4}, Lcom/wandoujia/p4/video/model/VideoType;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    new-instance v4, Lcom/wandoujia/download2/DownloadRequestParam;

    invoke-direct {v4}, Lcom/wandoujia/download2/DownloadRequestParam;-><init>()V

    new-instance v5, Lcom/wandoujia/download2/DownloadInfo2;

    invoke-direct {v5, v4}, Lcom/wandoujia/download2/DownloadInfo2;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;)V

    iput-object v5, v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    new-instance v4, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v5, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    iget-object v6, v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->id_string(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    sget-object v6, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DOWNLOAD_ITEM:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    sget-object v6, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->DOWNLOAD_INFO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v6, v6, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v6, v6, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->largeCoverUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->icon(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v7, v7, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v7}, Lcom/wandoujia/p4/video/model/VideoType;->getNameResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    const v5, 0x7f0c001b

    invoke-virtual {v4, v5, v3}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    const v3, 0x7f0c002f

    invoke-virtual {v4, v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object v1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    check-cast p1, Ljava/util/List;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldhx;->a:Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->a(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Ldhx;->a:Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->b(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;)V

    :cond_0
    return-void
.end method
