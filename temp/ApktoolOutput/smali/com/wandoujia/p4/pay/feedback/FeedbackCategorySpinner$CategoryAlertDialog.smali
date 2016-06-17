.class Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;
.super Ljava/lang/Object;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;


# instance fields
.field private list:Landroid/widget/ExpandableListView;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->list:Landroid/widget/ExpandableListView;

    .line 147
    return-void
.end method

.method static synthetic access$200(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->list:Landroid/widget/ExpandableListView;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    .line 152
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v6, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->list:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropDownAdapter;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    iget-object v4, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->list:Landroid/widget/ExpandableListView;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropDownAdapter;-><init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;Ljava/util/List;Ljava/util/List;Landroid/widget/ExpandableListView;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 190
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->list:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$2;-><init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->list:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$3;-><init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 223
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPrompt:Ljava/lang/CharSequence;

    .line 160
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->access$000(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 184
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->access$002(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 174
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->access$000(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->list:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 175
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    #getter for: Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->access$000(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    .line 176
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    new-instance v1, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog$1;-><init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method
