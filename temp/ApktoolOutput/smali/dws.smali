.class public final Ldws;
.super Lhhl;
.source "AccountView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/view/AccountView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/view/AccountView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Ldws;->a:Lcom/wandoujia/jupiter/view/AccountView;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "account_lib_header"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    .line 50
    invoke-static {}, Lchv;->w()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 55
    :goto_0
    iput-boolean v3, v0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wandoujia/account/AccountParams;->h:Z

    .line 57
    iget-object v1, p0, Ldws;->a:Lcom/wandoujia/jupiter/view/AccountView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/view/AccountView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wandoujia/p4/account/manager/AccountUtil;->a(Landroid/content/Context;Lcom/wandoujia/account/AccountParams;)V

    .line 62
    :goto_1
    return v3

    .line 53
    :cond_0
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->LOG_IN:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldws;->a:Lcom/wandoujia/jupiter/view/AccountView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/view/AccountView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/account/activity/AccountProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    iget-object v1, p0, Ldws;->a:Lcom/wandoujia/jupiter/view/AccountView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/view/AccountView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
