.class public Lcom/wandoujia/base/dexs/ContextLibraryUtility;
.super Ljava/lang/Object;
.source "ContextLibraryUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static inject(Landroid/content/Context;Ljava/io/File;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 25
    invoke-static {p0, p1}, Lcom/wandoujia/base/dexs/ContextLibraryUtility;->injectV14(Landroid/content/Context;Ljava/io/File;)V

    .line 31
    :goto_0
    return-void

    .line 26
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 27
    invoke-static {p0, p1}, Lcom/wandoujia/base/dexs/ContextLibraryUtility;->injectV9(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p0, p1}, Lcom/wandoujia/base/dexs/ContextLibraryUtility;->injectBelowV9(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method

.method private static injectBelowV9(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 56
    const-string v0, "mLibPaths"

    invoke-static {v1, v0}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    array-length v3, v0

    if-lez v3, :cond_0

    invoke-static {v0, v4, v2}, Lcom/wandoujia/base/utils/ArrayUtil;->insert([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 61
    :goto_0
    const-string v2, "mLibPaths"

    invoke-static {v1, v2, v0}, Lcom/wandoujia/base/reflect/JavaCalls;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void

    .line 59
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    goto :goto_0
.end method

.method private static injectV14(Landroid/content/Context;Ljava/io/File;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 35
    const-string v1, "pathList"

    invoke-static {v0, v1}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    const-string v0, "nativeLibraryDirectories"

    invoke-static {v1, v0}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    .line 37
    array-length v2, v0

    if-lez v2, :cond_0

    invoke-static {v0, v3, p1}, Lcom/wandoujia/base/utils/ArrayUtil;->insert([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    .line 39
    :goto_0
    const-string v2, "nativeLibraryDirectories"

    invoke-static {v1, v2, v0}, Lcom/wandoujia/base/reflect/JavaCalls;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void

    .line 37
    :cond_0
    new-array v0, v3, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    goto :goto_0
.end method

.method private static injectV9(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 44
    const-string v1, "libraryPathElements"

    invoke-static {v0, v1}, Lcom/wandoujia/base/reflect/JavaCalls;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 48
    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
