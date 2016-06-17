.class public final Ldnz;
.super Lhic;
.source "HighlightLayoutPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0c0370

    .line 13
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->icon_image:Lcom/wandoujia/api/proto/Image;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->icon_image:Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->rgbs:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->icon_image:Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->rgbs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Ldnz;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->icon_image:Lcom/wandoujia/api/proto/Image;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Image;->rgbs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Leri;->h(I)Leri;

    .line 19
    :goto_1
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Ldnz;->f()Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Leri;->h(I)Leri;

    goto :goto_1
.end method
