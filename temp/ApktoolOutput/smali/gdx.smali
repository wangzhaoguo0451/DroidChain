.class public final Lgdx;
.super Ljava/lang/Object;
.source "WeakReferenceContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgdx",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private synthetic c:Lgdw;


# direct methods
.method private constructor <init>(Lgdw;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lgdx;->c:Lgdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgdx;->a:Ljava/util/Queue;

    .line 67
    iget-object v0, p0, Lgdx;->a:Ljava/util/Queue;

    iget-object v1, p1, Lgdw;->a:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 68
    iget-object v0, p0, Lgdx;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lgdx;->b:Ljava/util/Iterator;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lgdw;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgdx;-><init>(Lgdw;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 73
    :goto_0
    iget-object v0, p0, Lgdx;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lgdx;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 75
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 85
    :goto_1
    return-object v0

    .line 79
    :cond_0
    iget-object v1, p0, Lgdx;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 81
    iget-object v1, p0, Lgdx;->c:Lgdw;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v2, p0, Lgdx;->c:Lgdw;

    iget-object v2, v2, Lgdw;->a:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
