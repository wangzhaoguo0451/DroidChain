.class final Lcob;
.super Ljava/lang/Object;
.source "AvatarUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcoa;


# direct methods
.method constructor <init>(Lcoa;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcob;->a:Lcoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 219
    iget-object v0, p0, Lcob;->a:Lcoa;

    iget-object v0, v0, Lcoa;->b:Lcoe;

    iget-object v1, p0, Lcob;->a:Lcoa;

    iget-object v1, v1, Lcoa;->a:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v2, v0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    iget-object v2, v0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_avatar_upload_success:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, v0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->g(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)V

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-static {v2}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->h(Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v4}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, v0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "account.intent.action.MODIFY_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcoe;->a:Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    invoke-static {}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->d()Ldd;

    goto :goto_0
.end method
