.class public final Lclh;
.super Ljava/lang/Object;
.source "AccountRegisterFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lclh;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lclh;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lclh;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lclh;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    return-void
.end method
