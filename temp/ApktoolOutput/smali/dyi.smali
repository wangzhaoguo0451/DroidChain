.class public abstract Ldyi;
.super Ldya;
.source "FullyFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldya",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ldya;-><init>()V

    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ldyi;->e:[B

    return-void
.end method


# virtual methods
.method protected final a(II)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    iget-object v1, p0, Ldyi;->e:[B

    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, p0, Ldyi;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 22
    iget-object v0, p0, Ldyi;->d:Ljava/util/List;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p0}, Ldyi;->b()Ljava/util/List;

    move-result-object v0

    .line 28
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    :goto_0
    if-eqz v0, :cond_2

    if-ge p1, p2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 32
    :cond_2
    iget-object v2, p0, Ldyi;->e:[B

    monitor-enter v2

    .line 33
    :try_start_2
    iput-object v0, p0, Ldyi;->d:Ljava/util/List;

    .line 34
    monitor-exit v2

    .line 35
    return-object v1

    .line 34
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method
