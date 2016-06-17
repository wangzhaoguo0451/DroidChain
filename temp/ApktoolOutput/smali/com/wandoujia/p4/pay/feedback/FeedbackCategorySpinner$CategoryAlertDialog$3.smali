.class Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;
.super Ljava/lang/Object;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 206
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0672

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    iget-object v1, v1, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0671

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mOnItemSelectedListener:Landroid/widget/ExpandableListView$OnChildClickListener;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->access$100(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mOnItemSelectedListener:Landroid/widget/ExpandableListView$OnChildClickListener;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->access$100(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v1

    const/4 v5, -0x2

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    :cond_1
    move v0, v8

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->list:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->access$300(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->list:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->access$300(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->access$200(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;->this$1:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->access$200(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 218
    :cond_3
    const/4 v8, 0x1

    .line 220
    :cond_4
    return v8
.end method
