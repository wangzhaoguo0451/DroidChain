.class public Lezy;
.super Ljava/lang/Object;
.source "ALHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lezy;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wdj."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lezy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;Ljava/lang/String;)Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-static {p0}, Lezy;->a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->intentElemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    .line 116
    iget-object v2, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;
    .locals 6
    .parameter

    .prologue
    .line 64
    :try_start_0
    new-instance v1, Lezu;

    invoke-direct {v1}, Lezu;-><init>()V

    .line 65
    invoke-virtual {v1}, Lezu;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lezw;

    iput-object p0, v0, Lezw;->a:Ljava/lang/String;

    .line 66
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    iget-object v1, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->appsElemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    iget-object v3, v1, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lezy;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lezy;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "filter remove "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 66
    :cond_2
    iget-object v1, v0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->intentElemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v3, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lezy;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lezy;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "filter remove "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static a()Z
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const v0, 0x15180

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-static {}, Lezy;->c()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {}, Ld;->y()Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    move-result-object v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_6

    .line 175
    sget-object v0, Lezy;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "updateSuggestion() appData = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {v4}, Lezy;->a(Ljava/lang/String;)Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_6

    .line 179
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 180
    sget-object v5, Lezy;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateSuggestion() suggestion = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Ld;->y()Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    move-result-object v5

    .line 182
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v5, v1, :cond_6

    .line 184
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v1

    const-string v3, "key_suggestion"

    invoke-virtual {v1, v3, v0}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putObject(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 185
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v1

    const-string v3, "key_app_hash"

    invoke-virtual {v1, v3, v0}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v3

    const-string v4, "key_pre_request"

    invoke-virtual {v3, v4, v0, v1}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    move v0, v2

    .line 191
    :goto_1
    return v0

    .line 174
    :cond_0
    invoke-static {}, Ld;->y()Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    move-result-object v1

    if-nez v1, :cond_1

    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    move v0, v2

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v5

    const-string v6, "key_pre_request"

    invoke-virtual {v5, v6, v8, v9}, Lcom/wandoujia/base/utils/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    iget v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->expireTime:I

    if-le v1, v0, :cond_8

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v1, Lezy;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "isTimeout() "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "preRequest=[yy-mm-dd hh:mm:ss] "

    invoke-static {v10, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "current=[yy-mm-dd hh:mm:ss] "

    invoke-static {v10, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " timeout(s)="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v10}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-long v6, v8, v6

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    const-string v1, "key_app_hash"

    invoke-virtual {v0, v1, v3}, Lcom/wandoujia/base/utils/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_5

    move v0, v2

    :goto_4
    if-eqz v0, :cond_7

    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v3

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_3
.end method

.method public static a(Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->appsElemList:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;->intentElemList:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Ld;->y()Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    move-result-object v0

    .line 200
    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-static {}, Lfak;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Lfak;->a(Z)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->c()Ljava/util/List;

    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/os/Handler;

    sget-object v3, Lcom/wandoujia/appmanager/AppManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcpr;

    invoke-direct {v4, v0, v2}, Lcpr;-><init>(Lcom/wandoujia/appmanager/AppManager;[Landroid/os/Handler;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 44
    :cond_0
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 51
    new-instance v3, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;

    invoke-direct {v3}, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;-><init>()V

    .line 52
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->packageName:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->version:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v0

    iput v0, v3, Lcom/wandoujia/p4/app_launcher/model/ALAppInfo;->versionCode:I

    .line 55
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    :cond_1
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
