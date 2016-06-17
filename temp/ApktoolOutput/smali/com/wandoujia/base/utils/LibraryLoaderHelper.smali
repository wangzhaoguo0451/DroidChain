.class public Lcom/wandoujia/base/utils/LibraryLoaderHelper;
.super Ljava/lang/Object;
.source "LibraryLoaderHelper.java"


# static fields
.field private static final LIB_DIR:Ljava/lang/String; = "lib_so"

.field private static final TAG:Ljava/lang/String; = "LibraryLoaderHelper"

.field private static loadedLibNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadedLibNames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteDirectorySync(Ljava/io/File;)V
    .locals 6
    .parameter

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_1

    .line 202
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to remove "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to remove "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "lib_so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 82
    :cond_0
    return-object v0
.end method

.method private static getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized loadLibrarySafety(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 42
    const-class v2, Lcom/wandoujia/base/utils/LibraryLoaderHelper;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadedLibNames:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    :goto_0
    monitor-exit v2

    return v0

    .line 46
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 49
    :try_start_2
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    sget-object v4, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadedLibNames:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->unpackLibrariesOnce(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    .line 56
    goto :goto_0

    .line 60
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 61
    sget-object v3, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadedLibNames:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static unpackLibrariesOnce(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-static {p0}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 101
    invoke-static {v6}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->deleteDirectorySync(Ljava/io/File;)V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 108
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v3, Ljava/io/File;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {v5, v3, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_3

    .line 109
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "lib/"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-virtual {v5, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 113
    if-nez v3, :cond_2

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " doesn\'t have file "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/16 v7, 0x2d

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lib/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v9, 0x0

    if-lez v3, :cond_1

    :goto_0
    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual {v5, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 123
    if-nez v3, :cond_2

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " doesn\'t have file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 126
    invoke-static {v6}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->deleteDirectorySync(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_7

    .line 127
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 167
    :cond_0
    :goto_1
    return v0

    .line 116
    :cond_1
    :try_start_3
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Extracting native libraries into "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_7

    move-result v4

    if-nez v4, :cond_3

    .line 135
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 138
    :cond_3
    :try_start_5
    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v4

    .line 139
    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_6} :catch_8

    .line 140
    const/16 v2, 0x4000

    :try_start_7
    new-array v2, v2, [B

    .line 142
    :goto_2
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_6

    .line 143
    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_2

    .line 149
    :catch_1
    move-exception v1

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    :goto_3
    :try_start_8
    invoke-static {v6}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->deleteDirectorySync(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 151
    if-eqz v1, :cond_4

    .line 158
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 160
    :cond_4
    if-eqz v2, :cond_5

    .line 161
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_5
    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    .line 146
    :cond_6
    :try_start_a
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x1ed

    invoke-static {v2, v7}, Lcom/wandoujia/base/utils/FileUtil;->setPermissions(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_a .. :try_end_a} :catch_9

    .line 147
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 160
    if-eqz v4, :cond_7

    .line 161
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_7
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    :goto_4
    move v0, v1

    .line 167
    goto :goto_1

    :catch_3
    move-exception v1

    move-object v4, v2

    move-object v5, v2

    .line 153
    :goto_5
    if-eqz v2, :cond_8

    .line 158
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 160
    :cond_8
    if-eqz v4, :cond_9

    .line 161
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_9
    if-eqz v5, :cond_0

    .line 164
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_1

    .line 156
    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    .line 157
    :goto_6
    if-eqz v2, :cond_a

    .line 158
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 160
    :cond_a
    if-eqz v4, :cond_b

    .line 161
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_b
    if-eqz v5, :cond_c

    .line 164
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 167
    :cond_c
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    goto/16 :goto_1

    :catch_6
    move-exception v1

    goto :goto_7

    .line 156
    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v4, v2

    move-object v5, v3

    move-object v2, v1

    goto :goto_6

    :catch_7
    move-exception v1

    move-object v4, v2

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    move-object v2, v3

    goto :goto_5

    .line 149
    :catch_a
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catch_b
    move-exception v1

    move-object v1, v2

    move-object v3, v5

    goto :goto_3

    :catch_c
    move-exception v1

    move-object v1, v2

    move-object v3, v5

    move-object v2, v4

    goto :goto_3

    :catch_d
    move-exception v0

    goto :goto_4
.end method
