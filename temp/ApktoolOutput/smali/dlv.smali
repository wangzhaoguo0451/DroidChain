.class public final Ldlv;
.super Lhic;
.source "DetailHeaderLayoutPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0c032f

    const v1, 0x7f0c005e

    const v6, 0x7f0c0002

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 27
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    invoke-static {v0}, Ldwk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Ldlv;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :goto_0
    invoke-virtual {p0}, Ldlv;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0082

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    .line 34
    invoke-static {p1}, Lg;->c(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 36
    new-instance v1, Ldlw;

    invoke-direct {v1, p0}, Ldlw;-><init>(Ldlv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :goto_1
    invoke-virtual {p0}, Ldlv;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v1, v0, Leri;->a:Landroid/view/View;

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->g:Ljava/util/List;

    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 57
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/GiftDetail;->cdkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    invoke-virtual {p0}, Ldlv;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->f(I)Leri;

    .line 64
    invoke-virtual {p0}, Ldlv;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 65
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/GiftDetail;->cdkey:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Ldlv;->f()Leri;

    move-result-object v1

    const v2, 0x7f0c0330

    invoke-virtual {v1, v2}, Leri;->a(I)Leri;

    move-result-object v1

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    iget-object v2, v2, Lcom/wandoujia/api/proto/GiftDetail;->cdkey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 67
    invoke-virtual {p0}, Ldlv;->f()Leri;

    move-result-object v1

    const v2, 0x7f0c0331

    invoke-virtual {v1, v2}, Leri;->a(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    new-instance v2, Ldlx;

    invoke-direct {v2, p0, v0}, Ldlx;-><init>(Ldlv;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :goto_3
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Ldlv;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4180

    invoke-static {v2, v3}, Ld;->c(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 81
    :cond_3
    invoke-virtual {p0}, Ldlv;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->f(I)Leri;

    .line 82
    invoke-virtual {p0}, Ldlv;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v7}, Leri;->a(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->f(I)Leri;

    goto :goto_3
.end method
