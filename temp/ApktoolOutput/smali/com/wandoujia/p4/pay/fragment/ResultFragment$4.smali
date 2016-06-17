.class Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;
.super Ljava/lang/Object;
.source "ResultFragment.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/model/CallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/p4/pay/model/CallBack",
        "<",
        "Lcom/wandoujia/p4/pay/model/OrderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 206
    const-string v0, "result"

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onSuccess(Lcom/wandoujia/p4/pay/model/OrderResult;)V
    .locals 6
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 185
    const-string v0, "result"

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/model/OrderResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 187
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e067c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v4, 0x7f0e067b

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v4, p1, Lcom/wandoujia/p4/pay/model/OrderResult;->status:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/wandoujia/p4/pay/model/OrderResult;->status:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 190
    :cond_0
    iget-object v1, p1, Lcom/wandoujia/p4/pay/model/OrderResult;->title:Ljava/lang/String;

    .line 191
    iget-object v0, p1, Lcom/wandoujia/p4/pay/model/OrderResult;->message:Ljava/lang/String;

    .line 193
    :cond_1
    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->titleView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->messageView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$000(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0c04e9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->rootView:Landroid/view/View;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$000(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0c04ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->titleView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->titleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$500(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->type:Lcom/wandoujia/p4/pay/model/PayResults;
    invoke-static {v4}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$700(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Lcom/wandoujia/p4/pay/model/PayResults;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/p4/pay/model/PayResults;->iconId()I

    move-result v4

    invoke-virtual {v1, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 199
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->messageView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$600(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->contactButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$800(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->type:Lcom/wandoujia/p4/pay/model/PayResults;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$700(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Lcom/wandoujia/p4/pay/model/PayResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/PayResults;->withContact()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/ResultFragment;->backButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->access$900(Lcom/wandoujia/p4/pay/fragment/ResultFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void

    :cond_2
    move v0, v3

    .line 200
    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    check-cast p1, Lcom/wandoujia/p4/pay/model/OrderResult;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/fragment/ResultFragment$4;->onSuccess(Lcom/wandoujia/p4/pay/model/OrderResult;)V

    return-void
.end method
