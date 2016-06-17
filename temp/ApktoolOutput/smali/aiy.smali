.class public Laiy;
.super Ljava/lang/Object;
.source "DefaultDiskStorageSupplier.java"

# interfaces
.implements Laji;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Lakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakd",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private volatile e:Laiz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Laiy;

    sput-object v0, Laiy;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILakd;Ljava/lang/String;Lmv;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lakd",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lmv;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Laiy;->b:I

    .line 58
    iput-object p2, p0, Laiy;->c:Lakd;

    .line 60
    iput-object p3, p0, Laiy;->d:Ljava/lang/String;

    .line 61
    new-instance v0, Laiz;

    invoke-direct {v0, v1, v1}, Laiz;-><init>(Ljava/io/File;Lajc;)V

    iput-object v0, p0, Laiy;->e:Laiz;

    .line 62
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lajc;
    .locals 4

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laiy;->e:Laiz;

    iget-object v1, v0, Laiz;->a:Lajc;

    if-eqz v1, :cond_0

    iget-object v1, v0, Laiz;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v0, v0, Laiz;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Laiy;->e:Laiz;

    iget-object v0, v0, Laiz;->a:Lajc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laiy;->e:Laiz;

    iget-object v0, v0, Laiz;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laiy;->e:Laiz;

    iget-object v0, v0, Laiz;->b:Ljava/io/File;

    invoke-static {v0}, Ld;->a(Ljava/io/File;)Z

    .line 75
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Laiy;->c:Lakd;

    invoke-interface {v0}, Lakd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v2, p0, Laiy;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Ld;->b(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v0, Laiy;->a:Ljava/lang/Class;

    const-string v2, "Created cache directory %s"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lakf;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage;

    iget v2, p0, Laiy;->b:I

    invoke-direct {v0, v1, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;-><init>(Ljava/io/File;I)V

    new-instance v2, Laiz;

    invoke-direct {v2, v1, v0}, Laiz;-><init>(Ljava/io/File;Lajc;)V

    iput-object v2, p0, Laiy;->e:Laiz;

    .line 77
    :cond_2
    iget-object v0, p0, Laiy;->e:Laiz;

    iget-object v0, v0, Laiz;->a:Lajc;

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 72
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
