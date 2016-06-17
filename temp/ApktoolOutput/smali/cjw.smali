.class public final Lcjw;
.super Landroid/os/CountDownTimer;
.source "AccountCheckVerificationFragment.java"


# instance fields
.field private synthetic a:Landroid/support/v4/app/Fragment;

.field private synthetic b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;Landroid/support/v4/app/Fragment;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    iput-object p2, p0, Lcjw;->a:Landroid/support/v4/app/Fragment;

    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->c(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->EMAIL:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_2

    .line 240
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->g(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcjw;->a:Landroid/support/v4/app/Fragment;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verification_email_resend_complete:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->g(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 247
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->g(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$color;->account_sdk_holo_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    :cond_1
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->c(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->SMS:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->g(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcjw;->a:Landroid/support/v4/app/Fragment;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verification_tel_resend_complete:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onTick(J)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 221
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->c(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->EMAIL:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->g(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcjw;->a:Landroid/support/v4/app/Fragment;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verification_email_resend_hint:I

    new-array v3, v3, [Ljava/lang/Object;

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->c(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->SMS:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->g(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcjw;->a:Landroid/support/v4/app/Fragment;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verification_tel_resend_hint:I

    new-array v3, v3, [Ljava/lang/Object;

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcjw;->b:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->h(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)V

    goto :goto_0
.end method
