.class public final Ldqx;
.super Lhic;
.source "VerifiedPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0}, Ldqx;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 21
    invoke-static {p1}, Lg;->c(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Image;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    const v1, 0x7f0204ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    :goto_0
    return-void

    .line 27
    :cond_0
    const v1, 0x7f0204ac

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 30
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
