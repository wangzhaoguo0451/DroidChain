.class public final Lecm;
.super Ljava/lang/Object;
.source "GameExpandableView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lecm;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lecm;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->d(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lecm;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->f(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Lcom/wandoujia/launcher/view/ExpandablePanelIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/launcher/view/ExpandablePanelIcon;->b()V

    .line 207
    iget-object v0, p0, Lecm;->a:Lcom/wandoujia/launcher/launcher/views/GameExpandableView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameExpandableView;->g(Lcom/wandoujia/launcher/launcher/views/GameExpandableView;)Ldd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;->COLLAPSE:Lcom/wandoujia/launcher/launcher/views/GameExpandableView$OnExpandStateChangeListener$ExpandState;

    .line 211
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    return-void
.end method
