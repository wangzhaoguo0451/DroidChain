.class final Lfbr;
.super Ljava/lang/Object;
.source "CampaignUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:I

.field private synthetic f:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lfbr;->a:Ljava/lang/String;

    iput-object p2, p0, Lfbr;->b:Ljava/lang/String;

    iput-object p3, p0, Lfbr;->c:Ljava/lang/String;

    iput-object p4, p0, Lfbr;->d:Ljava/lang/String;

    iput p5, p0, Lfbr;->e:I

    iput-object p6, p0, Lfbr;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 152
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lfbr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isSucceed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    .line 157
    invoke-static {v1}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lham;->f:Lham;

    const-string v2, "install"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfr;

    iget-object v2, p0, Lfbr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lhfr;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    .line 165
    iget-object v0, p0, Lfbr;->b:Ljava/lang/String;

    iput-object v0, v1, Lhby;->h:Ljava/lang/String;

    iget-object v0, p0, Lfbr;->c:Ljava/lang/String;

    iput-object v0, v1, Lhby;->d:Ljava/lang/String;

    iget-object v0, p0, Lfbr;->d:Ljava/lang/String;

    iput-object v0, v1, Lhby;->i:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iget-object v0, p0, Lfbr;->a:Ljava/lang/String;

    iput-object v0, v1, Lhby;->g:Ljava/lang/String;

    iget-object v0, p0, Lfbr;->a:Ljava/lang/String;

    iput-object v0, v1, Lhby;->j:Ljava/lang/String;

    iget v0, p0, Lfbr;->e:I

    int-to-long v2, v0

    iput-wide v2, v1, Lhby;->p:J

    .line 174
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 176
    iget-object v0, p0, Lfbr;->f:Landroid/content/Context;

    const v1, 0x7f0e02a1

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0
.end method
