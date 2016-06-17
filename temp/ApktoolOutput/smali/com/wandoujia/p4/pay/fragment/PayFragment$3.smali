.class Lcom/wandoujia/p4/pay/fragment/PayFragment$3;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeChannelSelector:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$200(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_5

    .line 200
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 201
    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getRechargeMoneyList(Lcom/wandoujia/p4/pay/model/PayMethod;)Ljava/util/List;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 204
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->rechargeAmountSelector:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/RechargeMoney;

    .line 206
    const-string v2, "rechargePay"

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/RechargeMoney;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, v0, Lcom/wandoujia/p4/pay/model/RechargeMoney;->money:Ljava/lang/Long;

    .line 216
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 217
    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBalance()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 219
    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setNeedRechargeMoney(Ljava/lang/Long;)V

    .line 220
    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setChoseMoney(Ljava/lang/Long;)V

    .line 221
    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5373\u5c06\u652f\u4ed8\u4eba\u6c11\u5e01 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v5}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/wandoujia/p4/pay/PayImpl;->showMoney(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Ldxa;->b:I

    int-to-long v6, v5

    invoke-static {v3, v4, v6, v7}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v3

    invoke-virtual {v3}, Ldxa;->a()V

    .line 222
    new-instance v3, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3;Lcom/wandoujia/p4/pay/model/PayMethod;Ljava/lang/Long;)V

    .line 318
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 319
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u91d1\u989d"

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->toast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V

    .line 341
    :cond_1
    :goto_1
    return-void

    .line 209
    :cond_2
    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->wdbCountInput:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->wdbCountInput:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->wdbCountInput:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 321
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    new-instance v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$2;

    invoke-direct {v1, p0, v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$2;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3;Ljava/lang/Runnable;)V

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->confirmMoneyNotEnough(Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1600(Lcom/wandoujia/p4/pay/fragment/PayFragment;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 329
    :cond_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 334
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v4

    .line 337
    :goto_2
    const-string v0, "BALANCEPAY"

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getMoneyInFen()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/LogEvent;->doPay(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/BalancePay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/BalancePay;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->currentOrder:Lcom/wandoujia/p4/pay/model/WandouOrder;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1700(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->balancePayPasswordInput:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1800(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->paymentCallback:Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;
    invoke-static {v5}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1400(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/fragment/PayFragment$PaymentCallback;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/wandoujia/p4/pay/paymethod/BalancePay;->pay(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Ljava/lang/Long;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    goto/16 :goto_1

    .line 334
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getBonusMoney()Ljava/lang/Long;

    move-result-object v4

    goto :goto_2
.end method
