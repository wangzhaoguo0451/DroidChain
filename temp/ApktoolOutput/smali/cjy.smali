.class public final Lcjy;
.super Ljava/lang/Object;
.source "AccountChooseVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcjy;->a:Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcjy;->a:Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->a(Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 105
    iget-object v1, p0, Lcjy;->a:Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;

    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->b(Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerificationGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcjy;->a:Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;

    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->b(Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerificationGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcjy;->a:Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;

    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->b(Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerificationGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->getVerifications()[Lcom/wandoujia/account/dto/AccountVerification;

    move-result-object v1

    aget-object v1, v1, v0

    .line 108
    iget-object v0, p0, Lcjy;->a:Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcjk;

    iget-object v2, p0, Lcjy;->a:Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;

    invoke-static {v2}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;->b(Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;)Lcom/wandoujia/account/dto/AccountVerificationGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcjk;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/AccountVerification;)V

    .line 110
    :cond_0
    return-void
.end method
