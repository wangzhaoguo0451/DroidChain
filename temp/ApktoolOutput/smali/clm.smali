.class public final Lclm;
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
    .line 592
    iput-object p1, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 596
    const-string v1, "account_username_duplicated"

    const-string v2, "account_login"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object v0, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->f:Lcmm;

    iget-object v0, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 601
    iget-object v0, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b:Landroid/os/Bundle;

    .line 604
    :cond_0
    iget-object v0, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-nez v0, :cond_1

    .line 605
    iget-object v0, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    new-instance v1, Lcom/wandoujia/account/AccountParams;

    const-string v2, "unknown"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    iput-object v1, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    .line 607
    :cond_1
    iget-object v0, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->d:Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b:Landroid/os/Bundle;

    const-string v1, "account.intent.extra.ACCOUNT_PARAMS"

    iget-object v2, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 609
    iget-object v0, p0, Lclm;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->d(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V

    .line 610
    return-void
.end method
