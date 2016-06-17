.class Lcom/wandoujia/p4/pay/fragment/PayFragment$7;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Lagt;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$7;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$7;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$7;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0453

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$7;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #calls: Lcom/wandoujia/p4/pay/fragment/PayFragment;->toast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$1000(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V

    .line 545
    :cond_0
    return-void
.end method
