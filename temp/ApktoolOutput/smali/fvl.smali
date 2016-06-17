.class public final Lfvl;
.super Ljava/lang/Object;
.source "GiftCardViewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;
.implements Lfvj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/views/ExtraDescCardView;",
        "Lfvq;",
        ">;",
        "Lfvj;"
    }
.end annotation


# instance fields
.field private a:Lfvq;

.field private b:Lfut;

.field private c:Lcom/wandoujia/p4/views/ExtraDescCardView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lfbv;

    invoke-direct {v0}, Lfbv;-><init>()V

    .line 28
    new-instance v0, Lfut;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_LIST:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v0, v1}, Lfut;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    iput-object v0, p0, Lfvl;->b:Lfut;

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/gift/http/model/GiftModel;)V
    .locals 4
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lfvl;->c:Lcom/wandoujia/p4/views/ExtraDescCardView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/ExtraDescCardView;->getCardView()Lfca;

    move-result-object v0

    iget-object v1, p0, Lfvl;->a:Lfvq;

    invoke-virtual {v1}, Lfvq;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    .line 65
    iget-object v0, p0, Lfvl;->b:Lfut;

    iget-object v1, p0, Lfvl;->c:Lcom/wandoujia/p4/views/ExtraDescCardView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/views/ExtraDescCardView;->getButton()Lfar;

    move-result-object v1

    new-instance v2, Lfvq;

    sget-object v3, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_LIST:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v2, p1, v3}, Lfvq;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    invoke-virtual {v0, v1, v2}, Lfut;->a(Lfar;Lfvq;)V

    .line 68
    iget-object v0, p0, Lfvl;->a:Lfvq;

    iget-object v0, v0, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-static {v0}, Lfvk;->a(Lcom/wandoujia/p4/gift/http/model/GiftModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lfvl;->c:Lcom/wandoujia/p4/views/ExtraDescCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/views/ExtraDescCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 22
    check-cast p1, Lcom/wandoujia/p4/views/ExtraDescCardView;

    check-cast p2, Lfvq;

    iget-object v0, p0, Lfvl;->a:Lfvq;

    if-eq v0, p2, :cond_2

    iput-object p2, p0, Lfvl;->a:Lfvq;

    iput-object p1, p0, Lfvl;->c:Lcom/wandoujia/p4/views/ExtraDescCardView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/views/ExtraDescCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {p2}, Lfvq;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    iget-object v0, p0, Lfvl;->b:Lfut;

    invoke-virtual {p1}, Lcom/wandoujia/p4/views/ExtraDescCardView;->getButton()Lfar;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lfut;->a(Lfar;Lfvq;)V

    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/p4/views/ExtraDescCardView;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->CDKEY:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/p4/views/ExtraDescCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {v0}, Lfca;->a()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-static {}, Lfvh;->a()Lfvh;

    move-result-object v0

    iget-object v1, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lfvh;->a(JLfvj;)V

    iget-object v0, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-static {v0}, Lfvk;->a(Lcom/wandoujia/p4/gift/http/model/GiftModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/views/ExtraDescCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
