.class Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$2;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Lagt;


# instance fields
.field final synthetic this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$2;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$2;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1$2;->this$2:Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$1;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wandoujia/p4/pay/utils/ActivityUtil;->showErrorMessage(Landroid/content/Context;Lcom/android/volley/VolleyError;)V

    .line 314
    :cond_0
    return-void
.end method
