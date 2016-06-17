.class Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "ListViewSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;

.field final synthetic val$this$0:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;Lcom/wandoujia/p4/pay/widget/ListViewSpinner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup$1;->this$1:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup$1;->val$this$0:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup$1;->this$1:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;->this$0:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setSelected(Z)V

    .line 179
    return-void
.end method
