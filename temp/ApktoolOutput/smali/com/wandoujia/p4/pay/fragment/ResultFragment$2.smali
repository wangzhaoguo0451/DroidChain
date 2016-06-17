.class Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;
.super Ljava/lang/Object;
.source "ResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$000(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c04ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/BalancePay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/BalancePay;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$100(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$200(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2$1;

    invoke-direct {v5, p0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment$2$1;-><init>(Lcom/wandoujia/p4/pay/fragment/ResultFragment$2;)V

    invoke-virtual/range {v0 .. v5}, Lcom/wandoujia/p4/pay/paymethod/BalancePay;->pay(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Ljava/lang/Long;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    .line 141
    return-void
.end method
