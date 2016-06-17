.class public final Lcsj;
.super Ljava/util/TimerTask;
.source "ScreenMonitor.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/clean/monitor/ScreenMonitor;


# direct methods
.method public constructor <init>(Lcom/wandoujia/clean/monitor/ScreenMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcsj;->a:Lcom/wandoujia/clean/monitor/ScreenMonitor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 70
    const-string v0, "Background clean task begin."

    invoke-static {v0}, Ld;->z(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/wandoujia/clean/http/Config;->a(J)V

    .line 74
    iget-object v0, p0, Lcsj;->a:Lcom/wandoujia/clean/monitor/ScreenMonitor;

    invoke-static {v0}, Lcom/wandoujia/clean/monitor/ScreenMonitor;->a(Lcom/wandoujia/clean/monitor/ScreenMonitor;)Lcom/wandoujia/clean/http/GarbageFetcher;

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    new-instance v3, Lcom/wandoujia/clean/http/GarbageFetcher$PackageNameParam;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrw;->a(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v0, 0x0

    invoke-direct {v3, v4, v6, v7, v0}, Lcom/wandoujia/clean/http/GarbageFetcher$PackageNameParam;-><init>(Ljava/lang/String;JLcse;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pkgNameMd5s"

    invoke-static {}, Lcsf;->a()Lcvo;

    move-result-object v6

    mul-int/lit8 v7, v0, 0xa

    add-int/lit8 v8, v0, 0x1

    mul-int/lit8 v8, v8, 0xa

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-interface {v1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/wandoujia/clean/http/GarbageFetcher;->a(Ljava/util/List;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_1
    const-string v0, "Background clean task end."

    invoke-static {v0}, Ld;->z(Ljava/lang/String;)V

    .line 76
    return-void
.end method
