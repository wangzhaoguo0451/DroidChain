.class public final Lcom/wandoujia/clean/http/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# static fields
.field private static a:Landroid/content/SharedPreferences;

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "app"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "music"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "video"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "book"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "backup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "diagnosis"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "export"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".config"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".md5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".client"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "capture"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "wandoujia photos"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "misc"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mario"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "community"

    aput-object v2, v0, v1

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/clean/http/Config;->c:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public static declared-synchronized a()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 325
    const-class v1, Lcom/wandoujia/clean/http/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/clean/http/Config;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 326
    const-string v0, "com.wandoujia.phoenix2"

    invoke-static {v0}, Lcom/wandoujia/clean/http/Config;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/clean/http/Config;->a:Landroid/content/SharedPreferences;

    .line 328
    :cond_0
    sget-object v0, Lcom/wandoujia/clean/http/Config;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 805
    const/4 v0, 0x0

    .line 808
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 809
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "channel.mf"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    const-string v0, "wandoujia_debug"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 819
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 821
    :goto_0
    return-object v0

    .line 815
    :cond_0
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 817
    :catch_0
    move-exception v1

    :goto_1
    invoke-static {v0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 821
    const-string v0, "wandoujia_debug"

    goto :goto_0

    .line 819
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 817
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 398
    invoke-static {}, Lcom/wandoujia/clean/http/Config;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 1434
    invoke-static {}, Lcom/wandoujia/clean/http/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1435
    const-string v1, "KEY_LAST_GARBAGE_BACKGROUND_SCAN_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1436
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1437
    return-void
.end method

.method public static a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 885
    invoke-static {}, Lcom/wandoujia/clean/http/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 886
    const-string v1, "USER_EXTERNAL_STORAGE_FOR_CACHE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 887
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 888
    return-void
.end method

.method private static b(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldWriteableFiles"
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 777
    const-class v1, Lcom/wandoujia/clean/http/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/clean/http/Config;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-static {}, Lcom/wandoujia/shared_storage/SharedSettings;->a()Lcom/wandoujia/shared_storage/SharedSettings;

    move-result-object v0

    const-string v2, "first_channel"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/shared_storage/SharedSettings;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    sput-object v0, Lcom/wandoujia/clean/http/Config;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/clean/http/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/clean/http/Config;->c:Ljava/lang/String;

    .line 781
    invoke-static {}, Lcom/wandoujia/shared_storage/SharedSettings;->a()Lcom/wandoujia/shared_storage/SharedSettings;

    move-result-object v0

    const-string v2, "first_channel"

    sget-object v3, Lcom/wandoujia/clean/http/Config;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/shared_storage/SharedSettings;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_0
    sget-object v0, Lcom/wandoujia/clean/http/Config;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 880
    invoke-static {}, Lcom/wandoujia/clean/http/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "USER_EXTERNAL_STORAGE_FOR_CACHE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 891
    invoke-static {}, Lcom/wandoujia/clean/http/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "USER_EXTERNAL_STORAGE_FOR_CACHE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e()J
    .locals 4

    .prologue
    .line 1430
    invoke-static {}, Lcom/wandoujia/clean/http/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_LAST_GARBAGE_BACKGROUND_SCAN_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized f()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 332
    const-class v1, Lcom/wandoujia/clean/http/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/clean/http/Config;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 333
    const-string v0, "com.wandoujia.phoenix2.config"

    invoke-static {v0}, Lcom/wandoujia/clean/http/Config;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/clean/http/Config;->b:Landroid/content/SharedPreferences;

    .line 335
    :cond_0
    sget-object v0, Lcom/wandoujia/clean/http/Config;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
