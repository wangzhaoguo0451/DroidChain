.class final Leyn;
.super Ljava/lang/Object;
.source "SmoothAnimationHandler.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Leym;


# direct methods
.method constructor <init>(Leym;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Leyn;->a:Leym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Leyn;->a:Leym;

    iget-object v1, v0, Leym;->a:Leyl;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Leyn;->a:Leym;

    iget-object v2, v2, Leym;->a:Leyl;

    iget v2, v2, Leyl;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Leyl;->a:I

    .line 80
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Leyo;

    invoke-direct {v1, p0}, Leyo;-><init>(Leyn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method
