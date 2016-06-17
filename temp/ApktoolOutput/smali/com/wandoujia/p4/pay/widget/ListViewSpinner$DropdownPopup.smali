.class Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;
.super Landroid/widget/PopupWindow;
.source "ListViewSpinner.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;


# instance fields
.field private listView:Landroid/widget/ListView;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/pay/widget/ListViewSpinner;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->this$0:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    .line 172
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 173
    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->listView:Landroid/widget/ListView;

    .line 175
    new-instance v0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup$1;-><init>(Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;Lcom/wandoujia/p4/pay/widget/ListViewSpinner;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 182
    return-void
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 190
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->this$0:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->setWidth(I)V

    .line 195
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->setHeight(I)V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->setFocusable(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->update()V

    .line 198
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->this$0:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->showAsDropDown(Landroid/view/View;)V

    .line 200
    return-void
.end method
