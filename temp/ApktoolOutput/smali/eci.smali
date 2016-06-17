.class public final Leci;
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
    .line 165
    iput-object p1, p0, Leci;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Leci;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->a(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Leci;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->h(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Leci;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->g(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    return-void
.end method
