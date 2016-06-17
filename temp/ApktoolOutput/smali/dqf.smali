.class public final Ldqf;
.super Lhic;
.source "SearchVerticalImagePresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 9
    .parameter

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Ldqf;->e()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Ldqf;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenWidth(Landroid/view/WindowManager;)I

    move-result v0

    .line 33
    invoke-virtual {p0}, Ldqf;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int v3, v0, v1

    .line 36
    div-int/lit8 v0, v3, 0x10

    mul-int/lit8 v4, v0, 0x9

    .line 37
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->d()Ljava/util/List;

    move-result-object v5

    .line 38
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 39
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    .line 40
    invoke-virtual {p0}, Ldqf;->e()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 41
    invoke-virtual {p0}, Ldqf;->e()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 42
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v6, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Ldqf;->e()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v6, 0x7f03015c

    invoke-static {v1, v6}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 49
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v6, Lhma;

    invoke-direct {v6}, Lhma;-><init>()V

    iget-object v7, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    const v8, 0x7f0a0042

    invoke-virtual {v6, v1, v7, v8}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 54
    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Ldqf;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method
