.class final Labw;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/alipay/ut/b/b;


# instance fields
.field a:Ljava/util/Map;

.field b:Z

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private e:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/alipay/ut/b/b$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Labw;->b:Z

    .line 126
    iput-object p1, p0, Labw;->c:Ljava/io/File;

    .line 127
    invoke-static {p1}, Labv;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labw;->d:Ljava/io/File;

    .line 128
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Labw;->a:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Labw;->e:Ljava/util/WeakHashMap;

    .line 131
    return-void

    .line 128
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 342
    .line 344
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 348
    goto :goto_0

    .line 351
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Labw;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Labw;->e:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic b(Labw;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Labw;->a:Ljava/util/Map;

    return-object v0
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Labw;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Labw;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    iget-object v1, p0, Labw;->c:Ljava/io/File;

    iget-object v2, p0, Labw;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    iget-object v1, p0, Labw;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 377
    :cond_2
    :try_start_0
    iget-object v1, p0, Labw;->c:Ljava/io/File;

    invoke-static {v1}, Labw;->a(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_0

    .line 381
    iget-object v2, p0, Labw;->a:Ljava/util/Map;

    invoke-static {v2, v1}, Ld;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 382
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 385
    iget-object v1, p0, Labw;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 391
    :goto_1
    iget-object v1, p0, Labw;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Labw;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 389
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic c(Labw;)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Labw;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-boolean v0, p0, Labw;->b:Z

    monitor-exit p0

    return v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 178
    monitor-enter p0

    .line 180
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Labw;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Labw;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 201
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    monitor-exit p0

    return-wide p2

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Labw;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Labw;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labw;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Lcom/alipay/ut/b/b$a;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Labx;

    invoke-direct {v0, p0}, Labx;-><init>(Labw;)V

    return-object v0
.end method
