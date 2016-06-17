.class public final Lcma;
.super Ljava/lang/Object;
.source "AccountRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountRegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcma;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcma;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->i:Lcjr;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcma;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->i:Lcjr;

    invoke-interface {v0, p1}, Lcjr;->onViewWidgetClicked(Landroid/view/View;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcma;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, p0, Lcma;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    iget-object v1, v1, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->d:Ljava/lang/String;

    const-string v2, "http://www.wandoujia.com/terms"

    iget-object v3, p0, Lcma;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    sget v4, Lcom/wandoujia/account/R$string;->account_sdk_title_terms:I

    invoke-virtual {v3, v4}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/account/fragment/WebViewFragment;->a(Lcom/wandoujia/account/AccountParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/account/fragment/WebViewFragment;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcma;->a:Lcom/wandoujia/account/fragment/AccountRegisterFragment;

    invoke-virtual {v1}, Lcom/wandoujia/account/fragment/AccountRegisterFragment;->b()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    .line 301
    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    .line 302
    const-string v0, "register"

    invoke-virtual {v1, v0}, Lag;->a(Ljava/lang/String;)Lag;

    .line 303
    invoke-virtual {v1}, Lag;->a()I

    .line 304
    return-void
.end method
