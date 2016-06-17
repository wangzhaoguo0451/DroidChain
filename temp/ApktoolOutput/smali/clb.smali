.class public final Lclb;
.super Ljava/lang/Object;
.source "AccountModifyProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lclb;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lclb;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->b(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v0, p0, Lclb;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lclb;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_nick_empty:I

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lclb;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_complete_failure:I

    invoke-virtual {v2, v3}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lclc;

    invoke-direct {v3}, Lclc;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 192
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lclb;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v2, p0, Lclb;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_complete_waiting:I

    invoke-virtual {v2, v3}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->b(Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcmy;

    const-string v3, "complete_profile_tag"

    iget-object v4, p0, Lclb;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v4}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->c(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lcmg;

    move-result-object v4

    iget-object v5, p0, Lclb;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v5, v5, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f:Lcmm;

    invoke-direct {v2, v0, v3, v4, v5}, Lcmy;-><init>(Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lclb;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
