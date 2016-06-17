.class public final Ldig;
.super Ljava/lang/Object;
.source "LibFragment.java"

# interfaces
.implements Lgqi;


# instance fields
.field private a:F

.field private synthetic b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Ldig;->b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/high16 v0, -0x4080

    iput v0, p0, Ldig;->a:F

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Ldig;->b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    iget-object v0, v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c:Lcom/wandoujia/p4/views/ScrollDownLayout;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ScrollDownLayout;->getMaxOffset()I

    move-result v0

    .line 153
    iget-object v1, p0, Ldig;->b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    iget-object v1, v1, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->a:Landroid/view/View;

    int-to-float v0, v0

    const/high16 v2, 0x3f80

    sub-float v2, p1, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 156
    cmpl-float v0, p1, v3

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Ldig;->b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->a(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V

    .line 161
    :cond_0
    :goto_0
    iput p1, p0, Ldig;->a:F

    .line 162
    return-void

    .line 158
    :cond_1
    cmpl-float v0, p1, v3

    if-lez v0, :cond_0

    iget v0, p0, Ldig;->a:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Ldig;->b:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->b(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V

    goto :goto_0
.end method
