.class Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$1;
.super Ljava/lang/Object;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$1;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$1;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->setSelected(Z)V

    .line 180
    return-void
.end method
