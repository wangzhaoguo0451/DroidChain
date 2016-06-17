.class public final Lckk;
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
    .line 570
    iput-object p1, p0, Lckk;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 573
    iget-object v0, p0, Lckk;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lckk;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    new-instance v1, Lcom/wandoujia/account/AccountParams;

    const-string v2, "unknown"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    iput-object v1, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    .line 576
    :cond_0
    iget-object v0, p0, Lckk;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v1, p0, Lckk;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v1}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->e(Lcom/wandoujia/account/fragment/AccountLoginFragment;)Lcom/wandoujia/account/widget/AccountEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/account/widget/AccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->d:Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lckk;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;->c:Lcom/wandoujia/account/AccountParams;

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->EMAIL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 578
    iget-object v0, p0, Lckk;->a:Lcom/wandoujia/account/fragment/AccountLoginFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->b(Lcom/wandoujia/account/fragment/AccountLoginFragment;)V

    .line 579
    return-void
.end method
