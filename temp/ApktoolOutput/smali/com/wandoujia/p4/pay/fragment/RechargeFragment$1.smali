.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

.field final synthetic val$payMethodList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->val$payMethodList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->val$payMethodList:[Ljava/lang/String;

    aget-object v1, v1, p3

    #setter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->selectedPayMethod:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$002(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    const-string v0, "onItemSelected"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->selectedPayMethod:Ljava/lang/String;
    invoke-static {v3}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$000(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->selectedPayMethod:Ljava/lang/String;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$000(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/model/PayChannel;->getRechargeMoneyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 154
    if-nez v4, :cond_1

    .line 155
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u3002"

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 157
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->val$payMethodList:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayMethod;->SHENZHOUPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouInput:Landroid/view/View;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$100(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->val$payMethodList:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->amountLabelText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$200(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->describe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const-string v0, "onItemSelected"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->val$payMethodList:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayMethod;->ALIPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->val$payMethodList:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayMethod;->UNIONPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 180
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const-string v3, "\u624b\u52a8\u8f93\u5165"

    aput-object v3, v0, v1

    move-object v1, v0

    :goto_2
    move v3, v2

    .line 189
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 190
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;->title:Ljava/lang/String;

    aput-object v0, v1, v2

    .line 191
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;

    iget-boolean v0, v0, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;->check:Z

    if-eqz v0, :cond_3

    .line 193
    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;

    iget-wide v6, v0, Lcom/wandoujia/p4/pay/model/PayChannel$RechargeItem;->money:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    #setter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->defaultRechargeMoney:Ljava/lang/Long;
    invoke-static {v3, v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$502(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;Ljava/lang/Long;)Ljava/lang/Long;

    move v3, v2

    .line 189
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->shenzhouInput:Landroid/view/View;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$100(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 183
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->wdbCountInput:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, v0

    goto :goto_2

    .line 197
    :cond_6
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v4, 0x7f030253

    invoke-direct {v0, v2, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 202
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 205
    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 206
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 207
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)Landroid/widget/Spinner;

    move-result-object v0

    new-instance v2, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;

    invoke-direct {v2, p0, v1}, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1$1;-><init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment$1;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0
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
    .line 232
    return-void
.end method
