.class public final Lcom/wandoujia/launcher/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
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

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Legx;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/wandoujia/launcher/Config;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zero_flow_download_lower_limit"

    const-wide/32 v2, 0xf00000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 66
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public static a(I)V
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-static {}, Lcom/wandoujia/launcher/Config;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    const-string v1, "KEY_LAST_ALERT_GL_VC"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 102
    return-void
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-static {}, Lcom/wandoujia/launcher/Config;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    const-string v1, "KEY_LAST_ALERT_GL_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 84
    return-void
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/wandoujia/launcher/Config;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_LAST_ALERT_GL_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)V
    .locals 2
    .parameter

    .prologue
    .line 117
    invoke-static {}, Lcom/wandoujia/launcher/Config;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    const-string v1, "KEY_FIRST_LAUNCH_GL_DAY"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 120
    return-void
.end method

.method public static c()I
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/wandoujia/launcher/Config;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_LAST_ALERT_GL_VC"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d()J
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Lcom/wandoujia/launcher/Config;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_FIRST_LAUNCH_GL_DAY"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()Z
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Lcom/wandoujia/launcher/Config;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_ONBOARD_KNOWN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lcom/wandoujia/launcher/Config;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    const-string v1, "KEY_ONBOARD_KNOWN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 130
    return-void
.end method

.method private static declared-synchronized g()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 55
    const-class v1, Lcom/wandoujia/launcher/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/launcher/Config;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 56
    const-string v0, "com.wandoujia.phoenix2"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/launcher/Config;->a:Landroid/content/SharedPreferences;

    .line 58
    :cond_0
    sget-object v0, Lcom/wandoujia/launcher/Config;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
