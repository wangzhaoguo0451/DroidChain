.class Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$2;
.super Ljava/lang/Object;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$2;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$2;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mOnItemSelectedListener:Landroid/widget/ExpandableListView$OnChildClickListener;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->access$100(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$2;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mOnItemSelectedListener:Landroid/widget/ExpandableListView$OnChildClickListener;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->access$100(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$2;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->access$200(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$2;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->access$200(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 200
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
