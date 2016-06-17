.class public final Lckm;
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
    .line 602
    iput-object p1, p0, Lckm;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 606
    if-eqz p1, :cond_0

    .line 607
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 609
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 610
    const-string v0, "account_button_click_type"

    const-string v2, "account_login_try_again"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v0, "unknown"

    .line 613
    iget-object v2, p0, Lckm;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v2, :cond_1

    .line 614
    iget-object v0, p0, Lckm;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 616
    :cond_1
    const-string v2, "account_source"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v0, p0, Lckm;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    iget-object v0, p0, Lckm;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 619
    return-void
.end method
