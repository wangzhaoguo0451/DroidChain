.class public final Ldvu;
.super Lhic;
.source "TopicHeaderLayoutPresenter.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0c0078

    const v7, 0x7f0a019e

    const v6, 0x7f0a0163

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 24
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 33
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0386

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 34
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01a3

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v8}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0385

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 41
    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    :goto_1
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    :cond_1
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0304

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->f(I)Leri;

    .line 72
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0129

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->f(I)Leri;

    goto/16 :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/PublisherDetail;->subscribed:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 44
    const v0, 0x7f0b0246

    invoke-direct {p0, v0}, Ldvu;->a(I)I

    move-result v0

    iput v0, p0, Ldvu;->a:I

    .line 48
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 49
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Ldvu;->a:I

    if-le v0, v3, :cond_5

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_3
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 57
    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_3
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0386

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->f(I)Leri;

    .line 61
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0385

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->f(I)Leri;

    .line 62
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01a3

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v8}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Ldvu;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 46
    :cond_4
    const v0, 0x7f0b0245

    invoke-direct {p0, v0}, Ldvu;->a(I)I

    move-result v0

    iput v0, p0, Ldvu;->a:I

    goto/16 :goto_2

    .line 49
    :cond_5
    iget v0, p0, Ldvu;->a:I

    goto/16 :goto_3

    .line 74
    :cond_6
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0304

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 75
    invoke-virtual {p0}, Ldvu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0129

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    goto/16 :goto_0
.end method
