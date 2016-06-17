.class Lcom/wandoujia/p4/pay/fragment/ResultFragment$1;
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
    .line 99
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/ResultFragment$1;->this$0:Lcom/wandoujia/p4/pay/fragment/ResultFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/fragment/ResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/fragment/FeedbackFragment;->showFeedback(Landroid/support/v4/app/FragmentActivity;)V

    .line 103
    return-void
.end method
