.class public final Lhfo;
.super Lcom/wandoujia/appmanager/LocalAppChangedListener;
.source "InstallSuccessMonitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    if-nez p2, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lhfp;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lhfp;-><init>(Lcom/wandoujia/appmanager/LocalAppInfo;B)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Lhfp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lhfp;-><init>(Lcom/wandoujia/appmanager/LocalAppInfo;B)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
