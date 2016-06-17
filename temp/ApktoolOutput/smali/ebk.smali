.class public final Lebk;
.super Ljava/lang/Object;
.source "FolderStateChecker.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lebk;->a:Ljava/util/Map;

    .line 35
    const-string v0, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lebk;->a:Ljava/util/Map;

    const-string v1, "com.baidu.gamecenter"

    const-string v2, "My Game"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lebk;->a:Ljava/util/Map;

    const-string v1, "com.cleanmaster.mguard_cn"

    const-string v2, "Games"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_0
    sget-object v0, Lebk;->a:Ljava/util/Map;

    const-string v1, "com.qihoo.appstore"

    const-string v2, "\u6211\u7684\u6e38\u620f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lebk;->a:Ljava/util/Map;

    const-string v1, "com.taobao.appcenter"

    const-string v2, "\u6211\u7684\u6e38\u620f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lebk;->a:Ljava/util/Map;

    const-string v1, "com.sogou.gamecenter"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void

    .line 39
    :cond_0
    sget-object v0, Lebk;->a:Ljava/util/Map;

    const-string v1, "com.baidu.gamecenter"

    const-string v2, "\u6211\u7684\u6e38\u620f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lebk;->a:Ljava/util/Map;

    const-string v1, "com.cleanmaster.mguard_cn"

    const-string v2, "\u6e38\u620f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "last_check_launcher_user_time"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 55
    invoke-static {p0}, Ledn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    const-string v0, "READ_SETTINGS"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/LauncherUtil;->getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    const-string v0, "unknown"

    .line 69
    :goto_1
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v4, "game_launcher"

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->ICON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v7, "check_shortcut_icon_exists"

    invoke-static {v4, v5, v6, v7}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_check_launcher_user_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 72
    :cond_1
    return-void

    .line 54
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_3
    const-string v0, "gone"

    goto :goto_1

    .line 67
    :cond_4
    const-string v0, "existed"

    goto :goto_1
.end method

.method public static a()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 80
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_generate_gamelist_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 81
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 90
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_generate_suggestionlist_time"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 91
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
