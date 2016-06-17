.class Lcom/wandoujia/p4/pay/fragment/PayFragment$1;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->otherPaymentsPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$000(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->payButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$100(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    :cond_0
    return-void

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    return-void
.end method
