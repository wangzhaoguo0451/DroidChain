.class public Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PaymentRecordsAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mRecordInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/RecordItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->mRecordInfoList:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->context:Landroid/content/Context;

    .line 25
    iput p2, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->type:I

    .line 26
    return-void
.end method

.method private updateRecordItem(Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter$RecordItemViewHolder;Lcom/wandoujia/p4/pay/model/RecordItemInfo;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    iget-object v0, p2, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->price:Ljava/lang/String;

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const-string v0, "0"

    .line 81
    :goto_0
    iget-object v1, p1, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter$RecordItemViewHolder;->mRecordInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0e0686

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->gameName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p2, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->itemName:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v0, 0x3

    iget-object v5, p2, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->status:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x4

    iget-object v5, p2, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->channel:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x5

    iget-object v5, p2, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->dateString:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p1, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter$RecordItemViewHolder;->mRecordNoView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0e0687

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->wandouOrder:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->type:I

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void

    .line 76
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 77
    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    .line 78
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0e0679

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->orderInGame:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->mRecordInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/wandoujia/p4/pay/model/RecordItemInfo;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->mRecordInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->getItem(I)Lcom/wandoujia/p4/pay/model/RecordItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->newRecordItemView()Landroid/view/View;

    move-result-object p2

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter$RecordItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->getItem(I)Lcom/wandoujia/p4/pay/model/RecordItemInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->updateRecordItem(Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter$RecordItemViewHolder;Lcom/wandoujia/p4/pay/model/RecordItemInfo;)V

    .line 49
    return-object p2
.end method

.method newRecordItemView()Landroid/view/View;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030254

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter$RecordItemViewHolder;

    invoke-direct {v1, v0}, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter$RecordItemViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    return-object v0
.end method

.method public update(Ljava/util/List;Z)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/RecordItemInfo;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 53
    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->mRecordInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->mRecordInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->notifyDataSetChanged()V

    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->mRecordInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
