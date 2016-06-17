.class public Lcom/wandoujia/p4/webdownload/WebDownloadService;
.super Landroid/app/Service;
.source "WebDownloadService.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lgsf;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadService;->c:Ljava/util/List;

    .line 208
    new-instance v0, Lgri;

    invoke-direct {v0, p0}, Lgri;-><init>(Lcom/wandoujia/p4/webdownload/WebDownloadService;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadService;->d:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadService;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/webdownload/WebDownloadService;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadService;->b:Lgsf;

    invoke-virtual {v0}, Lgsf;->d()V

    return-void
.end method

.method public static synthetic d(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Lgsf;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadService;->b:Lgsf;

    return-object v0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 195
    const-string v0, "audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Landroid/media/NoAudioFocusAudioManager;

    invoke-direct {v0, p0}, Landroid/media/NoAudioFocusAudioManager;-><init>(Landroid/content/Context;)V

    .line 200
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadService;->d:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadInterface$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a:Landroid/os/Handler;

    .line 44
    new-instance v0, Lgsf;

    invoke-direct {v0, p0}, Lgsf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadService;->b:Lgsf;

    .line 45
    invoke-static {}, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a()Lcom/wandoujia/p4/webdownload/core/JsIntercepter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/webdownload/core/JsIntercepter;->a(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/WebDownloadService;->b:Lgsf;

    new-instance v1, Lgrb;

    invoke-direct {v1, p0}, Lgrb;-><init>(Lcom/wandoujia/p4/webdownload/WebDownloadService;)V

    iput-object v1, v0, Lgsf;->e:Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;

    .line 175
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 180
    new-instance v0, Lgrh;

    invoke-direct {v0, p0}, Lgrh;-><init>(Lcom/wandoujia/p4/webdownload/WebDownloadService;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method
