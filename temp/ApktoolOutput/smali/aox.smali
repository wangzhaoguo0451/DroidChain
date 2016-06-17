.class public Laox;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lapq;

.field private final d:Lajj;

.field private final e:Larv;

.field private final f:Lary;

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Laox;

    sput-object v0, Laox;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lajj;Larv;Lary;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Laox;->d:Lajj;

    .line 57
    iput-object p2, p0, Laox;->e:Larv;

    .line 58
    iput-object p3, p0, Laox;->f:Lary;

    .line 59
    iput-object p4, p0, Laox;->g:Ljava/util/concurrent/Executor;

    .line 60
    iput-object p5, p0, Laox;->b:Ljava/util/concurrent/Executor;

    .line 61
    invoke-static {}, Lapq;->a()Lapq;

    move-result-object v0

    iput-object v0, p0, Laox;->c:Lapq;

    .line 63
    return-void
.end method

.method static synthetic a(Laox;)Lapq;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Laox;->c:Lapq;

    return-object v0
.end method

.method private a(Laip;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .locals 6
    .parameter

    .prologue
    .line 188
    :try_start_0
    sget-object v0, Laox;->a:Ljava/lang/Class;

    const-string v1, "Disk cache read for %s"

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Laox;->d:Lajj;

    invoke-interface {v0, p1}, Lajj;->a(Laip;)Lain;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    sget-object v0, Laox;->a:Ljava/lang/Class;

    const-string v1, "Disk cache miss for %s"

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 196
    :cond_0
    sget-object v1, Laox;->a:Ljava/lang/Class;

    const-string v2, "Found entry in disk cache for %s"

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    invoke-interface {v0}, Lain;->a()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    :try_start_1
    iget-object v2, p0, Laox;->e:Larv;

    invoke-interface {v0}, Lain;->b()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v2, v1, v0}, Larv;->a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 205
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 208
    sget-object v1, Laox;->a:Ljava/lang/Class;

    const-string v2, "Successful read from disk cache for %s"

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 214
    sget-object v1, Laox;->a:Ljava/lang/Class;

    const-string v2, "Exception reading from cache for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lakf;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    throw v0

    .line 205
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method static synthetic a(Laox;Laip;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Laox;->a(Laip;)Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Laox;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic a(Laox;Laip;Laqx;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    sget-object v0, Laox;->a:Ljava/lang/Class;

    const-string v1, "About to write to disk-cache for key %s"

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Laox;->d:Lajj;

    new-instance v1, Lait;

    invoke-direct {v1, p0, p2}, Lait;-><init>(Laox;Laqx;)V

    invoke-interface {v0, p1, v1}, Lajj;->a(Laip;Lait;)Lain;

    sget-object v0, Laox;->a:Ljava/lang/Class;

    const-string v1, "Successful disk-cache write for key %s"

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Laox;->a:Ljava/lang/Class;

    const-string v2, "Failed to write to disk-cache for key %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lakf;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static synthetic b(Laox;)Lary;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Laox;->f:Lary;

    return-object v0
.end method


# virtual methods
.method public final a(Laip;Ljava/util/concurrent/atomic/AtomicBoolean;)Lwd;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laip;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lwd",
            "<",
            "Laqx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Laox;->c:Lapq;

    invoke-virtual {v0, p1}, Lapq;->a(Laip;)Laqx;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    sget-object v1, Laox;->a:Ljava/lang/Class;

    const-string v2, "Found image for %s in staging area"

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-static {v0}, Lwd;->a(Ljava/lang/Object;)Lwd;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 87
    :cond_0
    :try_start_0
    new-instance v0, Laoy;

    invoke-direct {v0, p0, p2, p1}, Laoy;-><init>(Laox;Ljava/util/concurrent/atomic/AtomicBoolean;Laip;)V

    iget-object v1, p0, Laox;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lwd;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lwd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 131
    sget-object v1, Laox;->a:Ljava/lang/Class;

    const-string v2, "Failed to schedule disk-cache read for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Laip;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lakf;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-static {v0}, Lwd;->a(Ljava/lang/Exception;)Lwd;

    move-result-object v0

    goto :goto_0
.end method
