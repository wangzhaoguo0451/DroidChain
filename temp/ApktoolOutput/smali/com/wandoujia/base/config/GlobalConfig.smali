.class public Lcom/wandoujia/base/config/GlobalConfig;
.super Ljava/lang/Object;
.source "GlobalConfig.java"


# static fields
.field private static final ASSETS_CHANNEL_FILE_NAME:Ljava/lang/String; = "channel.mf"

.field private static final DEFAULT_CHANNEL:Ljava/lang/String; = "wandoujia_debug"

.field private static final INTERNAL_PACKAGE_CHANNEL:Ljava/lang/String; = "wandoujia_internal"

.field private static appContext:Landroid/content/Context;

.field private static debug:Z

.field private static rootDir:Ljava/lang/String;

.field private static sLastChannel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, ""

    sput-object v0, Lcom/wandoujia/base/config/GlobalConfig;->rootDir:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/base/config/GlobalConfig;->debug:Z

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/base/config/GlobalConfig;->sLastChannel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAppRootDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->rootDir:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getLastChannel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    const-class v1, Lcom/wandoujia/base/config/GlobalConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->sLastChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->loadChannelFromAssets()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/base/config/GlobalConfig;->sLastChannel:Ljava/lang/String;

    .line 81
    :cond_0
    sget-object v0, Lcom/wandoujia/base/config/GlobalConfig;->sLastChannel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/wandoujia/base/config/GlobalConfig;->debug:Z

    return v0
.end method

.method public static isInternalPackage()Z
    .locals 2

    .prologue
    .line 65
    const-string v0, "wandoujia_internal"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getLastChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static loadChannelFromAssets()Ljava/lang/String;
    .locals 6

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 88
    :try_start_0
    sget-object v1, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 89
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "channel.mf"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-string v0, "wandoujia_debug"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 99
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    :goto_0
    return-object v0

    .line 95
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 97
    :catch_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    .line 101
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 107
    :cond_1
    :goto_2
    const-string v0, "wandoujia_debug"

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_2

    .line 101
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 103
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_4

    .line 99
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 97
    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    sput-object p0, Lcom/wandoujia/base/config/GlobalConfig;->appContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static setAppRootDir(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    sput-object p0, Lcom/wandoujia/base/config/GlobalConfig;->rootDir:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .parameter

    .prologue
    .line 45
    sput-boolean p0, Lcom/wandoujia/base/config/GlobalConfig;->debug:Z

    .line 46
    return-void
.end method
