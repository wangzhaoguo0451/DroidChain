.class public final Ldoj;
.super Lhjb;
.source "ListPresenterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Lhjb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 473
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PUBLISHER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    new-instance v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    invoke-virtual {p0}, Ldoj;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-direct {v1, v0}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;-><init>(Lcom/wandoujia/ripple_framework/view/CustomFontTextView;)V

    .line 477
    invoke-virtual {v1, p1}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->GIFT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    .line 481
    invoke-virtual {p0}, Ldoj;->e()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 482
    invoke-virtual {p0}, Ldoj;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_2
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Detail;->gift_detail:Lcom/wandoujia/api/proto/GiftDetail;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Ldoj;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldok;

    invoke-direct {v1, p0, p1}, Ldok;-><init>(Ldoj;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 501
    :cond_3
    invoke-super {p0, p1}, Lhjb;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    goto :goto_0
.end method
