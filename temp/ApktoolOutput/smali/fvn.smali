.class public final Lfvn;
.super Ljava/lang/Object;
.source "GiftDetailPopUpCardViewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;
.implements Lfvj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;",
        "Lfvq;",
        ">;",
        "Lfvj;"
    }
.end annotation


# instance fields
.field private a:Lfvq;

.field private b:Lfut;

.field private c:Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lfbv;

    invoke-direct {v0}, Lfbv;-><init>()V

    .line 34
    new-instance v0, Lfut;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_POP_UP:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v0, v1}, Lfut;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    iput-object v0, p0, Lfvn;->b:Lfut;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/gift/http/model/GiftModel;)V
    .locals 4
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lfvn;->c:Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getCardView()Lfca;

    move-result-object v0

    iget-object v1, p0, Lfvn;->a:Lfvq;

    invoke-virtual {v1}, Lfvq;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    .line 83
    iget-object v0, p0, Lfvn;->b:Lfut;

    iget-object v1, p0, Lfvn;->c:Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getButton()Lfar;

    move-result-object v1

    new-instance v2, Lfvq;

    sget-object v3, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_POP_UP:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v2, p1, v3}, Lfvq;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    invoke-virtual {v0, v1, v2}, Lfut;->a(Lfar;Lfvq;)V

    .line 85
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;Lfvq;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 39
    iget-object v0, p0, Lfvn;->a:Lfvq;

    if-ne v0, p2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    if-eqz v0, :cond_0

    .line 47
    iput-object p2, p0, Lfvn;->a:Lfvq;

    .line 48
    iput-object p1, p0, Lfvn;->c:Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;

    .line 49
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {p2}, Lfvq;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    .line 51
    iget-object v0, p0, Lfvn;->b:Lfut;

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getButton()Lfar;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lfut;->a(Lfar;Lfvq;)V

    .line 53
    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->isReceived()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getButton()Lfar;

    move-result-object v0

    invoke-interface {v0}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/button/views/StatefulButton;->setVisibility(I)V

    .line 57
    :cond_2
    sget-object v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->CDKEY:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->getGiftType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {v0}, Lfca;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :cond_3
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getExchangeDateTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getExchangeDateRange()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getGiftUsageTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getDirections()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->isReceived()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getCdkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getGiftKeyContainer()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getGiftKeyTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getCdkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getOpenGiftKeyButton()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v1

    new-instance v2, Lfaq;

    const v3, 0x7f010042

    const v4, 0x7f0e0340

    new-instance v5, Lfty;

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v6, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-direct {v5, v0, v6}, Lfty;-><init>(Landroid/app/Activity;Lcom/wandoujia/p4/gift/http/model/GiftModel;)V

    invoke-direct {v2, v3, v4, v5}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto/16 :goto_0
.end method

.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;

    check-cast p2, Lfvq;

    invoke-virtual {p0, p1, p2}, Lfvn;->a(Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;Lfvq;)V

    return-void
.end method
