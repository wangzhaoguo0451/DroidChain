.class public Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;
.super Landroid/support/v4/app/Fragment;
.source "AccountVerificationFragmentContainer.java"

# interfaces
.implements Lcjk;


# static fields
.field public static a:Lcme;


# instance fields
.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/wandoujia/account/dto/AccountVerificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 33
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/wandoujia/account/dto/AccountVerification;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_TITLE"

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 156
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_TOKEN"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v1, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;

    invoke-direct {v1}, Lcom/wandoujia/account/fragment/AccountCheckVerificationFragment;-><init>()V

    .line 160
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 161
    if-eqz p3, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->getChildFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_container_layout:I

    invoke-virtual {v0, v2, v1}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->getChildFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_container_layout:I

    invoke-virtual {v0, v2, v1}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountVerificationGroup;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->getVerifications()[Lcom/wandoujia/account/dto/AccountVerification;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    array-length v2, v1

    if-le v2, v3, :cond_2

    .line 125
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "account.intent.extra.ACCOUNT_VERIFICATION_TITLE"

    iget-object v3, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account.intent.extra.ACCOUNT_VERIFICATION_GROUP"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;

    invoke-direct {v0}, Lcom/wandoujia/account/fragment/AccountChooseVerificationFragment;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->getChildFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_container_layout:I

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->getChildFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_container_layout:I

    invoke-virtual {v1, v2, v0}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    goto :goto_0

    .line 126
    :cond_2
    array-length v2, v1

    if-ne v2, v3, :cond_0

    .line 127
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 128
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p1}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/AccountVerification;Z)V

    goto :goto_0
.end method

.method public static synthetic b()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    instance-of v1, v0, Lcjj;

    if-eqz v1, :cond_1

    .line 180
    check-cast v0, Lcjj;

    invoke-interface {v0}, Lcjj;->a()V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 183
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->d()V

    .line 191
    sget-object v0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->a:Lcme;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->a:Lcme;

    iget-object v1, v0, Lcme;->a:Lcom/wandoujia/p4/account/activity/AccountChangeActivity;

    const/16 v2, 0x193

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->setResult(I)V

    iget-object v0, v0, Lcme;->a:Lcom/wandoujia/p4/account/activity/AccountChangeActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->finish()V

    .line 194
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/account/dto/AccountVerification;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/AccountVerification;Z)V

    .line 174
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/wandoujia/account/dto/AccountVerification;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b:Ljava/util/Queue;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountVerificationGroup;

    .line 206
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->a(Z)V

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 216
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_TOKEN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 220
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->d()V

    .line 221
    sget-object v0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->a:Lcme;

    if-eqz v0, :cond_1

    .line 222
    sget-object v0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->a:Lcme;

    invoke-virtual {p2}, Lcom/wandoujia/account/dto/AccountVerification;->getMethod()Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;->EMAIL:Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    if-eq v1, v2, :cond_3

    iget-object v0, v0, Lcme;->a:Lcom/wandoujia/p4/account/activity/AccountChangeActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangeActivity;)V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcme;->a:Lcom/wandoujia/p4/account/activity/AccountChangeActivity;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;->a(Lcom/wandoujia/p4/account/activity/AccountChangeActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->c:Ljava/lang/String;

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b:Ljava/util/Queue;

    .line 73
    const-string v1, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->d:Ljava/lang/String;

    .line 74
    const-string v1, "account.intent.extra.ACCOUNT_VERIFICATION_GROUPS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 77
    :try_start_0
    check-cast v0, [Ljava/lang/Object;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_4

    array-length v1, v0

    if-lez v1, :cond_4

    array-length v6, v0

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v1, v0, v4

    check-cast v1, Lcom/wandoujia/account/dto/AccountVerificationGroup;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->getToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->getVerifications()[Lcom/wandoujia/account/dto/AccountVerification;

    move-result-object v7

    array-length v8, v7

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_3

    aget-object v9, v7, v2

    invoke-virtual {v9}, Lcom/wandoujia/account/dto/AccountVerification;->getMethod()Lcom/wandoujia/account/dto/AccountVerification$AccountVerificationMethod;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v0, Lcom/wandoujia/account/exceptions/UnsupportedAccountSdkVersion;

    invoke-direct {v0}, Lcom/wandoujia/account/exceptions/UnsupportedAccountSdkVersion;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/wandoujia/account/exceptions/UnsupportedAccountSdkVersion; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_need_update_client_error:I

    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->c:Ljava/lang/String;

    new-instance v3, Lcmc;

    invoke-direct {v3}, Lcmc;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 102
    :cond_0
    :goto_2
    return-void

    .line 77
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountVerificationGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    invoke-interface {v5, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5
    iput-object v5, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b:Ljava/util/Queue;

    .line 78
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->a(Z)V
    :try_end_1
    .catch Lcom/wandoujia/account/exceptions/UnsupportedAccountSdkVersion; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    sget v0, Lcom/wandoujia/account/R$layout;->account_sdk_verification_container:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    sput-object v0, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->a:Lcme;

    .line 239
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 240
    return-void
.end method
