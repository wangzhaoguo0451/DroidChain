.class Lcom/wandoujia/p4/pay/activity/PayActivity$1;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/fragment/QuitDialogFragment$OnQuitCallback;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/activity/PayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$1;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onConfirmed()Z
    .locals 7

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$1;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/PayActivity;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$000(Lcom/wandoujia/p4/pay/activity/PayActivity;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/WandouOrder;->toJSONString()Ljava/lang/String;

    move-result-object v5

    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$1;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$100(Lcom/wandoujia/p4/pay/activity/PayActivity;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$1;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$100(Lcom/wandoujia/p4/pay/activity/PayActivity;)Landroid/support/v4/app/FragmentActivity;

    const/4 v1, -0x1

    sget-object v2, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->PAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    invoke-static {}, Lcom/wandoujia/p4/pay/PayImpl;->getFinishStatus()Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/p4/pay/PayImpl;->getFinishStatus()Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper;->invoke(Landroid/app/Activity;ILcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method
