.class public final Lcki;
.super Ljava/lang/Object;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountLoginFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    new-instance v1, Lcom/wandoujia/account/AccountParams;

    const-string v2, "unknown"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    iput-object v1, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    .line 521
    :cond_0
    iget-object v0, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    iget-object v1, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v2, v2, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    const-string v3, ""

    const-string v4, "REGISTER_TAG"

    iget-object v5, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v5}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->g(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcjh;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcmm;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V

    .line 524
    iget-object v0, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 528
    :cond_1
    iget-object v0, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v1, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {v3}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/wandoujia/account/R$string;->account_sdk_netop_submitting_register:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    .line 534
    iget-object v0, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 535
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 536
    const-string v0, "account_button_click_type"

    const-string v2, "account_login_register"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v0, "unknown"

    .line 539
    iget-object v2, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v2, :cond_2

    .line 540
    iget-object v0, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 542
    :cond_2
    const-string v2, "account_source"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    iget-object v0, p0, Lcki;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 545
    return-void
.end method
