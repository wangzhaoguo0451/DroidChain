.class public Lcom/wandoujia/p4/account/activity/AccountVerificationActivity;
.super Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;
.source "AccountVerificationActivity.java"

# interfaces
.implements Lcjj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountVerificationActivity;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountVerificationActivity;->finish()V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f03007d

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountVerificationActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountVerificationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string v0, "account.intent.extra.ACCOUNT_VERIFICATION_TITLE"

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "account.intent.extra.ACCOUNT_VERIFICATION_TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account.intent.extra.ACCOUNT_VERIFICATION_GROUPS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 31
    const-string v2, "account.intent.extra.ACCOUNT_VERIFICATION_GROUPS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 32
    new-instance v0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;

    invoke-direct {v0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;-><init>()V

    .line 33
    const-string v2, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-static {}, Letz;->a()Letz;

    move-result-object v3

    iget-object v3, v3, Letz;->a:Lcmm;

    invoke-virtual {v3}, Lcmm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Letz;->a()Letz;

    move-result-object v2

    iget-object v2, v2, Letz;->a:Lcmm;

    invoke-static {v2}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a(Lcmm;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountVerificationActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x7f0c01ee

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 40
    return-void
.end method
