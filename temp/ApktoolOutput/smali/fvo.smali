.class public final Lfvo;
.super Ljava/lang/Object;
.source "MyGiftCardViewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/gift/views/MyGiftCardView;",
        "Lfvq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lfut;

.field private b:Lfvq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lfbv;

    invoke-direct {v0}, Lfbv;-><init>()V

    .line 16
    new-instance v0, Lfut;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->MY_GIFT:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v0, v1}, Lfut;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    iput-object v0, p0, Lfvo;->a:Lfut;

    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/wandoujia/p4/gift/views/MyGiftCardView;

    check-cast p2, Lfvq;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfvo;->b:Lfvq;

    if-eq v0, p2, :cond_0

    iput-object p2, p0, Lfvo;->b:Lfvq;

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {p2}, Lfvq;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    iget-object v0, p0, Lfvo;->a:Lfut;

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->getButton()Lfar;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lfut;->a(Lfar;Lfvq;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->getExchangeDateTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getExchangeDateRange()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->getGiftKeyTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getCdkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->getGiftUsageTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getDirections()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-static {v0}, Lfvk;->a(Lcom/wandoujia/p4/gift/http/model/GiftModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
