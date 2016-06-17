.class final Ldmq;
.super Ljava/lang/Object;
.source "DownloadCancelPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Ldmq;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Ldmq;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldmq;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Ld;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v0

    iget-object v1, p0, Ldmq;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgkr;->b(J)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Ldmq;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0
.end method
