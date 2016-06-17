.class public Lcom/wandoujia/p4/gift/views/MyGiftCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "MyGiftCardView.java"


# instance fields
.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/gift/views/MyGiftCardView;
    .locals 1
    .parameter

    .prologue
    .line 26
    const v0, 0x7f0300ab

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/views/MyGiftCardView;

    return-object v0
.end method


# virtual methods
.method public getExchangeDateTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public getGiftKeyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public getGiftUsageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 33
    const v0, 0x7f0c0272

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->i:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f0c0274

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->j:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0c026f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/views/MyGiftCardView;->k:Landroid/widget/TextView;

    .line 36
    return-void
.end method
