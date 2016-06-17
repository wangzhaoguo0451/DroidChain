.class public final Ldoh;
.super Lhic;
.source "IntroductionCardPresenter.java"


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
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0c0345

    const v5, 0x7f0c0078

    const v4, 0x7f0c005e

    const/4 v3, 0x0

    .line 20
    invoke-virtual {p0}, Ldoh;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 21
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v1, Lcom/wandoujia/api/proto/Entity;->cover:Ljava/util/List;

    .line 22
    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Image;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Image;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 24
    invoke-virtual {p0}, Ldoh;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    .line 29
    :goto_0
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    :cond_0
    invoke-virtual {p0}, Ldoh;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0157

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 32
    invoke-virtual {p0}, Ldoh;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0144

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 38
    :goto_1
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Ldoh;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->b(I)Leri;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Ldoh;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0158

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    .line 35
    invoke-virtual {p0}, Ldoh;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->b(I)Leri;

    move-result-object v0

    const v1, 0x7f0a0145

    invoke-virtual {v0, v1}, Leri;->e(I)Leri;

    goto :goto_1
.end method
