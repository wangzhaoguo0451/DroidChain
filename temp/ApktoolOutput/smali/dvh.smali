.class public final Ldvh;
.super Ljava/lang/Object;
.source "MythingMenuView.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Ldvh;->a:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 4
    .parameter

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 126
    iget-object v1, p0, Ldvh;->a:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    iget-object v2, p0, Ldvh;->a:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->b(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;I)I

    .line 127
    const/4 v1, 0x0

    const/16 v2, 0xff

    const/high16 v3, 0x4080

    mul-float/2addr v0, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v0, v3

    const/high16 v3, 0x437f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 128
    iget-object v1, p0, Ldvh;->a:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->c(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    iget-object v0, p0, Ldvh;->a:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->postInvalidate()V

    .line 130
    return-void
.end method
