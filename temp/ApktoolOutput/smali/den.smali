.class public final Lden;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "DetailFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private synthetic b:Lcom/wandoujia/jupiter/fragment/DetailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lden;->b:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    iput-object p2, p0, Lden;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 439
    iget-object v0, p0, Lden;->b:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->m(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Z

    .line 440
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lden;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 443
    :cond_0
    iget-object v0, p0, Lden;->b:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->n(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Lden;->b:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->o(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V

    .line 446
    :cond_1
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V

    .line 447
    return-void
.end method
