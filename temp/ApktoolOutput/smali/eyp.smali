.class final Leyp;
.super Ljava/lang/Object;
.source "SmoothAnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leyl;

.field private synthetic b:I


# direct methods
.method constructor <init>(Leyl;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Leyp;->a:Leyl;

    iput p2, p0, Leyp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 99
    iget v0, p0, Leyp;->b:I

    iget-object v1, p0, Leyp;->a:Leyl;

    iget v1, v1, Leyl;->b:I

    add-int/lit8 v1, v1, 0xa

    if-gt v0, v1, :cond_1

    iget v0, p0, Leyp;->b:I

    const/16 v1, 0x63

    if-ge v0, v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget v0, p0, Leyp;->b:I

    iget-object v1, p0, Leyp;->a:Leyl;

    iget v1, v1, Leyl;->a:I

    if-le v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Leyp;->a:Leyl;

    iget v1, p0, Leyp;->b:I

    iput v1, v0, Leyl;->b:I

    .line 108
    iget-object v0, p0, Leyp;->a:Leyl;

    invoke-virtual {v0}, Leyl;->c()V

    .line 109
    iget-object v0, p0, Leyp;->a:Leyl;

    invoke-virtual {v0}, Leyl;->d()V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Leyp;->a:Leyl;

    iget v1, v1, Leyl;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Leyp;->a:Leyl;

    iget v1, v1, Leyl;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->A(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Leyp;->a:Leyl;

    iget v0, v0, Leyl;->b:I

    iget-object v1, p0, Leyp;->a:Leyl;

    iget v1, v1, Leyl;->a:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x708

    div-int/lit8 v0, v0, 0x64

    .line 114
    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 115
    iget-object v1, p0, Leyp;->a:Leyl;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Leyp;->a:Leyl;

    iget v4, v4, Leyl;->a:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Leyp;->a:Leyl;

    iget v4, v4, Leyl;->b:I

    aput v4, v2, v3

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Leyl;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 116
    iget-object v0, p0, Leyp;->a:Leyl;

    iget-object v0, v0, Leyl;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 117
    iget-object v0, p0, Leyp;->a:Leyl;

    iget-object v0, v0, Leyl;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Leyq;

    invoke-direct {v1, p0}, Leyq;-><init>(Leyp;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    iget-object v0, p0, Leyp;->a:Leyl;

    iget-object v0, v0, Leyl;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Leyr;

    invoke-direct {v1, p0}, Leyr;-><init>(Leyp;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 133
    iget-object v0, p0, Leyp;->a:Leyl;

    iget-object v0, v0, Leyl;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    goto/16 :goto_0
.end method
