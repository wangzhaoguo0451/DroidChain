.class public final Ldel;
.super Lup;
.source "DetailFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/fragment/DetailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Ldel;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-direct {p0}, Lup;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Ldel;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->a(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lgs;->n(Landroid/view/View;)F

    move-result v0

    .line 112
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    iget-object v1, p0, Ldel;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->b(Lcom/wandoujia/jupiter/fragment/DetailFragment;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    if-gez p3, :cond_2

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Ldel;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->a(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ldel;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->b(Lcom/wandoujia/jupiter/fragment/DetailFragment;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Ldel;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v3}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->b(Lcom/wandoujia/jupiter/fragment/DetailFragment;)I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0
.end method
