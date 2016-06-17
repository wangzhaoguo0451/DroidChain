.class public final Lcom/wandoujia/appmanager/config/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0x10

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

    sput-object v0, Lcom/wandoujia/appmanager/config/Config;->a:[Ljava/lang/String;

    .line 37
    sget-object v0, Ld;->g:Lcqj;

    iget-object v0, v0, Lcqj;->a:Lcom/wandoujia/jupiter/JupiterApplication;

    sput-object v0, Lcom/wandoujia/appmanager/config/Config;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 40
    const-class v1, Lcom/wandoujia/appmanager/config/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/appmanager/config/Config;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "com.wandoujia.phoenix2"

    sget-object v2, Lcom/wandoujia/appmanager/config/Config;->c:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/appmanager/config/Config;->b:Landroid/content/SharedPreferences;

    .line 43
    :cond_0
    sget-object v0, Lcom/wandoujia/appmanager/config/Config;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/wandoujia/appmanager/config/Config$ContentDir;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    sget-object v1, Lcom/wandoujia/appmanager/config/Config;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/appmanager/config/Config;->a:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/config/Config$ContentDir;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 101
    goto :goto_0
.end method
