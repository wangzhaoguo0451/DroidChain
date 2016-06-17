.class public final Lckg;
.super Ljava/lang/Object;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountLoginFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lckg;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 492
    check-cast p1, Lcoh;

    sget v0, Lcom/wandoujia/account/R$id;->account_captcha_edit:I

    invoke-virtual {p1, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 495
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 496
    iget-object v0, p0, Lckg;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f:Lcmm;

    iget-object v1, p0, Lckg;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lckg;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v2}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->f(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lckg;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v4, v4, Lcom/wandoujia/account/AccountParams;->b:Ljava/lang/String;

    const-string v5, "LOGIN_TAG"

    iget-object v6, p0, Lckg;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v6}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->g(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcjh;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcmm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;)V

    .line 500
    return-void
.end method
