.class public Lcom/wandoujia/jupiter/fragment/StartPageFragment;
.super Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;
.source "StartPageFragment.java"


# instance fields
.field private d:Ldsw;

.field private e:Ldti;

.field private q:Ldtb;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;-><init>()V

    .line 49
    new-instance v0, Ldti;

    invoke-direct {v0, p0}, Ldti;-><init>(Lcom/wandoujia/jupiter/fragment/StartPageFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->e:Ldti;

    .line 61
    new-instance v0, Ldtb;

    invoke-direct {v0, p0}, Ldtb;-><init>(Lcom/wandoujia/jupiter/fragment/StartPageFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->q:Ldtb;

    .line 87
    const-string v0, "ripple://items"

    const-string v1, "http://ripple.wandoujia.com/api/v2/apps/box.proto"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/fragment/StartPageFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/fragment/StartPageFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/fragment/StartPageFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/fragment/StartPageFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->n:Leqw;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "http://apis.wandoujia.com/five/v1/startpages/%s?format=proto"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 104
    sget-object v0, Ldca;->a:Ldca;

    const-string v3, "local_feed"

    invoke-virtual {v0, v3}, Ldca;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    .line 106
    const-string v3, "vc"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v3, "entry"

    sget-object v4, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->OTHER:Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;

    invoke-virtual {v4}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager$Entrance;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v3, "netStatus"

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v3, "launchedCount"

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v3, "closedFeeds"

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "sectionItemNum"

    invoke-static {}, Lgdj;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "isIntroductionShow"

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->I()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "ch"

    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "source"

    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lhhq;

    invoke-static {}, Ld;->o()Leqx;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lhhq;-><init>(Ljava/lang/String;Leqx;Ljava/util/Map;)V

    .line 121
    new-instance v1, Ldtf;

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->e:Ldti;

    invoke-direct {v1, v2}, Ldtf;-><init>(Ldti;)V

    invoke-virtual {v0, v1}, Lhhq;->a(Leqx;)V

    .line 122
    return-object v0
.end method

.method public final e()Lhaw;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->d:Ldsw;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ldsw;

    invoke-direct {v0}, Ldsw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->d:Ldsw;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->d:Ldsw;

    return-object v0
.end method

.method protected final synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->e()Lhaw;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget-object v0, Ldca;->a:Ldca;

    const-string v1, "local_feed"

    invoke-virtual {v0, v1}, Ldca;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    iget-object v2, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->q:Ldtb;

    iget-object v3, v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->a:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v1, v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldtb;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->a:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->onDetach()V

    .line 136
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->n:Leqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->n:Leqw;

    iget-object v0, v0, Leqw;->b:Leqx;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/StartPageFragment;->n:Leqw;

    iget-object v0, v0, Leqw;->b:Leqx;

    invoke-interface {v0}, Leqx;->a()V

    .line 139
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->onResume()V

    .line 144
    return-void
.end method
