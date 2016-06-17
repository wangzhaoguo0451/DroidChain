.class public final Lecg;
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
    .line 131
    iput-object p1, p0, Lecg;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lecg;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->b(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lecg;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->e(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lecg;->a:Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;->d(Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    return-void
.end method
