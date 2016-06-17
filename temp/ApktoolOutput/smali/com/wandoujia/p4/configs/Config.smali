.class public final Lcom/wandoujia/p4/configs/Config;
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

.field private static c:Landroid/content/SharedPreferences;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
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

    sput-object v0, Lcom/wandoujia/p4/configs/Config;->a:[Ljava/lang/String;

    .line 211
    sput-object v3, Lcom/wandoujia/p4/configs/Config;->d:Ljava/lang/String;

    .line 212
    sput-object v3, Lcom/wandoujia/p4/configs/Config;->e:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public static A()Z
    .locals 3

    .prologue
    .line 2102
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_APP_DEFAULT_SHORTCUT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static B()Z
    .locals 3

    .prologue
    .line 2110
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_HAS_REMOVED_DEPRECATED_SHORTCUT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static C()V
    .locals 3

    .prologue
    .line 2114
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2115
    const-string v1, "KEY_NEED_DISPLAY_FIVE_ONBOARD"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2116
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2118
    return-void
.end method

.method public static D()Z
    .locals 3

    .prologue
    .line 2121
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_NEED_DISPLAY_FIVE_ONBOARD"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static E()V
    .locals 3

    .prologue
    .line 2125
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2126
    const-string v1, "KEY_APP_LAUNCHER_SHORTCUT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2127
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2128
    return-void
.end method

.method public static F()Z
    .locals 3

    .prologue
    .line 2131
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_APP_LAUNCHER_SHORTCUT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static G()I
    .locals 3

    .prologue
    .line 2141
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_LAUNCH_TIMES"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static H()V
    .locals 3

    .prologue
    .line 2145
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2146
    const-string v1, "KEY_ALREADY_SHOW_INTRODUCTION"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2147
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2148
    return-void
.end method

.method public static I()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2155
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->G()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "KEY_ALREADY_SHOW_INTRODUCTION"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->J()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static J()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 2160
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_PLUGIN_LAST_CHECK_TIME"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_launch_app_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static K()J
    .locals 4

    .prologue
    .line 2164
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SHORTCUT_CHECK_APP_LAUNCHER"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static L()V
    .locals 3

    .prologue
    .line 2174
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2175
    const-string v1, "KEY_LAST_LAUNCH_VERSION_CODE"

    const/16 v2, 0x22dd

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2176
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2177
    return-void
.end method

.method public static M()Z
    .locals 3

    .prologue
    .line 2180
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_LAST_LAUNCH_VERSION_CODE"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2181
    const/16 v1, 0x22dd

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static N()Z
    .locals 3

    .prologue
    .line 2185
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_SHOW_USE_CUSTOM_FONT_TOAST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static O()J
    .locals 4

    .prologue
    .line 2201
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_LAST_SHOW_MEMORY_INSUFFICIENT"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static P()J
    .locals 4

    .prologue
    .line 2211
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ripple_recommend_notification_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Q()I
    .locals 3

    .prologue
    .line 2221
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ripple_recommend_notification_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized R()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 351
    const-class v1, Lcom/wandoujia/p4/configs/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/configs/Config;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 352
    const-string v0, "com.wandoujia.phoenix2.config"

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->d(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/configs/Config;->c:Landroid/content/SharedPreferences;

    .line 354
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/configs/Config;->c:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static S()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 670
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-object v0

    .line 678
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/wandoujia/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 681
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 683
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 687
    goto :goto_0

    .line 675
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized a()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 344
    const-class v1, Lcom/wandoujia/p4/configs/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/configs/Config;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 345
    const-string v0, "com.wandoujia.phoenix2"

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->d(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/configs/Config;->b:Landroid/content/SharedPreferences;

    .line 347
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/configs/Config;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 824
    const/4 v0, 0x0

    .line 827
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 828
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

    .line 830
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 831
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 832
    const-string v0, "wandoujia_debug"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 838
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 840
    :goto_0
    return-object v0

    .line 834
    :cond_0
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 836
    :catch_0
    move-exception v1

    :goto_1
    invoke-static {v0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 840
    const-string v0, "wandoujia_debug"

    goto :goto_0

    .line 838
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

    .line 836
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/wandoujia/p4/configs/Config$ContentDir;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 691
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->S()Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/configs/Config;->a:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wandoujia/p4/configs/Config$ContentDir;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 695
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 697
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 702
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 417
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->R()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 2
    .parameter

    .prologue
    .line 1568
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1569
    const-string v1, "KEY_COMMUNITY_S_IMAGE_SIZE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1570
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1571
    return-void
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 480
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 481
    const-string v1, "LAST_CHECK_UPGRADE_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 482
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 483
    return-void
.end method

.method public static a(JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1012
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1013
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1014
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1015
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1022
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1027
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1030
    :cond_1
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1031
    const-string v2, "USER_TICKETS"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1032
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1033
    return-void
.end method

.method public static a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2189
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2190
    const-string v1, "KEY_SHOW_USE_CUSTOM_FONT_TOAST"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2191
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2192
    return-void
.end method

.method public static b(J)I
    .locals 4
    .parameter

    .prologue
    .line 1018
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 449
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zero_flow_download_lower_limit"

    const-wide/32 v2, 0xf00000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(I)V
    .locals 2
    .parameter

    .prologue
    .line 1574
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1575
    const-string v1, "KEY_COMMUNITY_M_IMAGE_SIZE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1576
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1577
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1238
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1239
    const-string v1, "DRAFT_APP_COMMENT_CONTENT"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1240
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1241
    return-void
.end method

.method public static c()J
    .locals 4

    .prologue
    .line 486
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LAST_CHECK_UPGRADE_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(I)V
    .locals 2
    .parameter

    .prologue
    .line 2135
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2136
    const-string v1, "KEY_LAUNCH_TIMES"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2137
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2138
    return-void
.end method

.method public static c(J)V
    .locals 2
    .parameter

    .prologue
    .line 1382
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1383
    const-string v1, "KEY_LAST_LOG_UNINSTALL_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1384
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1385
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1248
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1249
    const-string v1, "DRAFT_APP_COMMENT_ENJOY"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1250
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1251
    return-void
.end method

.method private static d(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldWriteableFiles"
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 796
    const-class v1, Lcom/wandoujia/p4/configs/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/configs/Config;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-static {}, Lcom/wandoujia/shared_storage/SharedSettings;->a()Lcom/wandoujia/shared_storage/SharedSettings;

    move-result-object v0

    const-string v2, "first_channel"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/shared_storage/SharedSettings;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    sput-object v0, Lcom/wandoujia/p4/configs/Config;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 800
    sput-object v0, Lcom/wandoujia/p4/configs/Config;->d:Ljava/lang/String;

    sput-object v0, Lcom/wandoujia/p4/configs/Config;->e:Ljava/lang/String;

    .line 801
    invoke-static {}, Lcom/wandoujia/shared_storage/SharedSettings;->a()Lcom/wandoujia/shared_storage/SharedSettings;

    move-result-object v0

    const-string v2, "first_channel"

    sget-object v3, Lcom/wandoujia/p4/configs/Config;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/shared_storage/SharedSettings;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/configs/Config;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(I)V
    .locals 2
    .parameter

    .prologue
    .line 2215
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2216
    const-string v1, "ripple_recommend_notification_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2217
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2218
    return-void
.end method

.method public static d(J)V
    .locals 2
    .parameter

    .prologue
    .line 2048
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2049
    const-string v1, "KEY_AUTO_INSTALL_HEARD_BEAT_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2050
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2051
    return-void
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 817
    const-class v1, Lcom/wandoujia/p4/configs/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/configs/Config;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/configs/Config;->e:Ljava/lang/String;

    .line 820
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/configs/Config;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e(J)V
    .locals 2
    .parameter

    .prologue
    .line 2168
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2169
    const-string v1, "SHORTCUT_CHECK_APP_LAUNCHER"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2170
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2171
    return-void
.end method

.method public static f(J)V
    .locals 2
    .parameter

    .prologue
    .line 2195
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2196
    const-string v1, "KEY_LAST_SHOW_MEMORY_INSUFFICIENT"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2197
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2198
    return-void
.end method

.method public static f()Z
    .locals 3

    .prologue
    .line 886
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FIRST_SHOW_ZEROFLOW_SETTINGS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "USER_TICKETS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    if-eqz v0, :cond_0

    .line 1039
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1040
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1041
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1044
    :cond_0
    return-object v1
.end method

.method public static g(J)V
    .locals 2
    .parameter

    .prologue
    .line 2205
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2206
    const-string v1, "ripple_recommend_notification_timestamp"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2207
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2208
    return-void
.end method

.method public static h()Z
    .locals 3

    .prologue
    .line 1078
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_HAS_LOADED_ORIGIN_LOCAL_VIDEO"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i()V
    .locals 3

    .prologue
    .line 1082
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1083
    const-string v1, "KEY_HAS_LOADED_ORIGIN_LOCAL_VIDEO"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1084
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1085
    return-void
.end method

.method public static j()J
    .locals 4

    .prologue
    .line 1388
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_LAST_LOG_UNINSTALL_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static k()V
    .locals 3

    .prologue
    .line 1510
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1511
    const-string v1, "KEY_HAS_ENTERED_COMMUNITY"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1512
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1513
    return-void
.end method

.method public static l()V
    .locals 3

    .prologue
    .line 1520
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1521
    const-string v1, "KEY_NEED_BIND_DOWNLOAD"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1522
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1523
    return-void
.end method

.method public static m()Z
    .locals 3

    .prologue
    .line 1526
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_NEED_BIND_DOWNLOAD"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n()I
    .locals 3

    .prologue
    .line 1560
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_COMMUNITY_S_IMAGE_SIZE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static o()I
    .locals 3

    .prologue
    .line 1564
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_COMMUNITY_M_IMAGE_SIZE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static p()Z
    .locals 3

    .prologue
    .line 1654
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_IS_MULTIMEDIA_LEGAL_ACCEPTED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q()V
    .locals 3

    .prologue
    .line 1658
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1659
    const-string v1, "KEY_IS_MULTIMEDIA_LEGAL_ACCEPTED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1660
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1661
    return-void
.end method

.method public static r()Z
    .locals 3

    .prologue
    .line 1992
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_AUTO_INSTALL_HINT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s()V
    .locals 3

    .prologue
    .line 1996
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1997
    const-string v1, "KEY_AUTO_INSTALL_HINT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1998
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1999
    return-void
.end method

.method public static t()Z
    .locals 3

    .prologue
    .line 2002
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_GL_INSTALL_HINT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static u()V
    .locals 3

    .prologue
    .line 2006
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2007
    const-string v1, "KEY_GL_INSTALL_HINT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2008
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2009
    return-void
.end method

.method public static v()Z
    .locals 3

    .prologue
    .line 2012
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_AUTO_INSTALL_DIALOG_HINT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w()V
    .locals 3

    .prologue
    .line 2016
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2017
    const-string v1, "KEY_AUTO_INSTALL_DIALOG_HINT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2018
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2019
    return-void
.end method

.method public static x()J
    .locals 4

    .prologue
    .line 2044
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_AUTO_INSTALL_HEARD_BEAT_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static y()V
    .locals 3

    .prologue
    .line 2084
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2085
    const-string v1, "KEY_HAS_REMOVED_DEPRECATED_SHORTCUT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2086
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2087
    return-void
.end method

.method public static z()V
    .locals 3

    .prologue
    .line 2090
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2091
    const-string v1, "KEY_APP_DEFAULT_SHORTCUT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2092
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 2093
    return-void
.end method
