.class public final Lclo;
.super Ljava/lang/Object;
.source "AccountRegisterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 624
    check-cast p1, Lcoh;

    sget v0, Lcom/wandoujia/account/R$id;->account_captcha_edit:I

    invoke-virtual {p1, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 626
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    iget-object v0, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->i(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    iget-object v0, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f:Lcmm;

    iget-object v1, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v2}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v4, v4, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v4, v4, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    iget-object v5, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v5}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->j(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcmb;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcmm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V

    .line 639
    :goto_0
    iget-object v0, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 643
    :cond_0
    iget-object v0, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v1, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-virtual {v3}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/wandoujia/account/R$string;->account_sdk_netop_submitting_register:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    .line 649
    iget-object v0, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 650
    return-void

    .line 635
    :cond_1
    iget-object v0, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f:Lcmm;

    iget-object v1, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v2, v2, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    const-string v4, "REGISTER_TAG"

    iget-object v5, p0, Lclo;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v5}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->j(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcmb;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcmm;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V

    goto :goto_0
.end method
