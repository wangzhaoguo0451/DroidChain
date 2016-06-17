.class public final Lech;
.super Ljava/lang/Object;
.source "FloatingRocketView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lech;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lech;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->e(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lech;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->g(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lech;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->f(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    return-void
.end method
