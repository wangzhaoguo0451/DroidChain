.class public final Lcmb;
.super Ljava/lang/Object;
.source "AccountRegisterFragment.java"

# interfaces
.implements Lcmg;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->g(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcie;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->g(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcie;

    move-result-object v0

    iget-object v1, v0, Lcie;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcie;->b:Landroid/app/Activity;

    new-instance v2, Lcif;

    invoke-direct {v2, v0}, Lcif;-><init>(Lcie;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 505
    :cond_1
    return-void
.end method

.method public final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 509
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->g(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcie;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->g(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcie;

    move-result-object v1

    iget-boolean v0, v1, Lcie;->a:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lcie;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcie;->e:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, v1, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    iget-object v1, v1, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-static {v6, v0, v5, v1}, Lcie;->a(IIZLjava/lang/String;)V

    .line 512
    :cond_0
    :goto_0
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 515
    :cond_1
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-virtual {v0, p1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 516
    return-void

    .line 510
    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v2

    const v3, 0xf4241

    if-ne v2, v3, :cond_3

    const-string v0, "can\'t found sms"

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "account_register_type"

    const-string v4, "sms"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "account_register_status"

    const-string v4, "failed"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "account_register_failed_reason"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-static {v6, v6, v5, v0}, Lcie;->a(IIZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcie;->f:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-static {v6, v5, v5, v0}, Lcie;->a(IIZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->g(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcie;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->g(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Lcie;

    move-result-object v0

    iget-object v1, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-static {v2}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->h(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcie;->a(Landroid/content/Context;Ljava/lang/Boolean;Z)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 490
    :cond_1
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_2
    iget-object v0, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcmb;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_register_success:I

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
