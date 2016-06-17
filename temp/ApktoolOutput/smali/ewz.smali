.class final Lewz;
.super Lcom/wandoujia/appmanager/LocalAppChangedListener;
.source "UpgradableAppManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 122
    invoke-static {}, Lewx;->c()V

    .line 123
    return-void
.end method

.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-static {}, Lewx;->c()V

    .line 138
    return-void
.end method

.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-static {}, Lewx;->c()V

    .line 128
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-static {}, Lewx;->c()V

    .line 133
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 7
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
    .line 143
    invoke-static {}, Lewx;->c()V

    .line 144
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lj;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 152
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v5

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v6

    if-ne v5, v6, :cond_2

    .line 153
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lewx;->a(Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lewx;->a(J)V

    .line 165
    invoke-static {v3}, Lewx;->a(Ljava/util/List;)V

    goto :goto_0
.end method
