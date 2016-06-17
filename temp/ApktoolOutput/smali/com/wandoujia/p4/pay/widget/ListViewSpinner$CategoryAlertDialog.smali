.class Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;
.super Ljava/lang/Object;
.source "ListViewSpinner.java"

# interfaces
.implements Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;


# instance fields
.field private builder:Landroid/app/AlertDialog$Builder;

.field private list:Landroid/widget/ListView;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/pay/widget/ListViewSpinner;Landroid/widget/ListView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->this$0:Lcom/wandoujia/p4/pay/widget/ListViewSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->builder:Landroid/app/AlertDialog$Builder;

    .line 117
    iput-object p2, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->list:Landroid/widget/ListView;

    .line 118
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 124
    :cond_0
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPrompt:Ljava/lang/CharSequence;

    .line 132
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPrompt:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 154
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 146
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    .line 147
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;->mPopup:Landroid/app/AlertDialog;

    new-instance v1, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog$1;-><init>(Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method
