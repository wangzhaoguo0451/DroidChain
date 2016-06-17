.class public Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;
.super Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;
.source "PhoenixAccountActivity.java"

# interfaces
.implements Lcji;
.implements Lcjl;
.implements Lcjm;
.implements Lcjn;
.implements Lcjo;
.implements Lcjp;
.implements Lcjq;
.implements Lcjr;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;->a:Z

    invoke-static {v0}, Lj;->a(Z)V

    .line 92
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Lcom/wandoujia/account/AccountParams;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    sget-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

    invoke-static {v0}, Lchv;->a(Lcom/wandoujia/account/dto/Role;)Z

    invoke-static {p3, p2, p1}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Lcom/wandoujia/account/AccountParams;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Landroid/content/Context;)V

    .line 151
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v1, v0, Letz;->a:Lcmm;

    iget-object v0, v1, Lcmm;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcmm;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;->finish()V

    .line 153
    return-void

    .line 151
    :cond_1
    iget-object v0, v1, Lcmm;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcmm;->g:Landroid/os/Handler;

    new-instance v4, Lcmn;

    invoke-direct {v4, v0, p2}, Lcmn;-><init>(Ljava/lang/ref/WeakReference;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    sget-object v0, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    invoke-static {p1, v0}, Lg;->a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;

    .line 118
    return-void
.end method

.method public final a(Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;->FORGET_PASSWORD:Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;->USER_LEGAL:Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;

    if-ne p1, v0, :cond_2

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;->invalidateOptionsMenu()V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;->a:Z

    .line 97
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;->a:Z

    invoke-static {v0}, Lj;->a(Z)V

    .line 86
    return-void
.end method

.method public final b(Landroid/webkit/WebView;)V
    .locals 3
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    .line 126
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 56
    invoke-static {p0, p1, p2, p3}, Ld;->a(Landroid/support/v4/app/FragmentActivity;IILandroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->CANCEL:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lcom/wandoujia/p4/account/activity/PhoenixAccountActivity;->a(Landroid/content/Context;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Lcom/wandoujia/account/AccountParams;)V

    .line 158
    invoke-super {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onBackPressed()V

    .line 159
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ld;->a(Landroid/support/v4/app/FragmentActivity;I)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    if-eqz p0, :cond_1

    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v2

    const-class v0, Lcom/wandoujia/account/fragment/AccountFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wandoujia/account/fragment/AccountFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/fragment/AccountFragment;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/account/AccountParams;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/wandoujia/account/fragment/AccountFragment;->setArguments(Landroid/os/Bundle;)V

    sget v1, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layout must have id name of account_fragment_layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v1, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    const-string v3, "accountContainer"

    invoke-virtual {v2, v1, v0, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    invoke-virtual {v2}, Lag;->a()I

    .line 48
    :cond_1
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v1, "wdj://account/signin"

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onDestroy()V

    .line 78
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Ld;->a(Landroid/support/v4/app/FragmentActivity;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewWidgetClicked(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    return-void
.end method
