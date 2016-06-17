.class public final Lers;
.super Lerv;
.source "HeaderFooterAdapter.java"

# interfaces
.implements Leru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lerv",
        "<",
        "Lert;",
        ">;",
        "Leru;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lert;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lert;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Lerv;-><init>()V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lers;->e:Ljava/util/List;

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lers;->c:Ljava/util/Map;

    .line 333
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lert;

    iget v0, v0, Lert;->e:I

    return v0
.end method

.method public final a(Lert;)V
    .locals 2
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lers;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lert;->e:I

    .line 365
    iget-object v0, p0, Lers;->c:Ljava/util/Map;

    iget v1, p1, Lert;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iput-object p0, p1, Lert;->b:Leru;

    .line 367
    iget-object v0, p0, Lers;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-boolean v0, p1, Lert;->c:Z

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {p0}, Lerv;->a()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lerv;->a(ILjava/util/List;)Z

    .line 373
    :cond_0
    return-void
.end method

.method public final a(Lerw;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 382
    iget-object v1, p1, Lerw;->k:Lerf;

    iget-object v0, p0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lert;

    iget-object v0, v0, Lert;->d:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lerf;->a(Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method public final bridge synthetic a(Lux;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    check-cast p1, Lerw;

    invoke-virtual {p0, p1, p2}, Lers;->a(Lerw;I)V

    return-void
.end method

.method public final a(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lert;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lers;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 346
    iget-object v0, p0, Lers;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    iget-object v0, p0, Lers;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 348
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lert;

    .line 349
    iget-object v2, p0, Lers;->c:Ljava/util/Map;

    iget v3, v0, Lert;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 351
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 352
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lers;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 353
    iget-object v0, p0, Lers;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lert;

    .line 354
    iput v1, v0, Lert;->e:I

    .line 355
    iput-object p0, v0, Lert;->b:Leru;

    .line 356
    iget-boolean v3, v0, Lert;->c:Z

    if-eqz v3, :cond_1

    .line 357
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 360
    :cond_2
    invoke-super {p0, v2}, Lerv;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected final b(Landroid/view/ViewGroup;I)Lerf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lers;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lert;

    invoke-virtual {v0, p1}, Lert;->a(Landroid/view/ViewGroup;)Lerf;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lert;)V
    .locals 3
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lers;->a()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 393
    iget-object v0, p0, Lers;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lert;

    iget v0, v0, Lert;->e:I

    iget v2, p1, Lert;->e:I

    if-ne v0, v2, :cond_0

    .line 394
    invoke-virtual {p0, v1}, Lers;->c(I)V

    .line 392
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 397
    :cond_1
    return-void
.end method

.method public final c(Lert;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-boolean v1, p1, Lert;->c:Z

    if-eqz v1, :cond_2

    move v1, v0

    move v2, v0

    .line 403
    :goto_0
    iget-object v0, p0, Lers;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 404
    iget-object v0, p0, Lers;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lert;

    iget v0, v0, Lert;->e:I

    iget v3, p1, Lert;->e:I

    if-eq v0, v3, :cond_1

    .line 405
    iget-object v0, p0, Lers;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lert;

    iget-boolean v0, v0, Lert;->c:Z

    if-eqz v0, :cond_0

    .line 408
    add-int/lit8 v2, v2, 0x1

    .line 403
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0, v2, p1}, Lers;->a(ILjava/lang/Object;)Z

    .line 415
    :goto_1
    iget-object v0, p1, Lert;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 413
    :cond_2
    invoke-virtual {p0, p1}, Lers;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    :cond_3
    return-void
.end method

.method public final e(I)V
    .locals 1
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lers;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public final f(I)V
    .locals 1
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lers;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    return-void
.end method
