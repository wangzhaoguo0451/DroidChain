.class public final Ldtw;
.super Lhic;
.source "RelatePublisherPresenter.java"


# instance fields
.field private a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

.field private b:Lhma;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0}, Ldtw;->f()Leri;

    move-result-object v0

    const v1, 0x7f0a01a8

    invoke-virtual {v0, v1}, Leri;->i(I)Leri;

    .line 23
    iget-object v0, p0, Ldtw;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    if-nez v0, :cond_1

    .line 24
    new-instance v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    invoke-virtual {p0}, Ldtw;->e()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c0388

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-direct {v1, v0}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;-><init>(Lcom/wandoujia/ripple_framework/view/CustomFontTextView;)V

    iput-object v1, p0, Ldtw;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    .line 30
    :goto_0
    iget-object v0, p0, Ldtw;->b:Lhma;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lhma;

    invoke-direct {v0}, Lhma;-><init>()V

    iput-object v0, p0, Ldtw;->b:Lhma;

    .line 33
    :cond_0
    iget-object v0, p0, Ldtw;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    invoke-virtual {v0, p1}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 34
    iget-object v1, p0, Ldtw;->b:Lhma;

    invoke-virtual {p0}, Ldtw;->e()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c00de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/PublisherDetail;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ldtw;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/PublisherDetail;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Ldtw;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/PublisherDetail;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Ldtw;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a()V

    goto :goto_0
.end method
