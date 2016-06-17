.class public final Lcju;
.super Ljava/lang/Object;
.source "AccountCheckVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->b(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    iget-object v1, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_verification_waiting:I

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->b(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->c(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->EMAIL:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-ne v0, v1, :cond_1

    .line 161
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcmx;

    const-string v1, "confirm"

    iget-object v2, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v2}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->d(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v3}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->c(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v4}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->e(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcjh;

    move-result-object v4

    iget-object v5, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    iget-object v5, v5, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->f:Lcmm;

    invoke-direct/range {v0 .. v5}, Lcmx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcmz;

    const-string v1, "confirm"

    iget-object v2, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v2}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->d(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v3}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->c(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v4}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->f(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-static {v5}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->e(Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;)Lcjh;

    move-result-object v5

    iget-object v6, p0, Lcju;->a:Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    iget-object v6, v6, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;->f:Lcmm;

    invoke-direct/range {v0 .. v6}, Lcmz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
