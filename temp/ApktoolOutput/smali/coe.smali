.class public final Lcoe;
.super Ljava/lang/Object;
.source "AvatarUtils.java"


# instance fields
.field public synthetic a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 442
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_avatar_upload_failed:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 445
    :cond_3
    iget-object v0, p0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
