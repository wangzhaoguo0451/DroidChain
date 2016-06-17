.class public final Lfut;
.super Ljava/lang/Object;
.source "GiftButtonSelector.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lfar;",
        "Lfvq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lfut;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lfar;Lfvq;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0e0654

    const v6, 0x7f0e0348

    const v5, 0x7f010042

    .line 29
    iget-object v0, p0, Lfut;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_LIST:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_2

    .line 30
    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->isReceived()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    new-instance v0, Lfaq;

    new-instance v1, Lftz;

    iget-object v2, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-interface {p1}, Lfar;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lftz;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/content/Context;)V

    invoke-direct {v0, v5, v6, v1}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    .line 35
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v0, Lfaq;

    new-instance v1, Lftz;

    iget-object v2, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-interface {p1}, Lfar;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lftz;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/content/Context;)V

    invoke-direct {v0, v5, v4, v1}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    .line 41
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lfut;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_POP_UP:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_3

    .line 44
    new-instance v1, Lfaq;

    new-instance v2, Lfua;

    iget-object v3, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-interface {p1}, Lfar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lfua;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V

    invoke-direct {v1, v5, v6, v2}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    .line 48
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Lfut;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_DETAIL_ITEM:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_5

    .line 50
    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->isReceived()Z

    move-result v0

    if-nez v0, :cond_4

    .line 51
    new-instance v1, Lfaq;

    new-instance v2, Lfuj;

    iget-object v3, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-interface {p1}, Lfar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lfuj;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V

    invoke-direct {v1, v5, v6, v2}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    .line 55
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto :goto_0

    .line 57
    :cond_4
    new-instance v1, Lfaq;

    new-instance v2, Lfuj;

    iget-object v3, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-interface {p1}, Lfar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lfuj;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V

    invoke-direct {v1, v5, v4, v2}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    .line 61
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto/16 :goto_0

    .line 63
    :cond_5
    iget-object v0, p0, Lfut;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->MY_GIFT:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_7

    .line 64
    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-static {v0}, Lfvk;->a(Lcom/wandoujia/p4/gift/http/model/GiftModel;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 65
    new-instance v0, Lfaq;

    new-instance v1, Lftz;

    iget-object v2, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-interface {p1}, Lfar;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lftz;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/content/Context;)V

    invoke-direct {v0, v5, v4, v1}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    .line 69
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto/16 :goto_0

    .line 71
    :cond_6
    new-instance v0, Lfaq;

    const v1, 0x7f0e034c

    new-instance v2, Lftz;

    iget-object v3, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-interface {p1}, Lfar;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lftz;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/content/Context;)V

    invoke-direct {v0, v5, v1, v2}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    .line 75
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    .line 76
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v0

    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setTextColor(I)V

    .line 78
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 80
    :cond_7
    iget-object v0, p0, Lfut;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_0

    .line 81
    new-instance v0, Lfaq;

    const v1, 0x7f010043

    new-instance v2, Lftz;

    iget-object v3, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-interface {p1}, Lfar;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lftz;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/content/Context;)V

    invoke-direct {v0, v1, v6, v2}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    .line 85
    invoke-interface {p1}, Lfar;->a()Lcom/wandoujia/p4/button/views/StatefulButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    goto/16 :goto_0
.end method

.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    check-cast p1, Lfar;

    check-cast p2, Lfvq;

    invoke-virtual {p0, p1, p2}, Lfut;->a(Lfar;Lfvq;)V

    return-void
.end method
