.class public final Lgah;
.super Landroid/os/AsyncTask;
.source "NetCheckCheckingFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/netcheck/model/Configs;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lgah;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lgah;-><init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lgah;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    invoke-static {}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a()Lcom/wandoujia/p4/netcheck/model/Configs;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 73
    check-cast p1, Lcom/wandoujia/p4/netcheck/model/Configs;

    if-nez p1, :cond_0

    new-instance p1, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;

    invoke-direct {p1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;-><init>()V

    :cond_0
    iget-object v0, p0, Lgah;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->TRACE:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/netcheck/model/Configs;->getPublics()Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/p4/netcheck/model/Configs;->getTestdomain()Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgah;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/p4/netcheck/model/Configs;->getPublics()Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/p4/netcheck/model/Configs;->getTestdomain()Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    move-result-object v2

    new-instance v3, Lfzs;

    invoke-direct {v3, v0, v1, v2}, Lfzs;-><init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;Lcom/wandoujia/p4/netcheck/model/Configs$Publics;Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;)V

    invoke-static {v3}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/netcheck/model/Configs;->getTestdomain()Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;->getDomains()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgah;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/p4/netcheck/model/Configs;->getTestdomain()Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;->getDomains()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lfzr;

    invoke-direct {v4, v1, v0, v2}, Lfzr;-><init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v4}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgah;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v0

    new-instance v1, Lfzt;

    invoke-direct {v1, v0}, Lfzt;-><init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lgah;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->b(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/p4/netcheck/model/Configs;->getDownloadurls()Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgah;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/p4/netcheck/model/Configs;->getDownloadurls()Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;->getUrls()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lfzq;

    invoke-direct {v2, v0, v1}, Lfzq;-><init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;Ljava/util/List;)V

    invoke-static {v2}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
