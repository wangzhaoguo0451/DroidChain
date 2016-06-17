.class final Leyq;
.super Ljava/lang/Object;
.source "SmoothAnimationHandler.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Leyp;


# direct methods
.method constructor <init>(Leyp;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Leyq;->a:Leyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Leyq;->a:Leyp;

    iget-object v1, v0, Leyp;->a:Leyl;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Leyq;->a:Leyp;

    iget-object v2, v2, Leyp;->a:Leyl;

    iget v2, v2, Leyl;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Leyl;->a:I

    .line 121
    iget-object v0, p0, Leyq;->a:Leyp;

    iget-object v0, v0, Leyp;->a:Leyl;

    iget-object v0, v0, Leyl;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Leyq;->a:Leyp;

    iget-object v0, v0, Leyp;->a:Leyl;

    iget-object v0, v0, Leyl;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leys;

    iget-object v1, p0, Leyq;->a:Leyp;

    iget-object v1, v1, Leyp;->a:Leyl;

    iget v1, v1, Leyl;->a:I

    invoke-interface {v0, v1}, Leys;->a(I)V

    .line 124
    :cond_0
    return-void
.end method
