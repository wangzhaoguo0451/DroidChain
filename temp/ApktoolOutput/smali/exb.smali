.class final Lexb;
.super Ljava/lang/Object;
.source "UpgradableAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 231
    invoke-static {}, Lewx;->e()Ljava/util/Set;

    move-result-object v2

    .line 232
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->i()Ljava/util/List;

    move-result-object v1

    .line 233
    const/4 v0, 0x0

    .line 234
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 235
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 236
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/appmanager/AppManager;->g(Ljava/lang/String;)Lcom/wandoujia/appmanager/AppManager$AppState;

    move-result-object v0

    .line 237
    sget-object v4, Lcom/wandoujia/appmanager/AppManager$AppState;->INSTALLING:Lcom/wandoujia/appmanager/AppManager$AppState;

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/wandoujia/appmanager/AppManager$AppState;->PATCHING:Lcom/wandoujia/appmanager/AppManager$AppState;

    if-eq v0, v4, :cond_2

    .line 238
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 241
    goto :goto_0

    .line 242
    :cond_0
    invoke-static {}, Lewx;->f()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 243
    invoke-static {v1}, Lewx;->a(I)I

    .line 244
    invoke-static {}, Lewx;->g()V

    .line 246
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
