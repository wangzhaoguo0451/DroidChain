.class final Lasn;
.super Lasp;
.source "DecodeProducer.java"


# direct methods
.method public constructor <init>(Lasm;Lask;Laue;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p1, p2, p3}, Lasp;-><init>(Lasm;Lask;Laue;)V

    .line 296
    return-void
.end method


# virtual methods
.method protected final a(Laqx;)I
    .locals 1
    .parameter

    .prologue
    .line 308
    invoke-virtual {p1}, Laqx;->b()I

    move-result v0

    return v0
.end method

.method protected final declared-synchronized a(Laqx;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 300
    monitor-enter p0

    if-nez p2, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lasp;->a(Laqx;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final c()Lara;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-static {v0, v0, v0}, Laqz;->a(IZZ)Lara;

    move-result-object v0

    return-object v0
.end method
