.class public final Ldfw;
.super Lcom/nineoldandroids/animation/ValueAnimator;
.source "HomePageFragment.java"


# instance fields
.field final synthetic a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 541
    iput-object p1, p0, Ldfw;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 542
    invoke-static {p1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v0

    invoke-interface {v0}, Ldgb;->b_()I

    move-result v0

    invoke-static {}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ldfw;->b:Z

    .line 543
    const-wide/16 v4, 0x78

    invoke-virtual {p0, v4, v5}, Ldfw;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 544
    iget-boolean v0, p0, Ldfw;->b:Z

    if-eqz v0, :cond_1

    .line 545
    new-array v0, v6, [I

    invoke-static {p1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v3

    invoke-interface {v3}, Ldgb;->b_()I

    move-result v3

    aput v3, v0, v2

    invoke-static {p1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v2

    invoke-interface {v2}, Ldgb;->b_()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, p3

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Ldfw;->setIntValues([I)V

    .line 546
    new-instance v0, Ldfx;

    invoke-direct {v0, p0}, Ldfx;-><init>(Ldfw;)V

    invoke-virtual {p0, v0}, Ldfw;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 566
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 542
    goto :goto_0

    .line 557
    :cond_1
    new-array v0, v6, [I

    aput p2, v0, v2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Ldfw;->setIntValues([I)V

    .line 558
    new-instance v0, Ldfy;

    invoke-direct {v0, p0}, Ldfy;-><init>(Ldfw;)V

    invoke-virtual {p0, v0}, Ldfw;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;IIB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    invoke-direct {p0, p1, p2, p3}, Ldfw;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;II)V

    return-void
.end method
