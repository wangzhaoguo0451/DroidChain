.class Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;
.super Landroid/widget/PopupWindow;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;


# instance fields
.field private list:Landroid/widget/ExpandableListView;

.field private mHintText:Ljava/lang/CharSequence;

.field private parent:Landroid/view/View;

.field final synthetic this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    .line 232
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 233
    iput-object p2, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->parent:Landroid/view/View;

    .line 235
    new-instance v0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup$1;-><init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 242
    return-void
.end method

.method static synthetic access$500(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->list:Landroid/widget/ExpandableListView;

    return-object v0
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
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
    .line 246
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->parent:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->list:Landroid/widget/ExpandableListView;

    .line 247
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v6, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->list:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropDownAdapter;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    iget-object v4, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->list:Landroid/widget/ExpandableListView;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropDownAdapter;-><init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;Ljava/util/List;Ljava/util/List;Landroid/widget/ExpandableListView;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 249
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->list:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup$2;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup$2;-><init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->list:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup$3;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup$3;-><init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 282
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 290
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->setWidth(I)V

    .line 295
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->setHeight(I)V

    .line 296
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->setFocusable(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->update()V

    .line 298
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->this$0:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;->showAsDropDown(Landroid/view/View;)V

    .line 301
    return-void
.end method
