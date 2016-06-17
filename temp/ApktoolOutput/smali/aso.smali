.class final Laso;
.super Lasp;
.source "DecodeProducer.java"


# instance fields
.field private final e:Laqr;

.field private f:I


# direct methods
.method public constructor <init>(Lasm;Lask;Laue;Laqr;Laqq;)V
    .locals 1
    .parameter
    .parameter
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
            "Laqr;",
            "Laqq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0, p1, p2, p3}, Lasp;-><init>(Lasm;Lask;Laue;)V

    .line 329
    invoke-static {p4}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqr;

    iput-object v0, p0, Laso;->e:Laqr;

    .line 330
    invoke-static {p5}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Laso;->f:I

    .line 332
    return-void
.end method


# virtual methods
.method protected final a(Laqx;)I
    .locals 1
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Laso;->e:Laqr;

    iget v0, v0, Laqr;->b:I

    return v0
.end method

.method protected final declared-synchronized a(Laqx;Z)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 336
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lasp;->a(Laqx;Z)Z

    move-result v2

    .line 337
    if-nez p2, :cond_7

    invoke-static {p1}, Laqx;->e(Laqx;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 338
    iget-object v0, p0, Laso;->e:Laqr;

    invoke-virtual {v0, p1}, Laqr;->a(Laqx;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 349
    :goto_0
    monitor-exit p0

    return v0

    .line 341
    :cond_0
    :try_start_1
    iget-object v0, p0, Laso;->e:Laqr;

    iget v4, v0, Laqr;->a:I

    .line 342
    iget v0, p0, Laso;->f:I

    if-le v4, v0, :cond_2

    iget v5, p0, Laso;->f:I

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    add-int/lit8 v0, v5, 0x1

    :goto_1
    if-ge v4, v0, :cond_6

    :cond_2
    move v0, v1

    .line 345
    goto :goto_0

    :cond_3
    move v3, v1

    .line 342
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    const v0, 0x7fffffff

    goto :goto_1

    .line 347
    :cond_6
    iput v4, p0, Laso;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    move v0, v2

    .line 349
    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final c()Lara;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Laso;->e:Laqr;

    iget v2, v0, Laqr;->a:I

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0, v1}, Laqz;->a(IZZ)Lara;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
