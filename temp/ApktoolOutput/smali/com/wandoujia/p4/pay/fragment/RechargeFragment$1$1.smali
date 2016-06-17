.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

.field final synthetic val$rechargeMoneyList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->val$rechargeMoneyList:[Ljava/lang/String;

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
    .line 210
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeChannelSelector:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 211
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->val$payMethodList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/p4/pay/model/PayMethod;->ALIPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->val$payMethodList:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayMethod;->UNIONPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->val$rechargeMoneyList:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/Spinner;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->wdbCountInput:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->wdbCountInput:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$700(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;->this$1:Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;

    iget-object v2, v2, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->defaultRechargeMoney:Ljava/lang/Long;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
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
    .line 224
    return-void
.end method
