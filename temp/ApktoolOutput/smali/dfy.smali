.class final Ldfy;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Ldfw;


# direct methods
.method constructor <init>(Ldfw;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Ldfy;->a:Ldfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2
    .parameter

    .prologue
    .line 561
    iget-object v0, p0, Ldfy;->a:Ldfw;

    iget-object v1, v0, Ldfw;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)I

    .line 562
    iget-object v0, p0, Ldfy;->a:Ldfw;

    iget-object v0, v0, Ldfw;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    iget-object v1, p0, Ldfy;->a:Ldfw;

    iget-object v1, v1, Ldfw;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->d(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)V

    .line 563
    return-void
.end method
