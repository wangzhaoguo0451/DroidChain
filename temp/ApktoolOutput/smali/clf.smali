.class public final Lclf;
.super Ljava/lang/Object;
.source "AccountModifyProfileFragment.java"

# interfaces
.implements Lcmh;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 541
    :cond_0
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->i(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lcom/wandoujia/account/dto/Platform;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->i(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lcom/wandoujia/account/dto/Platform;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->i(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lcom/wandoujia/account/dto/Platform;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    if-ne v0, v1, :cond_2

    .line 544
    :cond_1
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v1, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->i(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lcom/wandoujia/account/dto/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/Platform;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Ljava/lang/String;)V

    .line 546
    :cond_2
    return-void
.end method

.method public final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 553
    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    const v1, 0xf424a

    if-eq v0, v1, :cond_1

    .line 554
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v1, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_bind_failure:I

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 556
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 560
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->i(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lcom/wandoujia/account/dto/Platform;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    if-ne v0, v1, :cond_1

    .line 561
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 564
    :cond_0
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v1, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget v4, Lcom/wandoujia/account/R$string;->account_sdk_bind_waiting:I

    invoke-virtual {v3, v4}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    .line 566
    iget-object v0, p0, Lclf;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 568
    :cond_1
    return-void
.end method
