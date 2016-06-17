.class public Lcom/wandoujia/udid/UDIDUtil;
.super Ljava/lang/Object;
.source "UDIDUtil.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Landroid/os/Handler;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, ".udid"

    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/udid/UDIDUtil;->a:Ljava/lang/String;

    .line 45
    const-string v0, ".channel"

    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/udid/UDIDUtil;->b:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wandoujia/udid/UDIDUtil;->c:Landroid/os/Handler;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 281
    const-class v1, Lcom/wandoujia/udid/UDIDUtil;

    monitor-enter v1

    .line 282
    :try_start_0
    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 283
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_1
    :pswitch_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    return-object v0

    .line 282
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/wandoujia/udid/UDIDUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/wandoujia/udid/UDIDUtil;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "udid"

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/wandoujia/udid/UDIDUtil;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/wandoujia/udid/UDIDUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/wandoujia/udid/UDIDUtil;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "wdj_udid"

    invoke-static {p0, v2}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadLibrarySafety(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->generateUDIDNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    const/4 v0, 0x5

    goto :goto_0

    .line 283
    :pswitch_1
    const-string v0, "udid"

    sget-object v2, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/wandoujia/udid/UDIDUtil;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 283
    :pswitch_2
    :try_start_2
    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/wandoujia/udid/UDIDUtil;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->c(Ljava/lang/String;)V

    const-string v0, "udid"

    sget-object v2, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->c(Ljava/lang/String;)V

    const-string v0, "udid"

    sget-object v2, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/wandoujia/udid/UDIDUtil;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static synthetic a()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/wandoujia/udid/UDIDUtil;->d()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/wandoujia/base/utils/DigestUtils;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lhqh;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lhqh;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lhqh;->start()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    new-instance v0, Lhqf;

    invoke-direct {v0, p2, p0, p1}, Lhqf;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lhqf;->start()V

    .line 230
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 75
    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->a:Ljava/lang/String;

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, ""

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    const-string v0, ""

    .line 86
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 88
    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const/4 v0, 0x0

    aget-object v0, v2, v0

    goto :goto_0

    .line 95
    :cond_2
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v1}, Lcom/wandoujia/base/utils/DigestUtils;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v0, 0x0

    aget-object v0, v2, v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 101
    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    :cond_4
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    goto :goto_1

    .line 105
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 138
    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wandoujia/.config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static synthetic b()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/wandoujia/udid/UDIDUtil;->c()V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    const-string v0, "wdj_udid"

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadLibrarySafety(Landroid/content/Context;Ljava/lang/String;)Z

    .line 68
    invoke-static {p1}, Lcom/wandoujia/udid/UDIDUtil;->isUDIDValidNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 147
    invoke-static {}, Lcom/wandoujia/udid/UDIDUtil;->d()V

    .line 148
    const-string v0, "/data/local/tmp/.wdj_config/.udid"

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/wandoujia/udid/UDIDUtil;->c()V

    .line 150
    const-string v0, "/data/local/tmp/.config"

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->deletePath(Ljava/lang/String;)V

    .line 151
    const-string v0, "/data/local/tmp/.wdj_config/.udid"

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->readFileFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 152
    :cond_0
    const-string v0, "/data/local/tmp/.config/.udid"

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const-string v0, "/data/local/tmp/.config/.udid"

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->readFileFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/wandoujia/udid/UDIDUtil;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v0}, Lcom/wandoujia/udid/UDIDUtil;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_1
    const-string v0, "/data/local/tmp/.config"

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->deletePath(Ljava/lang/String;)V

    .line 161
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 332
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 777 /data/local/tmp/.wdj_config"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 333
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 666 /data/local/tmp/.wdj_config/.udid"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 295
    sget-object v0, Lcom/wandoujia/udid/UDIDUtil;->c:Landroid/os/Handler;

    new-instance v1, Lhqg;

    invoke-direct {v1, p0, p1}, Lhqg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 344
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lhqi;

    invoke-direct {v1, p0}, Lhqi;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 363
    return-void
.end method

.method private static d()V
    .locals 2

    .prologue
    .line 339
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 777 /data/local/tmp"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static native generateUDIDNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native isUDIDValidNative(Ljava/lang/String;)Z
.end method
