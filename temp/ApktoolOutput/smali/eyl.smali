.class public final Leyl;
.super Ljava/lang/Object;
.source "SmoothAnimationHandler.java"


# instance fields
.field a:I

.field b:I

.field c:Lcom/nineoldandroids/animation/ValueAnimator;

.field d:Lcom/nineoldandroids/animation/ValueAnimator;

.field final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Leys;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leys;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Leyl;->e:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    iput v0, p0, Leyl;->a:I

    .line 56
    iput v0, p0, Leyl;->b:I

    .line 57
    invoke-virtual {p0}, Leyl;->c()V

    .line 58
    invoke-virtual {p0}, Leyl;->d()V

    .line 59
    invoke-virtual {p0}, Leyl;->b()V

    .line 60
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Leyp;

    invoke-direct {v1, p0, p1}, Leyp;-><init>(Leyl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Leym;

    invoke-direct {v1, p0}, Leym;-><init>(Leyl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Leyl;->c:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leyl;->c:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Leyl;->c:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 142
    :cond_0
    return-void
.end method

.method final d()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Leyl;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Leyl;->d:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 148
    :cond_0
    return-void
.end method
