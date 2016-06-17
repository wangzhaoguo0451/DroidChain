.class public Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;
.super Landroid/widget/LinearLayout;
.source "ExtensionPackMetaDataView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;
    .locals 1
    .parameter

    .prologue
    .line 37
    sget v0, Lcom/wandoujia/launcher_base/R$layout;->aa_extension_pack_select:I

    invoke-static {p0, v0}, Lehx;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    sget v0, Lcom/wandoujia/launcher_base/R$id;->extension_radioButton:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->b:Landroid/widget/RadioButton;

    .line 61
    sget v0, Lcom/wandoujia/launcher_base/R$id;->extension_textview:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->a:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->b:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 64
    return-void
.end method

.method public setCheckState(Z)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 55
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->b:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/wandoujia/launcher_base/view/dialog/ExtensionPackMetaDataView;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    return-void
.end method
