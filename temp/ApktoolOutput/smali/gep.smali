.class public final Lgep;
.super Landroid/os/FileObserver;
.source "VideoProviderManager.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/manager/VideoProviderManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lgep;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    .line 673
    const/16 v0, 0x3c0

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 675
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 679
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_2

    .line 680
    :cond_0
    invoke-static {p2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    invoke-static {p2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_1

    .line 683
    iget-object v1, p0, Lgep;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iget-object v1, v1, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d:Ljava/util/Map;

    invoke-static {p2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_1
    return-void

    .line 686
    :cond_2
    and-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_3

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    .line 688
    :cond_3
    iget-object v0, p0, Lgep;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iget-object v0, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 689
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 690
    iget-object v1, p0, Lgep;->a:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iget-object v1, v1, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
