.class public Lcom/sina/weibo/sdk/net/DownloadService;
.super Landroid/app/IntentService;
.source "DownloadService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sina/weibo/sdk/net/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/net/DownloadService;->a:Ljava/lang/String;

    .line 29
    sget-object v0, Lbue;->a:Ljava/lang/String;

    sput-object v0, Lcom/sina/weibo/sdk/net/DownloadService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sina/weibo/sdk/net/DownloadService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 43
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/net/DownloadService;->stopSelf()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v1, "download_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "notification_content"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onHandleIntent downLoadUrl:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "!!!!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/net/DownloadService;->stopSelf()V

    goto :goto_0

    .line 75
    :cond_2
    const-string v0, ""

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/net/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 78
    const-string v4, "GET"

    new-instance v5, Lbvy;

    const-string v6, ""

    invoke-direct {v5, v6}, Lbvy;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {v3, v1, v4, v5}, Lcom/sina/weibo/sdk/net/HttpManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lbvy;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string v1, ""

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ".apk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 82
    :cond_4
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/net/DownloadService;->stopSelf()V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 90
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/net/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0}, Ld;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_5
    :try_start_1
    sget-object v4, Lcom/sina/weibo/sdk/net/DownloadService;->b:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/net/DownloadService;->getApplicationContext()Landroid/content/Context;

    invoke-static {v3, v4, v1}, Lcom/sina/weibo/sdk/net/HttpManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 53
    if-nez p1, :cond_0

    .line 56
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
