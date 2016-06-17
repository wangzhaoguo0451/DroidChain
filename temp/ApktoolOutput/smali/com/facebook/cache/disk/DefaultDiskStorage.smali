.class public final Lcom/facebook/cache/disk/DefaultDiskStorage;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lajc;


# static fields
.field public static final a:J


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Lakt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->a:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/io/File;

    .line 102
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/io/File;

    const/4 v4, 0x0

    const-string v5, "%s.ols%d.%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "v2"

    aput-object v7, v6, v1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    .line 103
    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    invoke-static {v0}, Ld;->b(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_1
    invoke-static {}, Lakv;->b()Lakv;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Lakt;

    .line 106
    return-void

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/io/File;

    invoke-static {v1}, Ld;->a(Ljava/io/File;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version directory could not be created: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Laiw;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, v0, Laiw;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->fromExtension(Ljava/lang/String;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->TEMP:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    invoke-virtual {v3, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-gtz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v2, Laiw;

    invoke-direct {v2, v3, v0}, Laiw;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static synthetic a(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lain;)Laio;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 372
    check-cast p2, Laio;

    .line 374
    iget-object v1, p2, Laio;->a:Ljava/io/File;

    .line 375
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 378
    :try_start_0
    invoke-static {v1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/facebook/common/file/FileUtils$FileDeleteException;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/facebook/common/file/FileUtils$FileDeleteException;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v3, Lcom/facebook/common/file/FileUtils$RenameException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown error renaming "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/facebook/common/file/FileUtils$RenameException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$RenameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Lcom/facebook/common/file/FileUtils$RenameException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 382
    if-nez v1, :cond_3

    .line 383
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 392
    :goto_1
    throw v0

    .line 378
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/facebook/common/file/FileUtils$RenameException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 384
    :cond_3
    instance-of v2, v1, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;

    if-eqz v2, :cond_4

    .line 385
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_1

    .line 387
    :cond_4
    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_5

    .line 388
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_1

    .line 390
    :cond_5
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_1

    .line 399
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 400
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Lakt;

    invoke-interface {v0}, Lakt;->a()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 402
    :cond_7
    invoke-static {v2}, Laio;->a(Ljava/io/File;)Laio;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/io/File;

    return-object v0
.end method

.method public static synthetic c(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lakt;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Lakt;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter

    .prologue
    .line 212
    new-instance v0, Laiw;

    sget-object v1, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Laiw;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;B)V

    .line 213
    iget-object v1, v0, Laiw;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 214
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Laiw;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Laiw;->a:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    iget-object v0, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->extension:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private e(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private f(Ljava/lang/String;)Laio;
    .locals 3
    .parameter

    .prologue
    .line 349
    new-instance v0, Laiw;

    sget-object v1, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->TEMP:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Laiw;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;B)V

    .line 350
    iget-object v1, v0, Laiw;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 351
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    :try_start_0
    invoke-static {v1}, Ld;->b(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Laiw;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 357
    invoke-static {v0}, Laio;->a(Ljava/io/File;)Laio;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 352
    :catch_0
    move-exception v0

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    throw v0

    .line 358
    :catch_1
    move-exception v0

    .line 359
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_TEMPFILE:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 364
    throw v0
.end method


# virtual methods
.method public final a(Lajd;)J
    .locals 3
    .parameter

    .prologue
    .line 437
    check-cast p1, Laiv;

    .line 438
    iget-object v0, p1, Laiv;->a:Laio;

    .line 439
    iget-object v2, v0, Laio;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/String;Lain;)Lain;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->b(Ljava/lang/String;Lain;)Laio;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/io/File;

    new-instance v1, Laix;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Laix;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;B)V

    invoke-static {v0, v1}, Ld;->a(Ljava/io/File;Lajw;)V

    .line 321
    return-void
.end method

.method public final a(Lain;Lait;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 161
    check-cast p1, Laio;

    .line 162
    iget-object v0, p1, Laio;->a:Ljava/io/File;

    .line 163
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    new-instance v2, Lajz;

    invoke-direct {v2, v1}, Lajz;-><init>(Ljava/io/OutputStream;)V

    .line 178
    iget-object v3, p2, Lait;->b:Laox;

    invoke-static {v3}, Laox;->b(Laox;)Lary;

    move-result-object v3

    iget-object v4, p2, Lait;->a:Laqx;

    invoke-virtual {v4}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lary;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 181
    invoke-virtual {v2}, Lajz;->flush()V

    .line 182
    iget-wide v2, v2, Lajz;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;-><init>(JJ)V

    throw v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_UPDATE_FILE_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 172
    throw v0

    .line 187
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 194
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Ljava/lang/String;)Lain;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->f(Ljava/lang/String;)Laio;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Laiu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laiu;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;B)V

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    invoke-static {v1, v0}, Ld;->a(Ljava/io/File;Lajw;)V

    iget-object v0, v0, Laiu;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Ljava/lang/String;)Lain;
    .locals 4
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Lakt;

    invoke-interface {v1}, Lakt;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    invoke-static {v0}, Laio;->a(Ljava/io/File;)Laio;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
