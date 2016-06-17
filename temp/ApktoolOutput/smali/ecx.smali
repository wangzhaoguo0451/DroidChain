.class public final Lecx;
.super Leis;
.source "StoryAppInfoCardView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lecx;->a:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-direct {p0}, Leis;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Leis;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 41
    iget-object v0, p0, Lecx;->a:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->a(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PAUSED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-ne v0, v1, :cond_2

    .line 46
    :cond_0
    iget-object v0, p0, Lecx;->a:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->a(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lecx;->a:Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;->a(Lcom/wandoujia/launcher/launcher/views/StoryAppInfoCardView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
