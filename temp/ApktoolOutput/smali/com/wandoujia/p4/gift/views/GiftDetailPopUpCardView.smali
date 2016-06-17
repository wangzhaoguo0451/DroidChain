.class public Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "GiftDetailPopUpCardView.java"


# instance fields
.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/wandoujia/p4/button/views/StatefulButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public static a(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 79
    :try_start_0
    invoke-static {p1}, Lcom/wandoujia/p4/views/CommonPopupView;->a(Landroid/app/Activity;)Lcom/wandoujia/p4/views/CommonPopupView;

    move-result-object v1

    .line 80
    const v0, 0x7f0300a5

    invoke-static {v1, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;

    .line 82
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/wandoujia/p4/views/CommonPopupView;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 84
    new-instance v2, Lfvn;

    invoke-direct {v2}, Lfvn;-><init>()V

    .line 86
    new-instance v3, Lfvq;

    sget-object v4, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_POP_UP:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v3, p0, v4}, Lfvq;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    invoke-virtual {v2, v0, v3}, Lfvn;->a(Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;Lfvq;)V

    .line 92
    invoke-virtual {v1}, Lcom/wandoujia/p4/views/CommonPopupView;->a()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getExchangeDateTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public getGiftKeyContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->k:Landroid/view/View;

    return-object v0
.end method

.method public getGiftKeyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public getGiftUsageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOpenGiftKeyButton()Lcom/wandoujia/p4/button/views/StatefulButton;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->m:Lcom/wandoujia/p4/button/views/StatefulButton;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 43
    const v0, 0x7f0c0272

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->i:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c0274

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->j:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0c026e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->k:Landroid/view/View;

    .line 46
    const v0, 0x7f0c026f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->l:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0c0270

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/GiftDetailPopUpCardView;->m:Lcom/wandoujia/p4/button/views/StatefulButton;

    .line 49
    return-void
.end method
