.class Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->paymentRecordsAdapter:Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$200(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->getItem(I)Lcom/wandoujia/p4/pay/model/RecordItemInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getOrderFeedbackContent(Lcom/wandoujia/p4/pay/model/RecordItemInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeeddbackContent:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackBasicInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-static {}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FeedbackTitle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeedbackBasicInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Feedback Content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentFeeddbackContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->questionedOrderSelector:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->disMiss()V

    .line 288
    return-void
.end method
