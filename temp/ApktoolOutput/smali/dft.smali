.class public final Ldft;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Ldfm;


# instance fields
.field private a:Ldfw;

.field private synthetic b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Ldft;->a:Ldfw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldft;->a:Ldfw;

    invoke-virtual {v0}, Ldfw;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Ldft;->a:Ldfw;

    invoke-virtual {v0}, Ldfw;->end()V

    .line 489
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 468
    if-nez p1, :cond_3

    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v0

    invoke-static {}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c()I

    move-result v2

    neg-int v2, v2

    if-le v0, v2, :cond_3

    .line 471
    invoke-direct {p0}, Ldft;->a()V

    .line 472
    new-instance v2, Ldfw;

    iget-object v3, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v4

    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v0

    invoke-static {}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c()I

    move-result v5

    div-int/lit8 v5, v5, -0x2

    if-ge v0, v5, :cond_2

    invoke-static {}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c()I

    move-result v0

    neg-int v0, v0

    :goto_0
    invoke-direct {v2, v3, v4, v0, v1}, Ldfw;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;IIB)V

    iput-object v2, p0, Ldft;->a:Ldfw;

    .line 474
    iget-object v0, p0, Ldft;->a:Ldfw;

    invoke-virtual {v0}, Ldfw;->start()V

    .line 479
    :cond_0
    :goto_1
    if-eq p1, v6, :cond_1

    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->m(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->l(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    .line 483
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 472
    goto :goto_0

    .line 475
    :cond_3
    if-ne p1, v6, :cond_0

    .line 476
    invoke-direct {p0}, Ldft;->a()V

    goto :goto_1
.end method

.method public final a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 439
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->j(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0, v3}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a(Lcom/wandoujia/jupiter/homepage/HomePageFragment;Z)Z

    .line 443
    :cond_0
    if-lez p2, :cond_3

    .line 445
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->k(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z

    .line 446
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->l(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    .line 462
    :cond_1
    :goto_0
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)I

    .line 463
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    iget-object v1, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->d(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)V

    .line 464
    :cond_2
    :goto_1
    return-void

    .line 447
    :cond_3
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->m(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v0

    invoke-interface {v0}, Ldgb;->b_()I

    move-result v0

    iget-object v1, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    .line 450
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->k(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z

    .line 451
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->l(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    goto :goto_0

    .line 453
    :cond_4
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0, p2}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->b(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)I

    .line 454
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->p(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v0

    neg-int v0, v0

    invoke-static {}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->b()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 456
    iget-object v0, p0, Ldft;->b:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->k(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z

    goto :goto_1
.end method
