.class public final Lckj;
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
    .line 546
    iput-object p1, p0, Lckj;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 549
    if-eqz p1, :cond_0

    .line 550
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 552
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 553
    const-string v0, "account_button_click_type"

    const-string v2, "account_login_cancel"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string v0, "unknown"

    .line 556
    iget-object v2, p0, Lckj;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v2, :cond_1

    .line 557
    iget-object v0, p0, Lckj;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 559
    :cond_1
    const-string v2, "account_source"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lckj;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    iget-object v0, p0, Lckj;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 562
    return-void
.end method
