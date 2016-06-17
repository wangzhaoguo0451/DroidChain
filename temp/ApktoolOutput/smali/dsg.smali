.class public final Ldsg;
.super Lhic;
.source "TextSuggestionItemPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0}, Ldsg;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Leri;->a(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 18
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SUGGESTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v1, v2, :cond_0

    .line 19
    const v1, 0x7f020312

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    const v1, 0x7f020296

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
