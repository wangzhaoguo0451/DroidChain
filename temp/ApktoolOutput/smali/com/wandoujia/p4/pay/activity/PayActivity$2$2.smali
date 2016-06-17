.class Lcom/wandoujia/p4/pay/activity/PayActivity$2$2;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Lagt;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/activity/PayActivity$2;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/activity/PayActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2$2;->this$1:Lcom/wandoujia/p4/pay/activity/PayActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    invoke-static {}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$300()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VolleyError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2$2;->this$1:Lcom/wandoujia/p4/pay/activity/PayActivity$2;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #getter for: Lcom/wandoujia/p4/pay/activity/PayActivity;->activity:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$100(Lcom/wandoujia/p4/pay/activity/PayActivity;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wandoujia/p4/pay/utils/ActivityUtil;->showErrorMessage(Landroid/content/Context;Lcom/android/volley/VolleyError;)V

    .line 177
    iget-object v0, p0, Lcom/wandoujia/p4/pay/activity/PayActivity$2$2;->this$1:Lcom/wandoujia/p4/pay/activity/PayActivity$2;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/activity/PayActivity$2;->this$0:Lcom/wandoujia/p4/pay/activity/PayActivity;

    #calls: Lcom/wandoujia/p4/pay/activity/PayActivity;->failToPay()V
    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/PayActivity;->access$200(Lcom/wandoujia/p4/pay/activity/PayActivity;)V

    .line 178
    return-void
.end method
