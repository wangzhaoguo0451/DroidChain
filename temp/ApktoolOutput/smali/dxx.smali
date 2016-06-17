.class public final Ldxx;
.super Landroid/view/animation/Animation;
.source "ExpandCollapseAnimation.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:Landroid/view/ViewGroup$LayoutParams;

.field private e:Landroid/view/animation/Animation$AnimationListener;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;JII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 12
    iput v0, p0, Ldxx;->c:I

    .line 15
    iput-boolean v0, p0, Ldxx;->f:Z

    .line 16
    iput-boolean v0, p0, Ldxx;->g:Z

    .line 25
    invoke-virtual {p0, p2, p3}, Ldxx;->setDuration(J)V

    .line 26
    iput-object p1, p0, Ldxx;->a:Landroid/view/View;

    .line 27
    iput p4, p0, Ldxx;->c:I

    .line 28
    iput p5, p0, Ldxx;->b:I

    .line 29
    iget-object v0, p0, Ldxx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Ldxx;->d:Landroid/view/ViewGroup$LayoutParams;

    .line 30
    iget-object v0, p0, Ldxx;->d:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Ldxx;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 40
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldxx;->f:Z

    if-nez v0, :cond_0

    .line 41
    iput-boolean v4, p0, Ldxx;->f:Z

    .line 42
    iget-object v0, p0, Ldxx;->e:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Ldxx;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 46
    :cond_0
    iget-boolean v0, p0, Ldxx;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldxx;->g:Z

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Ldxx;->d:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Ldxx;->c:I

    iget v2, p0, Ldxx;->b:I

    iget v3, p0, Ldxx;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    iget-object v0, p0, Ldxx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 50
    :cond_1
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldxx;->g:Z

    if-nez v0, :cond_2

    .line 51
    iput-boolean v4, p0, Ldxx;->g:Z

    .line 52
    iget-object v0, p0, Ldxx;->e:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Ldxx;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 57
    :cond_2
    return-void
.end method

.method public final setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Ldxx;->e:Landroid/view/animation/Animation$AnimationListener;

    .line 36
    return-void
.end method
