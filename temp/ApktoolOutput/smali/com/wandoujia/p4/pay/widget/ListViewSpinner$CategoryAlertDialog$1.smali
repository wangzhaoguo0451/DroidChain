.class Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog$1;
.super Ljava/lang/Object;
.source "ListViewSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog$1;->this$1:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog$1;->this$1:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;

    iget-object v0, v0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setSelected(Z)V

    .line 151
    return-void
.end method
