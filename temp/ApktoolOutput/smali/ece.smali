.class public final Lece;
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
    .line 93
    iput-object p1, p0, Lece;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lece;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->b(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lece;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->c(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lece;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->a(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lece;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->b(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    return-void
.end method
