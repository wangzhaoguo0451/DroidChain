.class public final Lcke;
.super Ljava/lang/Object;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountLoginFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcke;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcke;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcke;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->d(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcke;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->d(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Landroid/widget/ImageButton;

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
    .line 441
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    return-void
.end method
