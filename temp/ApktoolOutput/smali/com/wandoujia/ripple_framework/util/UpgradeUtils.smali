.class public final Lcom/wandoujia/ripple_framework/util/UpgradeUtils;
.super Ljava/lang/Object;
.source "UpgradeUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lhlt;

    invoke-direct {v0}, Lhlt;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)J
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 339
    const-wide/16 v0, 0x0

    .line 340
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 343
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 344
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 347
    :cond_1
    if-eqz p0, :cond_3

    .line 348
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 349
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isPatchUpgradable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullSize()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getPatchSize()J

    move-result-wide v0

    sub-long v0, v6, v0

    add-long/2addr v0, v2

    :goto_2
    move-wide v2, v0

    .line 356
    goto :goto_1

    .line 358
    :cond_3
    return-wide v2

    :cond_4
    move-wide v0, v2

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 362
    if-nez p0, :cond_0

    move-object v0, v1

    .line 372
    :goto_0
    return-object v0

    .line 366
    :cond_0
    sget-object v0, Lham;->f:Lham;

    const-string v2, "app"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0, p0}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 372
    goto :goto_0
.end method

.method public static a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Handler;

    invoke-static {}, Lcqj;->a()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcoq;

    invoke-direct {v0}, Lcoq;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 241
    invoke-static {v0}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->c(Ljava/util/List;)V

    .line 246
    :goto_1
    return-object v0

    .line 239
    :cond_0
    sget-object v2, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcor;

    invoke-direct {v3, v0, v1}, Lcor;-><init>(Lcom/wandoujia/appmanager/AppManager;[Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 246
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 244
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 127
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 133
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isImportantUpgradable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 137
    sget-object v7, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->IMPORTANT:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    invoke-virtual {v0, v7}, Lcom/wandoujia/appmanager/LocalAppInfo;->setUpgradeType(Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;)V

    .line 138
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isImportantUpgradable()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->IMPORTANT:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    invoke-virtual {v7}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/wandoujia/appmanager/LocalAppInfo;->setUpgradeTypes(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->RUNNING:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    invoke-virtual {v7}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/wandoujia/appmanager/LocalAppInfo;->setUpgradeTypes(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getImportantLevel()I

    move-result v7

    if-ne v7, v8, :cond_5

    sget-object v7, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->TOP:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    invoke-virtual {v7}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/wandoujia/appmanager/LocalAppInfo;->setUpgradeTypes(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->RECENTLY:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    invoke-virtual {v7}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/wandoujia/appmanager/LocalAppInfo;->setUpgradeTypes(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :cond_6
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 140
    sget-object v7, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->RUNNING:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    invoke-virtual {v0, v7}, Lcom/wandoujia/appmanager/LocalAppInfo;->setUpgradeType(Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;)V

    .line 141
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 142
    :cond_7
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getImportantLevel()I

    move-result v7

    if-ne v7, v8, :cond_8

    .line 143
    sget-object v7, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->TOP:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    invoke-virtual {v0, v7}, Lcom/wandoujia/appmanager/LocalAppInfo;->setUpgradeType(Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;)V

    .line 144
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 145
    :cond_8
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 146
    sget-object v7, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;->RECENTLY:Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;

    invoke-virtual {v0, v7}, Lcom/wandoujia/appmanager/LocalAppInfo;->setUpgradeType(Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeType;)V

    .line 147
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 151
    :cond_9
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 155
    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 69
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 72
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 79
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getRecommendedType()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "STRONG_RECOMMEND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_2
    const-string v3, "WARNNING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_3
    const-string v0, "NOT_RECOMMEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_4
    return-void
.end method

.method public static b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->i()Ljava/util/List;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 288
    if-eqz v0, :cond_1

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 290
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_1
    return-object v1
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-static {p0, v0, v1}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 261
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 196
    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->d:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/wandoujia/ripple_framework/util/AppUtils;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 198
    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 204
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sub-long/2addr v2, v4

    const-wide v4, 0x9a7ec800L

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 210
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 316
    invoke-static {}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->b()Ljava/util/List;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    invoke-static {v1}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 321
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 325
    sget-object v1, Lham;->f:Lham;

    const-string v4, "app_task"

    invoke-virtual {v1, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->UPGRADE_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v0, v4}, Lhll;->a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-virtual {v1, v0, v5, v5}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/model/Model;ZZ)V

    goto :goto_1

    .line 330
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    if-nez p0, :cond_1

    .line 283
    :cond_0
    return-void

    .line 276
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 277
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 279
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradeIgnored()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 220
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 222
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 234
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 228
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 229
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 234
    goto :goto_0
.end method
