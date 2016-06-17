.class public final Lgex;
.super Ljava/lang/Object;
.source "VideoViewUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video/model/ProviderInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/model/ProviderInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lgex;->a:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    .line 61
    iget-object v0, p0, Lgex;->a:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getAppDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->d:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v0, p0, Lgex;->a:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->g:Ljava/lang/String;

    iget-object v0, p0, Lgex;->a:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->j:Ljava/lang/String;

    iget-object v0, p0, Lgex;->a:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->i:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iget-object v0, p0, Lgex;->a:Lcom/wandoujia/p4/video/model/ProviderInfo;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->h:Ljava/lang/String;

    .line 68
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 70
    return-void
.end method
