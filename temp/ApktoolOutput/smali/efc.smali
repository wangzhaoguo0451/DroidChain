.class public final Lefc;
.super Ljava/lang/Object;
.source "ResumeDownloadAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/wandoujia/launcher_base/download/DownloadInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lefc;->b:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 33
    iput-object p1, p0, Lefc;->a:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic a(Lefc;)Lcom/wandoujia/launcher_base/download/DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lefc;->b:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    return-object v0
.end method

.method static synthetic a()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Lefc;->a(Z)V

    return-void
.end method

.method private static a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    const-string v1, "resume_in_3g"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lefc;->b:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lefc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lefc;->a:Landroid/content/Context;

    sget v2, Lcom/wandoujia/launcher_base/R$string;->open_network_connect:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lefc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/wandoujia/launcher_base/download/receiver/ReverseProxyReiceiver;->a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->ON:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->checkWifiIsHotSpot(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_7

    .line 45
    invoke-static {}, Lg;->m()J

    move-result-wide v4

    iget-object v0, p0, Lefc;->b:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->e()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    invoke-static {}, Legx;->c()Z

    move-result v0

    if-nez v0, :cond_6

    .line 48
    :cond_4
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Lefc;->b:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0, v1}, Leen;->b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 43
    goto :goto_1

    .line 51
    :cond_6
    new-instance v0, Lejw;

    iget-object v3, p0, Lefc;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lejw;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/wandoujia/launcher_base/R$string;->tips:I

    invoke-virtual {v0, v3}, Lejw;->a(I)Lejw;

    move-result-object v0

    iget-object v3, p0, Lefc;->a:Landroid/content/Context;

    sget v4, Lcom/wandoujia/launcher_base/R$string;->download_3g_confirm:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lefc;->b:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v6}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->e()J

    move-result-wide v6

    iget-object v8, p0, Lefc;->b:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v8}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->d()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x4980

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lejw;->b(Ljava/lang/CharSequence;)Lejw;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lejw;->b(ILandroid/content/DialogInterface$OnClickListener;)Lejw;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_base/R$string;->continue_download:I

    new-instance v2, Lefd;

    invoke-direct {v2, p0}, Lefd;-><init>(Lefc;)V

    invoke-virtual {v0, v1, v2}, Lejw;->a(ILandroid/content/DialogInterface$OnClickListener;)Lejw;

    move-result-object v0

    invoke-virtual {v0}, Lejw;->a()Lejq;

    move-result-object v0

    invoke-virtual {v0}, Lejq;->show()V

    goto/16 :goto_0

    .line 68
    :cond_7
    iget-object v0, p0, Lefc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v2, p0, Lefc;->b:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0, v2}, Leen;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 71
    invoke-static {v1}, Lefc;->a(Z)V

    goto/16 :goto_0
.end method
