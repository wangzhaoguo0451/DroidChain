.class public final Ldez;
.super Lcom/wandoujia/appmanager/LocalAppChangedListener;
.source "DetailFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/fragment/DetailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-direct {p0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/appmanager/LocalAppChangedListener;->a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V

    .line 139
    iget-object v0, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->f(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Leqw;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->g(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Leqw;

    move-result-object v0

    check-cast v0, Ldff;

    invoke-static {v0}, Ldff;->a(Ldff;)V

    .line 144
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/wandoujia/appmanager/LocalAppChangedListener;->a(Ljava/util/Map;)V

    .line 127
    iget-object v0, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->c(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Leqw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->d(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Ldez;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->e(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Leqw;

    move-result-object v0

    check-cast v0, Ldff;

    invoke-static {v0}, Ldff;->a(Ldff;)V

    .line 134
    :cond_0
    return-void
.end method
