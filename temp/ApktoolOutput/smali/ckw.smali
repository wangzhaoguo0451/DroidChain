.class public final Lckw;
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
    .line 309
    iput-object p1, p0, Lckw;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lckw;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->i:Lcjr;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lckw;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->i:Lcjr;

    invoke-interface {v0, p1}, Lcjr;->onViewWidgetClicked(Landroid/view/View;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lckw;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, p0, Lckw;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v1, v1, Lcom/wandoujia/account/fragment/AccountLoginFragment;->d:Ljava/lang/String;

    const-string v2, "http://www.wandoujia.com/terms"

    iget-object v3, p0, Lckw;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    sget v4, Lcom/wandoujia/account/R$string;->account_sdk_title_terms:I

    invoke-virtual {v3, v4}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/account/fragment/WebViewFragment;->a(Lcom/wandoujia/account/AccountParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/account/fragment/WebViewFragment;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lckw;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    .line 322
    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    .line 323
    const-string v0, "login"

    invoke-virtual {v1, v0}, Lag;->a(Ljava/lang/String;)Lag;

    .line 324
    invoke-virtual {v1}, Lag;->a()I

    .line 325
    return-void
.end method
