.class public Leno;
.super Ljava/lang/Object;
.source "LogHandler.java"


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field public c:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field private final d:Lemw;

.field private final e:Leob;

.field private f:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field private g:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;


# direct methods
.method constructor <init>(Lemw;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Leno;->d:Lemw;

    .line 40
    new-instance v0, Leob;

    invoke-direct {v0}, Leob;-><init>()V

    iput-object v0, p0, Leno;->e:Leob;

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ui-log-v3-handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Leno;->a:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic a(Leno;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Leno;->c:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    return-object p1
.end method

.method static synthetic a(Leno;)Lemw;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Leno;->d:Lemw;

    return-object v0
.end method

.method static synthetic a(Leno;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Leno;->d:Lemw;

    invoke-virtual {v0, p1}, Lemw;->onEvent(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V

    return-void
.end method

.method static synthetic a(Leno;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 25
    iget-object v0, p0, Leno;->f:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Leno;->g:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Leno;->f:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Leno;->f:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v1, p0, Leno;->f:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-direct {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v0

    iput-object v0, p0, Leno;->g:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Leno;->f:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v1, p0, Leno;->f:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v1, v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v1, v1, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v1, p0, Leno;->f:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-direct {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v0

    iput-object v0, p0, Leno;->g:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    goto :goto_0
.end method

.method static synthetic b(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .locals 1
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Leno;->g:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    return-object v0
.end method

.method static synthetic b(Leno;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Leno;->f:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    return-object p1
.end method

.method static synthetic c(Leno;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Leno;->b:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    return-object p1
.end method

.method static synthetic c(Leno;)Leob;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Leno;->e:Leob;

    return-object v0
.end method

.method static synthetic d(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Leno;->c:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    return-object v0
.end method

.method static synthetic e(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Leno;->g:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    return-object v0
.end method

.method static synthetic f(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Leno;->f:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    return-object v0
.end method

.method static synthetic g(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Leno;->b:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    return-object v0
.end method
