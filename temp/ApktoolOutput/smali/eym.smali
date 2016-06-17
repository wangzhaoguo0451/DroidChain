.class final Leym;
.super Ljava/lang/Object;
.source "SmoothAnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leyl;


# direct methods
.method constructor <init>(Leyl;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Leym;->a:Leyl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/16 v5, 0x63

    .line 66
    iget-object v0, p0, Leym;->a:Leyl;

    iget v0, v0, Leyl;->a:I

    if-lt v0, v5, :cond_0

    .line 67
    iget-object v0, p0, Leym;->a:Leyl;

    invoke-virtual {v0}, Leyl;->c()V

    .line 68
    iget-object v0, p0, Leym;->a:Leyl;

    invoke-virtual {v0}, Leyl;->d()V

    .line 91
    :goto_0
    return-void

    .line 71
    :cond_0
    const v0, 0x1d4c0

    iget-object v1, p0, Leym;->a:Leyl;

    iget v1, v1, Leyl;->a:I

    rsub-int/lit8 v1, v1, 0x64

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 73
    iget-object v1, p0, Leym;->a:Leyl;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Leym;->a:Leyl;

    iget v4, v4, Leyl;->a:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Leyl;->c:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 75
    iget-object v0, p0, Leym;->a:Leyl;

    iget-object v0, v0, Leyl;->c:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    iget-object v0, p0, Leym;->a:Leyl;

    iget-object v0, v0, Leyl;->c:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Leyn;

    invoke-direct {v1, p0}, Leyn;-><init>(Leym;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    iget-object v0, p0, Leym;->a:Leyl;

    iget-object v0, v0, Leyl;->c:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
