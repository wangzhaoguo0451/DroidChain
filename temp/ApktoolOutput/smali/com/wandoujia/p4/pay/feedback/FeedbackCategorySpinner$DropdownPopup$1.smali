.class Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;

.field final synthetic val$this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup$1;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup$1;->val$this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup$1;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->setSelected(Z)V

    .line 239
    return-void
.end method
