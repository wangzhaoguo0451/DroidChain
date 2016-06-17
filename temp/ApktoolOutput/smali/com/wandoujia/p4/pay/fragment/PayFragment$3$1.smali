.class Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

.field final synthetic val$money:Ljava/lang/Long;

.field final synthetic val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3;Lcom/wandoujia/p4/pay/model/PayMethod;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    iput-object p3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$money:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 225
    const-string v0, "payMethod"

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/PayMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$money:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getRechargeOrder(Ljava/lang/Long;)Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->payImpl:Lcom/wandoujia/p4/pay/PayImpl;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Lcom/wandoujia/p4/pay/PayImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$payMethod:Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/model/PayMethod;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->val$money:Ljava/lang/Long;

    new-instance v4, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;

    invoke-direct {v4, p0, v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$1;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;Lcom/wandoujia/p4/pay/model/WandouOrder;)V

    new-instance v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$2;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$2;-><init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;)V

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/wandoujia/p4/pay/PayImpl;->rechargePay(Ljava/lang/String;Ljava/lang/Long;Lagu;Lagt;)V

    .line 316
    return-void
.end method
