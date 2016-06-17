.class public final Letc;
.super Ljava/lang/Object;
.source "AccountCheckPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Letc;->a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Letc;->a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Letc;->a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;

    iget-object v1, p0, Letc;->a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;

    const v2, 0x7f0e007a

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Letc;->a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;

    iget-object v1, p0, Letc;->a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;

    const v2, 0x7f0e00cf

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->a(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Letc;->a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;

    iget-object v1, p0, Letc;->a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->b(Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    new-instance v0, Lcna;

    invoke-static {}, Lchv;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Letc;->a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->a(Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "changeAccount"

    const-string v4, "login"

    iget-object v5, p0, Letc;->a:Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;

    iget-object v5, v5, Lcom/wandoujia/p4/account/activity/AccountCheckPasswordActivity;->b:Lesh;

    invoke-static {}, Letz;->a()Letz;

    move-result-object v6

    iget-object v6, v6, Letz;->a:Lcmm;

    invoke-direct/range {v0 .. v6}, Lcna;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
