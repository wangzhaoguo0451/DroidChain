.class public final Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;
.super Ljava/lang/Object;
.source "GiftCardViewModelImpl.java"

# interfaces
.implements Lcom/wandoujia/p4/card/models/CardViewModel;


# instance fields
.field private a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

.field private b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    .line 50
    iput-object p2, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/wandoujia/mvc/Action;
    .locals 1
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_DETAIL_ITEM:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->MY_GIFT:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_2

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1
    :goto_0
    return-object v0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getProvideType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->CDKEY:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->getGiftType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->isReceived()Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0353

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getReceivedCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getRemnantCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getRemnantCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 73
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f01d7

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 76
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v3}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getRemnantCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 83
    :cond_3
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0361

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 86
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final b(Landroid/view/View;)Lcom/wandoujia/mvc/Action;
    .locals 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_LIST:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_0

    .line 132
    new-instance v0, Lftz;

    iget-object v1, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lftz;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/content/Context;)V

    .line 140
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_DETAIL_ITEM:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_1

    .line 134
    new-instance v1, Lfuj;

    iget-object v2, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lfuj;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_2

    .line 136
    new-instance v0, Lftz;

    iget-object v1, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lftz;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/content/Context;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->MY_GIFT:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_3

    .line 138
    new-instance v0, Lftz;

    iget-object v1, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lftz;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Landroid/content/Context;)V

    goto :goto_0

    .line 140
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_LIST:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->MY_GIFT:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getAppModel$7b145623()Leiu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getAppModel$7b145623()Leiu;

    move-result-object v0

    invoke-interface {v0}, Leiu;->b()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "2130838083"

    goto :goto_0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfaz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    if-eq v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
