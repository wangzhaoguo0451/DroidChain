.class public final Lcld;
.super Ljava/lang/Object;
.source "AccountModifyProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 327
    packed-switch p2, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 329
    :pswitch_0
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->d(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    goto :goto_0

    .line 335
    :pswitch_2
    invoke-static {}, Lchv;->d()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/Platform;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    invoke-static {v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Lcom/wandoujia/account/dto/Platform;)Lcom/wandoujia/account/dto/Platform;

    .line 339
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f:Lcmm;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->SINA:Lcom/wandoujia/account/dto/Platform;

    iget-object v2, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v3}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lclf;

    move-result-object v3

    const-string v4, "chooseAvatar"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcmm;->a(Lcom/wandoujia/account/dto/Platform;Landroid/content/Context;Lcmh;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :pswitch_3
    invoke-static {}, Lchv;->e()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/Platform;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    invoke-static {v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Lcom/wandoujia/account/dto/Platform;)Lcom/wandoujia/account/dto/Platform;

    .line 347
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f:Lcmm;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    iget-object v2, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v3}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lclf;

    move-result-object v3

    const-string v4, "chooseAvatar"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcmm;->a(Lcom/wandoujia/account/dto/Platform;Landroid/content/Context;Lcmh;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :pswitch_4
    invoke-static {}, Lchv;->f()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 352
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/Platform;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    :cond_2
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    invoke-static {v0, v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->a(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;Lcom/wandoujia/account/dto/Platform;)Lcom/wandoujia/account/dto/Platform;

    .line 355
    iget-object v0, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f:Lcmm;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->RENREN:Lcom/wandoujia/account/dto/Platform;

    iget-object v2, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcld;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v3}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->f(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Lclf;

    move-result-object v3

    const-string v4, "chooseAvatar"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcmm;->a(Lcom/wandoujia/account/dto/Platform;Landroid/content/Context;Lcmh;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
