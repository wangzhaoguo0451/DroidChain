.class public Lcom/wandoujia/account/fragment/AccountFragment;
.super Lcom/wandoujia/account/fragment/AccountBaseFragment;
.source "AccountFragment.java"


# instance fields
.field private q:Landroid/view/View;

.field private r:Landroid/app/ProgressDialog;

.field private s:Lcom/wandoujia/account/AccountParams;

.field private t:Ljava/lang/String;

.field private final u:Lcmg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;-><init>()V

    .line 38
    new-instance v0, Lcjh;

    invoke-direct {v0, p0}, Lcjh;-><init>(Lcom/wandoujia/account/fragment/AccountBaseFragment;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->u:Lcmg;

    .line 84
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/account/fragment/AccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->f()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->s:Lcom/wandoujia/account/AccountParams;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->s:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 72
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->EMAIL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    if-ne v1, v0, :cond_2

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->h()V

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    if-ne v1, v0, :cond_3

    .line 77
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->g()V

    goto :goto_0

    .line 78
    :cond_3
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->FORGET_PASSWORD:Lcom/wandoujia/account/AccountParams$Page;

    if-ne v1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->s:Lcom/wandoujia/account/AccountParams;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/AccountFragment;->t:Ljava/lang/String;

    const-string v2, "http://www.wandoujia.com/account/?source=p3%s#find"

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_forget_password_title:I

    invoke-virtual {p0, v3}, Lcom/wandoujia/account/fragment/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/account/fragment/WebViewFragment;->a(Lcom/wandoujia/account/AccountParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/account/fragment/WebViewFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    const-string v3, "forgetPassword"

    invoke-virtual {v1, v2, v0, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    invoke-virtual {v1}, Lag;->a()I

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcmm;->a(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    const-string v1, ""

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountFragment;->u:Lcmg;

    invoke-virtual {v0, v1, v2}, Lcmm;->a(Ljava/lang/String;Lcmg;)V

    .line 154
    return-void
.end method

.method private declared-synchronized f()V
    .locals 3

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->i()V

    .line 166
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c(Ljava/lang/String;)Lcmm;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    .line 167
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    const-string v1, "account_sso_result"

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "account_sso_operation"

    const-string v2, "account_sso_unlogin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_4

    .line 178
    const-string v1, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountParams;

    .line 179
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    if-ne v0, v1, :cond_3

    .line 180
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 182
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->h()V

    goto :goto_0

    .line 185
    :cond_4
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->b()Ls;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->b()Ls;

    move-result-object v0

    const-string v2, "login"

    invoke-virtual {v0, v2}, Ls;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->b()Ls;

    move-result-object v2

    invoke-virtual {v2}, Ls;->e()I

    move-result v2

    if-lez v2, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->b()Ls;

    move-result-object v2

    invoke-virtual {v2}, Ls;->d()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 213
    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountLoginFragment;

    move-result-object v0

    .line 216
    :cond_1
    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->b()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    .line 218
    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    const-string v3, "login"

    invoke-virtual {v1, v2, v0, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    .line 220
    invoke-virtual {v1}, Lag;->b()I

    .line 223
    :cond_2
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 227
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->b()Ls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->b()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v2

    .line 230
    if-eqz v1, :cond_2

    .line 231
    const-string v0, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountParams;

    .line 232
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->p:Lcom/wandoujia/account/AccountErrorResponse;

    if-eqz v0, :cond_1

    .line 233
    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    move-result-object v0

    .line 240
    :goto_0
    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    sget v1, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    const-string v3, "register"

    invoke-virtual {v2, v1, v0, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    .line 243
    invoke-virtual {v2}, Lag;->b()I

    .line 246
    :cond_0
    return-void

    .line 235
    :cond_1
    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_2
    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->a(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    move-result-object v0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->r:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    return-void
.end method

.method protected final b(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 4
    .parameter

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->i()V

    .line 302
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c(Ljava/lang/String;)Lcmm;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    const-string v1, "account_sso_result"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v1, "account_sso_operation"

    const-string v2, "account_sso_completed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 316
    :cond_1
    if-eqz p1, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_login_failure:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcka;

    invoke-direct {v3}, Lcka;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 342
    :goto_0
    return-void

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_netop_server_error:I

    invoke-virtual {p0, v1}, Lcom/wandoujia/account/fragment/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_login_failure:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lckb;

    invoke-direct {v3}, Lckb;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto :goto_0
.end method

.method protected final c()V
    .locals 4

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->i()V

    .line 279
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c(Ljava/lang/String;)Lcmm;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->p:Lcji;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->p:Lcji;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->CANCEL:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    iget-object v3, p0, Lcom/wandoujia/account/fragment/AccountFragment;->s:Lcom/wandoujia/account/AccountParams;

    invoke-interface {v0, v1, v2, v3}, Lcji;->a(Landroid/content/Context;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Lcom/wandoujia/account/AccountParams;)V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    if-eqz v0, :cond_2

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 290
    const-string v1, "account_sso_result"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "account_sso_operation"

    const-string v2, "account_sso_completed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 297
    :cond_2
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->i()V

    .line 258
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->p:Lcji;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->p:Lcji;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    iget-object v3, p0, Lcom/wandoujia/account/fragment/AccountFragment;->s:Lcom/wandoujia/account/AccountParams;

    invoke-interface {v0, v1, v2, v3}, Lcji;->a(Landroid/content/Context;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Lcom/wandoujia/account/AccountParams;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c(Ljava/lang/String;)Lcmm;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    if-eqz v0, :cond_2

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    const-string v1, "account_sso_result"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "account_sso_operation"

    const-string v2, "account_sso_completed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 275
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/AccountFragment;->setHasOptionsMenu(Z)V

    .line 44
    sget v0, Lcom/wandoujia/account/R$layout;->account_sdk_main_activity:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->q:Landroid/view/View;

    .line 46
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_9

    .line 48
    const-string v0, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountParams;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->s:Lcom/wandoujia/account/AccountParams;

    .line 49
    const-string v0, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->t:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->s:Lcom/wandoujia/account/AccountParams;

    if-eqz v0, :cond_8

    .line 51
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->s:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->s:Lcom/wandoujia/account/AccountParams$Type;

    .line 52
    sget-object v1, Lcom/wandoujia/account/AccountParams$Type;->PHOENIX:Lcom/wandoujia/account/AccountParams$Type;

    if-ne v0, v1, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->d()V

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->q:Landroid/view/View;

    return-object v0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->r:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->r:Landroid/app/ProgressDialog;

    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_netop_submitting_login:I

    invoke-virtual {p0, v2}, Lcom/wandoujia/account/fragment/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->r:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcia;

    invoke-direct {v0, p0}, Lcia;-><init>(Lcom/wandoujia/account/fragment/AccountFragment;)V

    invoke-static {v0}, Lchv;->a(Lcia;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c(Ljava/lang/String;)Lcmm;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    :cond_4
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->f:Lcmm;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "account_sso_result"

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "account_sso_operation"

    const-string v2, "account_sso_not_support"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    :cond_5
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountParams;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->s:Lcom/wandoujia/account/AccountParams;

    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->d()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->h()V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->e()V

    goto/16 :goto_0

    .line 58
    :cond_8
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->h()V

    goto/16 :goto_0

    .line 61
    :cond_9
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountFragment;->h()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->r:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountFragment;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 349
    :cond_0
    invoke-super {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->onDestroy()V

    .line 350
    return-void
.end method
