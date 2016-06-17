.class public abstract Lhyk;
.super Ljava/lang/Object;
.source "AbstractNioWorkerPool.java"

# interfaces
.implements Lhzu;
.implements Lidz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lhyi;",
        ">",
        "Ljava/lang/Object;",
        "Lhzu",
        "<TE;>;",
        "Lidz;"
    }
.end annotation


# instance fields
.field private final a:[Lhyi;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/Executor;

.field private volatile d:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lhyk;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "workerExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    if-gtz p2, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "workerCount ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-array v0, p2, [Lhyi;

    iput-object v0, p0, Lhyk;->a:[Lhyi;

    .line 57
    iput-object p1, p0, Lhyk;->c:Ljava/util/concurrent/Executor;

    .line 58
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/concurrent/Executor;)Lhyi;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This will be removed. Override this and the newWorker(..) method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a()V
    .locals 3

    .prologue
    .line 63
    iget-boolean v0, p0, Lhyk;->d:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Init was done before"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhyk;->d:Z

    .line 68
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lhyk;->a:[Lhyi;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Lhyk;->a:[Lhyi;

    iget-object v2, p0, Lhyk;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v2}, Lhyk;->a(Ljava/util/concurrent/Executor;)Lhyi;

    move-result-object v2

    aput-object v2, v1, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public final synthetic b()Lhya;
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lhyk;->a:[Lhyi;

    iget-object v1, p0, Lhyk;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lhyk;->a:[Lhyi;

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lhyk;->d()V

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iget-object v2, p0, Lhyk;->c:Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    invoke-static {v0}, Ld;->a([Ljava/util/concurrent/Executor;)V

    .line 116
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, Lhyk;->a:[Lhyi;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 120
    invoke-virtual {v3}, Lhyi;->e()V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method
