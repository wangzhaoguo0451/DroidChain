.class public final Lckt;
.super Ljava/lang/Object;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountLoginFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    iput-object v1, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->g:Lcom/wandoujia/account/dto/Platform;

    .line 264
    iget-object v0, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    sget-object v1, Lcom/wandoujia/account/dto/Platform;->QQ:Lcom/wandoujia/account/dto/Platform;

    iget-object v2, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {v2}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v3, v3, Lcom/wandoujia/account/fragment/AccountLoginFragment;->h:Lcjs;

    iget-object v4, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v4, v4, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcmm;->b(Lcom/wandoujia/account/dto/Platform;Landroid/content/Context;Lcmh;Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 270
    const-string v0, "account_button_click_type"

    const-string v2, "account_qq_login"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "unknown"

    .line 273
    iget-object v2, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v2, :cond_2

    .line 274
    iget-object v0, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    .line 276
    :cond_2
    const-string v2, "account_source"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    iget-object v0, p0, Lckt;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    goto :goto_0
.end method