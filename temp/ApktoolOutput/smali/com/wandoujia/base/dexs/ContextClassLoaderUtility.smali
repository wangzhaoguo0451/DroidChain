.class public Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;
.super Ljava/lang/Object;
.source "ContextClassLoaderUtility.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ContextClassLoaderUtility"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static createDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 157
    const-string v0, "dalvik.system.DexPathList"

    const-string v1, "loadDexFile"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexFile;

    .line 166
    :goto_0
    return-object v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string v0, "dalvik.system.DexClassLoader"

    const-string v2, "generateOutputName"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v0, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createElement(Ljava/io/File;Ljava/io/File;)Lcqu;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v2, ".dex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-static {p0, p1}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->createDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;

    move-result-object v0

    .line 152
    :goto_0
    new-instance v2, Lcqu;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v0, v3}, Lcqu;-><init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ldalvik/system/DexFile;B)V

    return-object v2

    .line 132
    :cond_0
    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".jar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".so"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    invoke-static {p0, p1}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->createDexFile(Ljava/io/File;Ljava/io/File;)Ldalvik/system/DexFile;

    move-result-object v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown file type for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createEmptyDexElements(I)[Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 174
    :try_start_0
    const-string v0, "dalvik.system.DexPathList$Element"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    new-array v2, p0, [Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 180
    invoke-static {v1}, Lcom/wandoujia/base/reflect/JavaCalls;->newEmptyInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t find class: dalvik.system.DexPathList$Element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    return-object v2
.end method

.method private static getDexElements(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 186
    const-string v0, "pathList"

    invoke-static {p0, v0}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    const-string v1, "dexElements"

    invoke-static {v0, v1}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static getOptDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 196
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "opt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "create opt dir meet ex."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public static inject(Landroid/content/Context;Ljava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doing inject, paths:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 56
    invoke-static {p0, v0}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->injectV14(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {p0, v0}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->injectBelowV14(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static injectBelowV14(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {p0}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->getOptDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 80
    array-length v0, p1

    new-array v2, v0, [Ljava/io/File;

    .line 81
    array-length v0, p1

    new-array v3, v0, [Ljava/util/zip/ZipFile;

    .line 82
    array-length v0, p1

    new-array v4, v0, [Ldalvik/system/DexFile;

    .line 83
    const/4 v5, 0x0

    :goto_0
    array-length v0, p1

    if-ge v5, v0, :cond_0

    .line 84
    new-instance v0, Ljava/io/File;

    aget-object v6, p1, v5

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->resetValueBelowV14(Ljava/io/File;Ljava/io/File;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 88
    const-string v0, "mFiles"

    invoke-static {v7, v0}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 89
    const-string v1, "mPaths"

    invoke-static {v7, v1}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 90
    const-string v5, "mZips"

    invoke-static {v7, v5}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 91
    const-string v6, "mDexs"

    invoke-static {v7, v6}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 93
    const-string v8, "mPaths"

    invoke-static {v1, p1}, Lcom/wandoujia/base/utils/ArrayUtil;->combineArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, v1}, Lcom/wandoujia/base/reflect/JavaCalls;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v1, "mFiles"

    invoke-static {v0, v2}, Lcom/wandoujia/base/utils/ArrayUtil;->combineArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v1, v0}, Lcom/wandoujia/base/reflect/JavaCalls;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v0, "mZips"

    invoke-static {v5, v3}, Lcom/wandoujia/base/utils/ArrayUtil;->combineArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/wandoujia/base/reflect/JavaCalls;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v0, "mDexs"

    invoke-static {v6, v4}, Lcom/wandoujia/base/utils/ArrayUtil;->combineArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/wandoujia/base/reflect/JavaCalls;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method private static injectV14(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-static {p0}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->getOptDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 65
    array-length v0, p1

    invoke-static {v0}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->createEmptyDexElements(I)[Ljava/lang/Object;

    move-result-object v2

    .line 66
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 67
    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v0

    invoke-static {v3, v1, v4}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->resetValueV14(Ljava/io/File;Ljava/io/File;Ljava/lang/Object;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->getDexElements(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v1

    .line 73
    invoke-static {v1, v2}, Lcom/wandoujia/base/utils/ArrayUtil;->combineArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->setDexElements(Ljava/lang/ClassLoader;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method private static resetValueBelowV14(Ljava/io/File;Ljava/io/File;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->createElement(Ljava/io/File;Ljava/io/File;)Lcqu;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    array-length v1, p2

    if-ge p5, v1, :cond_0

    .line 113
    iget-object v1, v0, Lcqu;->a:Ljava/io/File;

    aput-object v1, p2, p5

    .line 115
    :cond_0
    array-length v1, p3

    if-ge p5, v1, :cond_1

    .line 116
    iget-object v1, v0, Lcqu;->b:Ljava/util/zip/ZipFile;

    aput-object v1, p3, p5

    .line 118
    :cond_1
    array-length v1, p4

    if-ge p5, v1, :cond_2

    .line 119
    iget-object v0, v0, Lcqu;->c:Ldalvik/system/DexFile;

    aput-object v0, p4, p5

    .line 122
    :cond_2
    return-void
.end method

.method private static resetValueV14(Ljava/io/File;Ljava/io/File;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/wandoujia/base/dexs/ContextClassLoaderUtility;->createElement(Ljava/io/File;Ljava/io/File;)Lcqu;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const-string v1, "file"

    iget-object v2, v0, Lcqu;->a:Ljava/io/File;

    invoke-static {p2, v1, v2}, Lcom/wandoujia/base/reflect/JavaCalls;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v1, "zipFile"

    iget-object v2, v0, Lcqu;->b:Ljava/util/zip/ZipFile;

    invoke-static {p2, v1, v2}, Lcom/wandoujia/base/reflect/JavaCalls;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v1, "dexFile"

    iget-object v0, v0, Lcqu;->c:Ldalvik/system/DexFile;

    invoke-static {p2, v1, v0}, Lcom/wandoujia/base/reflect/JavaCalls;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method private static setDexElements(Ljava/lang/ClassLoader;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 191
    const-string v0, "pathList"

    invoke-static {p0, v0}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    const-string v1, "dexElements"

    invoke-static {v0, v1, p1}, Lcom/wandoujia/base/reflect/JavaCalls;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    return-void
.end method
