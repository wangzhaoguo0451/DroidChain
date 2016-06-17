.class public Lcom/wandoujia/base/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# static fields
.field private static final FORTH_LINE:I = 0x4

.field private static final GENERIC_CONFIG_PREFERENCE_NAME:Ljava/lang/String; = "com.wandoujia.phoenix2"

.field private static final KEY_LAST_USED_DIRECTORY:Ljava/lang/String; = "key_last_used_directory"

.field private static final LIMIT_SIZE:J = 0x3200000L

.field private static final MIN_SDK:I = 0xe

.field private static final ROOT_DIR:Ljava/lang/String; = "/wandoujia/"

.field private static instance:Lcom/wandoujia/base/storage/StorageManager;


# instance fields
.field private availableStoragesPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultExternalStorageDirectory:Ljava/lang/String;

.field private genericSharedPrefs:Landroid/content/SharedPreferences;

.field private final rdcListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/wandoujia/base/storage/StorageManager$OnExternalStorageDirectoryChangedListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.wandoujia.phoenix2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->genericSharedPrefs:Landroid/content/SharedPreferences;

    .line 57
    invoke-direct {p0}, Lcom/wandoujia/base/storage/StorageManager;->registerReceiver()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->rdcListeners:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/wandoujia/base/storage/StorageManager;->getAvailableStorages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->availableStoragesPathList:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->genericSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_last_used_directory"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/wandoujia/base/storage/StorageManager;->checkDefaultPathAvailable()V

    .line 62
    return-void
.end method

.method static synthetic access$102(Lcom/wandoujia/base/storage/StorageManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/wandoujia/base/storage/StorageManager;->availableStoragesPathList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wandoujia/base/storage/StorageManager;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/wandoujia/base/storage/StorageManager;->getAvailableStorages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/wandoujia/base/storage/StorageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/wandoujia/base/storage/StorageManager;->checkDefaultPathAvailable()V

    return-void
.end method

.method private checkDefaultPathAvailable()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->canWrite(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->availableStoragesPathList:Ljava/util/List;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/wandoujia/base/storage/StorageManager;->getAvailableDirectory(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/base/storage/StorageManager;->saveAndNotifyDefaultExternalStorageDiretory(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    return-void
.end method

.method private getAvailableStorages()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_3

    .line 110
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 111
    if-eqz v4, :cond_1

    .line 112
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVolumeList"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "getVolumeState"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 114
    if-eqz v0, :cond_1

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 116
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 117
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "getPath"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 120
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 121
    aget-object v1, v0, v2

    .line 122
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    const-string v7, "mounted"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 132
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_7

    .line 182
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 186
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/wandoujia/base/utils/FileUtil;->canWrite(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 190
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    goto :goto_2

    .line 140
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 142
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    .line 146
    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/mounts"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 150
    :cond_5
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 151
    const-string v2, "uid=1000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "gid=1015"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "asec"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 153
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 154
    array-length v2, v1

    const/4 v4, 0x4

    if-lt v2, v4, :cond_5

    .line 155
    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 156
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 157
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    goto :goto_3

    :catch_0
    move-exception v1

    .line 163
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 170
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 168
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_1

    .line 170
    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v0, v1

    .line 165
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_1

    .line 170
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_7

    .line 170
    :goto_7
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_7

    .line 176
    :catch_5
    move-exception v0

    goto/16 :goto_1

    .line 192
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 195
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    .line 201
    :cond_a
    return-object v3

    :catch_7
    move-exception v0

    goto/16 :goto_1

    .line 180
    :catch_8
    move-exception v0

    goto/16 :goto_1

    .line 178
    :catch_9
    move-exception v0

    goto/16 :goto_1

    .line 167
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method

.method public static declared-synchronized getInstance()Lcom/wandoujia/base/storage/StorageManager;
    .locals 2

    .prologue
    .line 90
    const-class v1, Lcom/wandoujia/base/storage/StorageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/base/storage/StorageManager;->instance:Lcom/wandoujia/base/storage/StorageManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/wandoujia/base/storage/StorageManager;

    invoke-direct {v0}, Lcom/wandoujia/base/storage/StorageManager;-><init>()V

    sput-object v0, Lcom/wandoujia/base/storage/StorageManager;->instance:Lcom/wandoujia/base/storage/StorageManager;

    .line 93
    :cond_0
    sget-object v0, Lcom/wandoujia/base/storage/StorageManager;->instance:Lcom/wandoujia/base/storage/StorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyPathChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    iget-object v2, p0, Lcom/wandoujia/base/storage/StorageManager;->rdcListeners:Ljava/util/List;

    monitor-enter v2

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->rdcListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 344
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/base/storage/StorageManager$OnExternalStorageDirectoryChangedListener;

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 349
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 352
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcrd;

    invoke-direct {v2, v1, p1, p2}, Lcrd;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/base/storage/StorageManager$MediaReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/wandoujia/base/storage/StorageManager$MediaReceiver;-><init>(Lcom/wandoujia/base/storage/StorageManager;B)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method private saveAndNotifyDefaultExternalStorageDiretory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->genericSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    const-string v1, "key_last_used_directory"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/base/storage/StorageManager;->notifyPathChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public addExternalStorageDirectoryChangedListener(Lcom/wandoujia/base/storage/StorageManager$OnExternalStorageDirectoryChangedListener;)V
    .locals 3
    .parameter

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/base/storage/StorageManager;->rdcListeners:Ljava/util/List;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->rdcListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 329
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/base/storage/StorageManager$OnExternalStorageDirectoryChangedListener;

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    monitor-exit v1

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 334
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->rdcListeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAvailableDirectories(J)Ljava/util/HashMap;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 253
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->availableStoragesPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v4

    .line 255
    const-wide/32 v6, 0x3200000

    add-long/2addr v6, p1

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 256
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 259
    :cond_1
    return-object v1
.end method

.method public getAvailableDirectory(Ljava/util/List;J)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 264
    const-wide/16 v4, -0x1

    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v2

    .line 267
    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v7, v8, p2

    if-lez v7, :cond_1

    move-wide v10, v2

    move-object v2, v0

    move-wide v0, v10

    :goto_1
    move-wide v4, v0

    move-object v1, v2

    .line 271
    goto :goto_0

    .line 272
    :cond_0
    return-object v1

    :cond_1
    move-object v2, v1

    move-wide v0, v4

    goto :goto_1
.end method

.method public getExternalStorageDirectories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->availableStoragesPathList:Ljava/util/List;

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectory(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStorageDirectory(J)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 221
    iget-object v1, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->availableStoragesPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    iget-object v5, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 228
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/wandoujia/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 231
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/wandoujia/base/storage/StorageManager;->getAvailableDirectory(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 238
    invoke-virtual {p0, v2, p1, p2}, Lcom/wandoujia/base/storage/StorageManager;->getAvailableDirectory(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    .line 248
    :goto_1
    return-object v0

    .line 242
    :cond_4
    iput-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    .line 246
    :goto_2
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/wandoujia/base/storage/StorageManager;->saveAndNotifyDefaultExternalStorageDiretory(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    goto :goto_1

    .line 244
    :cond_6
    iput-object v0, p0, Lcom/wandoujia/base/storage/StorageManager;->defaultExternalStorageDirectory:Ljava/lang/String;

    goto :goto_2
.end method

.method public isStorageMounted()Z
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectories()Ljava/util/List;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
