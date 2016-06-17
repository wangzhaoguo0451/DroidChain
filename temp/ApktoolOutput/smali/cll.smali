.class public final Lcll;
.super Ljava/lang/Object;
.source "AccountRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcll;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 413
    if-eqz p2, :cond_0

    .line 414
    iget-object v0, p0, Lcll;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_password_least_length:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setHint(I)V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcll;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_password_hint:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/widget/AccountEditText;->setHint(I)V

    goto :goto_0
.end method
