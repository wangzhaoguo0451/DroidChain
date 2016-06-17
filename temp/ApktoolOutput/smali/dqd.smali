.class public final Ldqd;
.super Lhic;
.source "SearchHorizontalImagePresenter.java"


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lhic;-><init>()V

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ldqd;->a:[I

    return-void

    :array_0
    .array-data 0x4
        0x6bt 0x3t 0xct 0x7ft
        0x6ct 0x3t 0xct 0x7ft
        0x6dt 0x3t 0xct 0x7ft
    .end array-data
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 6
    .parameter

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p0}, Ldqd;->e()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0}, Ldqd;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenWidth(Landroid/view/WindowManager;)I

    move-result v0

    .line 34
    invoke-virtual {p0}, Ldqd;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    .line 37
    int-to-double v0, v0

    const-wide/high16 v2, 0x401e

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0}, Ldqd;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 40
    invoke-virtual {p0}, Ldqd;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 41
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    invoke-virtual {p0}, Ldqd;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v3

    .line 45
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Ldqd;->a:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 46
    invoke-virtual {p0}, Ldqd;->f()Leri;

    move-result-object v0

    iget-object v1, p0, Ldqd;->a:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    .line 49
    new-instance v4, Lhma;

    invoke-direct {v4}, Lhma;-><init>()V

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    const v5, 0x7f0a0042

    invoke-virtual {v4, v1, v0, v5}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 45
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method
