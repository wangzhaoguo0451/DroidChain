.class Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter$RecordItemViewHolder;
.super Ljava/lang/Object;
.source "PaymentRecordsAdapter.java"


# instance fields
.field mRecordInfoView:Landroid/widget/TextView;

.field mRecordNoView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const v0, 0x7f0c04fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter$RecordItemViewHolder;->mRecordInfoView:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0c04fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter$RecordItemViewHolder;->mRecordNoView:Landroid/widget/TextView;

    .line 99
    return-void
.end method
