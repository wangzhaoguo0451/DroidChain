.class Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/loader/Fetcher$FetchCallback;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFetch(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->loadRecords(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFetched(Ljava/lang/String;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->getRecordList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentRecordList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$502(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;Ljava/util/List;)Ljava/util/List;

    .line 303
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentRecordList:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentRecordList:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostFetch(Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->paymentRecordsAdapter:Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$200(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->currentRecordList:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;)Ljava/util/List;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/p4/pay/adapter/PaymentRecordsAdapter;->update(Ljava/util/List;Z)I

    .line 313
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
