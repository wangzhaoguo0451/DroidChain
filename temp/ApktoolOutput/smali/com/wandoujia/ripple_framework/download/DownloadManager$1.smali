.class Lcom/wandoujia/ripple_framework/download/DownloadManager$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManager.java"


# instance fields
.field private a:I

.field private synthetic b:Lcom/wandoujia/ripple_framework/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/wandoujia/ripple_framework/download/DownloadManager;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->a:I

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadManager;)Lhcb;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lhcb;->a([Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 105
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    invoke-virtual {v2, v0, v3}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 67
    if-nez v0, :cond_2

    .line 68
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 70
    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 100
    :cond_1
    :goto_1
    return-void

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->parseNetworkType(Landroid/net/NetworkInfo;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;I)I

    .line 85
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;)I

    move-result v0

    iget v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->a:I

    if-eq v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 90
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->a()V

    .line 98
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->a:I

    goto :goto_1

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;)I

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->a:I

    if-ne v0, v2, :cond_5

    .line 94
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->a()V

    goto :goto_2

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 96
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadManager;)Lhcb;

    move-result-object v0

    new-array v1, v2, [Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lhcb;->a([Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;->b:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v2, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_0
.end method
