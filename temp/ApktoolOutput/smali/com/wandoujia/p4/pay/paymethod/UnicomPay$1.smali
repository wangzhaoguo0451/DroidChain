.class Lcom/wandoujia/p4/pay/paymethod/UnicomPay$1;
.super Landroid/os/Handler;
.source "UnicomPay.java"


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/paymethod/UnicomPay;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/paymethod/UnicomPay;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay$1;->this$0:Lcom/wandoujia/p4/pay/paymethod/UnicomPay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg.arg1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";msg.arg2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";msg.obj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "LianTong"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay$1;->this$0:Lcom/wandoujia/p4/pay/paymethod/UnicomPay;

    #getter for: Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->access$000(Lcom/wandoujia/p4/pay/paymethod/UnicomPay;)Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v1, p0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay$1;->this$0:Lcom/wandoujia/p4/pay/paymethod/UnicomPay;

    #getter for: Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->access$000(Lcom/wandoujia/p4/pay/paymethod/UnicomPay;)Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay$1;->this$0:Lcom/wandoujia/p4/pay/paymethod/UnicomPay;

    #getter for: Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->access$000(Lcom/wandoujia/p4/pay/paymethod/UnicomPay;)Lcom/wandoujia/p4/pay/model/PayCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onSuccess()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
