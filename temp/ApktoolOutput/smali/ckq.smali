.class public final Lckq;
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
    .line 222
    iput-object p1, p0, Lckq;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    const-string v1, "account_button_click_type"

    const-string v2, "account_login_page_register"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lckq;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    iget-object v0, p0, Lckq;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 230
    iget-object v0, p0, Lckq;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    .line 231
    return-void
.end method
