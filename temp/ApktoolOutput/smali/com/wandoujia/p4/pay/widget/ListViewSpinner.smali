.class public Lcom/wandoujia/p4/pay/widget/ListViewSpinner;
.super Landroid/widget/TextView;
.source "ListViewSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPopup:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->initView(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->initView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->initView(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->context:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 68
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 69
    new-instance v1, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;

    invoke-direct {v1, p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$CategoryAlertDialog;-><init>(Lcom/wandoujia/p4/pay/widget/ListViewSpinner;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->mPopup:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;

    .line 73
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setClickable(Z)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setSelected(Z)V

    .line 75
    invoke-virtual {p0, p0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void

    .line 71
    :cond_0
    new-instance v1, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;

    invoke-direct {v1, p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$DropdownPopup;-><init>(Lcom/wandoujia/p4/pay/widget/ListViewSpinner;Landroid/view/View;)V

    iput-object v1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->mPopup:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;

    goto :goto_0
.end method


# virtual methods
.method public disMiss()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->mPopup:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;->dismiss()V

    .line 46
    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->mPopup:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->disMiss()V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 224
    :cond_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->show()V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->mPopup:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;

    invoke-interface {v0, p1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 54
    return-void
.end method

.method public setCustomOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 58
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->mPopup:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;

    invoke-interface {v0, p1}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->mPopup:Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner$ListPopup;->show()V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/pay/widget/ListViewSpinner;->setSelected(Z)V

    .line 42
    return-void
.end method
