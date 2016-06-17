.class public final Lcom/wandoujia/ripple_framework/Config;
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

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
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

    .line 194
    sput-object v3, Lcom/wandoujia/ripple_framework/Config;->b:Ljava/lang/String;

    .line 195
    sput-object v3, Lcom/wandoujia/ripple_framework/Config;->c:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 727
    const-class v1, Lcom/wandoujia/ripple_framework/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/ripple_framework/Config;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-static {}, Lcom/wandoujia/shared_storage/SharedSettings;->a()Lcom/wandoujia/shared_storage/SharedSettings;

    move-result-object v0

    const-string v2, "first_channel"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/shared_storage/SharedSettings;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    sput-object v0, Lcom/wandoujia/ripple_framework/Config;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 731
    sput-object v0, Lcom/wandoujia/ripple_framework/Config;->b:Ljava/lang/String;

    sput-object v0, Lcom/wandoujia/ripple_framework/Config;->c:Ljava/lang/String;

    .line 732
    invoke-static {}, Lcom/wandoujia/shared_storage/SharedSettings;->a()Lcom/wandoujia/shared_storage/SharedSettings;

    move-result-object v0

    const-string v2, "first_channel"

    sget-object v3, Lcom/wandoujia/ripple_framework/Config;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/shared_storage/SharedSettings;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_0
    sget-object v0, Lcom/wandoujia/ripple_framework/Config;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 758
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 759
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

    .line 761
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 763
    const-string v0, "wandoujia_debug"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 769
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 771
    :goto_0
    return-object v0

    .line 765
    :cond_0
    invoke-static {v1}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 767
    :catch_0
    move-exception v1

    :goto_1
    invoke-static {v0}, Lcom/wandoujia/base/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 771
    const-string v0, "wandoujia_debug"

    goto :goto_0

    .line 769
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

    .line 767
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 1875
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1876
    const-string v1, "KEY_AUTO_INSTALL_HEARD_BEAT_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1877
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1878
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1932
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1933
    const-string v1, "KEY_APP_DEFAULT_DOWNLOAD_FOLDER"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1934
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1935
    return-void
.end method

.method public static a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1865
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1866
    const-string v1, "KEY_AUTO_INSTALL_BLOCK"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1867
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1868
    return-void
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 748
    const-class v1, Lcom/wandoujia/ripple_framework/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/ripple_framework/Config;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/ripple_framework/Config;->c:Ljava/lang/String;

    .line 751
    :cond_0
    sget-object v0, Lcom/wandoujia/ripple_framework/Config;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 890
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GL_VERSION"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 912
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GL_VENDOR"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 916
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GL_RENDERER"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()I
    .locals 3

    .prologue
    .line 1849
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_AUTO_INSTALL_SAVE_STEPS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static g()V
    .locals 3

    .prologue
    .line 1853
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_AUTO_INSTALL_SAVE_STEPS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1854
    add-int/lit8 v0, v0, 0x1

    .line 1855
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1856
    const-string v2, "KEY_AUTO_INSTALL_SAVE_STEPS"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1857
    invoke-static {v1}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1858
    return-void
.end method

.method public static h()Z
    .locals 3

    .prologue
    .line 1861
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_AUTO_INSTALL_BLOCK"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i()J
    .locals 4

    .prologue
    .line 1871
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_AUTO_INSTALL_HEARD_BEAT_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static j()Z
    .locals 3

    .prologue
    .line 1881
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_AUTO_INSTALL_LAUNCHED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static k()V
    .locals 3

    .prologue
    .line 1885
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1886
    const-string v1, "KEY_AUTO_INSTALL_LAUNCHED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1887
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1888
    return-void
.end method

.method public static l()Z
    .locals 3

    .prologue
    .line 1891
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_AUTO_INSTALL_USER_TURN_OFF"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m()V
    .locals 3

    .prologue
    .line 1895
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1896
    const-string v1, "KEY_AUTO_INSTALL_USER_TURN_OFF"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1897
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1898
    return-void
.end method

.method public static n()V
    .locals 3

    .prologue
    .line 1901
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1902
    const-string v1, "KEY_AUTO_INSTALL_RELOAD_TIP_SHOW_TIME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1903
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1904
    return-void
.end method

.method public static o()V
    .locals 3

    .prologue
    .line 1907
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1908
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->p()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1909
    const-string v2, "KEY_AUTO_INSTALL_RELOAD_TIP_SHOW_TIME"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1910
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1911
    return-void
.end method

.method public static p()I
    .locals 3

    .prologue
    .line 1914
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_AUTO_INSTALL_RELOAD_TIP_SHOW_TIME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static q()V
    .locals 3

    .prologue
    .line 1918
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1919
    const-string v1, "KEY_P4_DOWNLOAD_DB_MIGRATED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1920
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 1921
    return-void
.end method

.method public static r()Z
    .locals 3

    .prologue
    .line 1924
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_P4_DOWNLOAD_DB_MIGRATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1928
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_APP_DEFAULT_DOWNLOAD_FOLDER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized t()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 284
    const-class v1, Lcom/wandoujia/ripple_framework/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/ripple_framework/Config;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 285
    const-string v0, "com.wandoujia.phoenix2"

    sget-object v2, Lham;->f:Lham;

    iget-object v2, v2, Lhal;->d:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/ripple_framework/Config;->a:Landroid/content/SharedPreferences;

    .line 287
    :cond_0
    sget-object v0, Lcom/wandoujia/ripple_framework/Config;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
