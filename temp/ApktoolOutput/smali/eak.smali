.class public final Leak;
.super Ljava/lang/Object;
.source "GameIconAction.java"

# interfaces
.implements Leaf;


# instance fields
.field private a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

.field private b:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    .line 37
    iput-object p1, p0, Leak;->c:Landroid/view/View;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 42
    iget-object v1, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leak;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leak;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Leak;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 47
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v1

    iget-object v2, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v1

    iget-object v2, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lebl;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v1

    iget-object v2, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lebb;->b(Ljava/lang/String;)I

    move-result v1

    .line 52
    if-lez v1, :cond_8

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld;->s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 53
    invoke-static {}, Lebb;->a()Lebb;

    move-result-object v1

    iget-object v2, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lebb;->a:Ljava/util/Map;

    if-eqz v4, :cond_7

    iget-object v1, v1, Lebb;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getStatus()Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    move-result-object v2

    sget-object v5, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->UNREAD:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    if-ne v2, v5, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    .line 55
    :goto_2
    iget-object v2, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-static {v3, v1, v2}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherBlockActivity;->a(Landroid/content/Context;Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V

    .line 72
    :cond_3
    :goto_3
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v2

    iget-object v1, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v2, Lebl;->b:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, v2, Lebl;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getStartCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->setStartCount(I)V

    iget-object v2, v2, Lebl;->c:Leba;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v2, v2, Leba;->a:Ldzg;

    invoke-virtual {v2, v1}, Ldzg;->b(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V

    .line 73
    :cond_5
    iget-object v1, p0, Leak;->c:Landroid/view/View;

    iget-object v2, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v3}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {v1, v2, v3, v4}, Ld;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)V

    .line 75
    iget-object v1, p0, Leak;->c:Landroid/view/View;

    const-string v2, "local_game"

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "launcher_local_game"

    invoke-static {v1, v2, v3, v4, v5}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 58
    :cond_8
    :try_start_0
    iget-object v1, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Ld;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    move-result-object v1

    iput-object v1, p0, Leak;->b:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    .line 60
    iget-object v1, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    instance-of v1, v3, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 62
    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 65
    :catch_0
    move-exception v1

    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v1

    iget-object v2, p0, Leak;->a:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lebl;->c(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Leak;->b:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    if-eqz v1, :cond_3

    .line 67
    iget-object v1, p0, Leak;->b:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil;->b(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_3
.end method
