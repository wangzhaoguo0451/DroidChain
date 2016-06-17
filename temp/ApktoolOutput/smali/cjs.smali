.class public final Lcjs;
.super Ljava/lang/Object;
.source "AccountBaseFragment.java"

# interfaces
.implements Lcmh;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountBaseFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 316
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    .line 317
    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v1, v1, Lcom/wandoujia/account/fragment/AccountBaseFragment;->g:Lcom/wandoujia/account/dto/Platform;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v1, v1, Lcom/wandoujia/account/fragment/AccountBaseFragment;->g:Lcom/wandoujia/account/dto/Platform;

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->SINA_LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 321
    const-string v2, "account_login_type"

    const-string v3, "account_sina_login"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v2, "account_login_status"

    const-string v3, "success"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v2, "account_login_src"

    iget-object v3, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v3, v3, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v3, v3, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v1, v1, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 350
    :cond_0
    :goto_0
    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v1, v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a(Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;)V

    .line 351
    return-void

    .line 328
    :cond_1
    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v1, v1, Lcom/wandoujia/account/fragment/AccountBaseFragment;->g:Lcom/wandoujia/account/dto/Platform;

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->QQ_LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    .line 330
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 331
    const-string v2, "account_login_type"

    const-string v3, "account_qq_login"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, "account_login_status"

    const-string v3, "success"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v2, "account_login_src"

    iget-object v3, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v3, v3, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v3, v3, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v1, v1, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    goto :goto_0

    .line 338
    :cond_2
    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v1, v1, Lcom/wandoujia/account/fragment/AccountBaseFragment;->g:Lcom/wandoujia/account/dto/Platform;

    sget-object v2, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v1, v2}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->RENREN_LOGIN:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    .line 340
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 341
    const-string v2, "account_login_type"

    const-string v3, "account_renren_login"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v2, "account_login_status"

    const-string v3, "success"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v2, "account_login_src"

    iget-object v3, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v3, v3, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v3, v3, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v1, v1, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->g:Lcom/wandoujia/account/dto/Platform;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 360
    const-string v1, "account_login_type"

    const-string v2, "account_sina_login"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v1, "account_login_status"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "account_login_src"

    iget-object v2, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v2, v2, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 384
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    const v1, 0xf424a

    if-ne v0, v1, :cond_5

    .line 389
    :cond_2
    :goto_1
    return-void

    .line 366
    :cond_3
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->g:Lcom/wandoujia/account/dto/Platform;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 368
    const-string v1, "account_login_type"

    const-string v2, "account_qq_login"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "account_login_status"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v1, "account_login_src"

    iget-object v2, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v2, v2, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    goto :goto_0

    .line 375
    :cond_4
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->g:Lcom/wandoujia/account/dto/Platform;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v0, v1}, Lcom/wandoujia/account/dto/Platform;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 377
    const-string v1, "account_login_type"

    const-string v2, "account_renren_login"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v1, "account_login_status"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "account_login_src"

    iget-object v2, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v2, v2, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    goto :goto_0

    .line 388
    :cond_5
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v0, p1}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 393
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 396
    :cond_0
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_1

    .line 398
    iget-object v1, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    const-string v2, ""

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_netop_submitting_login:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    .line 401
    iget-object v0, p0, Lcjs;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 403
    :cond_1
    return-void
.end method
