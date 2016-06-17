.class Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$5;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 502
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeChannelSelector:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$200(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 503
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->val$payMethodList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/pay/model/PayMethod;->ALIPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->val$payMethodList:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayMethod;->UNIONPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeMoneyList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->wdbCountInput:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->wdbCountInput:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$5$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$5;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/PayFragment$5;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getDefaultMoney()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 516
    return-void
.end method
