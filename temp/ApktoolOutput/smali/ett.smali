.class public final Lett;
.super Ljava/lang/Object;
.source "AccountProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lett;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    iput-object p2, p0, Lett;->a:Ljava/lang/String;

    iput-object p3, p0, Lett;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lett;->a:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lett;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->i(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Lcoh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lett;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->i(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->dismiss()V

    .line 460
    :cond_0
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v1, p0, Lett;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    iget-object v1, v1, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b:Letk;

    invoke-virtual {v0, v1}, Letz;->a(Lcmg;)V

    .line 486
    :cond_1
    :goto_0
    return-void

    .line 461
    :cond_2
    iget-object v0, p0, Lett;->a:Ljava/lang/String;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lett;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->i(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Lcoh;

    move-result-object v0

    const v1, 0x7f0c0201

    invoke-virtual {v0, v1}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 464
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lett;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lett;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    const v2, 0x7f0e00d6

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lett;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    const v3, 0x7f0e001b

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Letu;

    invoke-direct {v3}, Letu;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v0, p0, Lett;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    iget-object v1, p0, Lett;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b(Ljava/lang/String;)V

    .line 479
    new-instance v0, Lcnk;

    iget-object v1, p0, Lett;->a:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VERIFY_CODE_TAG"

    iget-object v4, p0, Lett;->c:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    iget-object v4, v4, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b:Letk;

    invoke-static {}, Letz;->a()Letz;

    move-result-object v5

    iget-object v5, v5, Letz;->a:Lcmm;

    invoke-direct/range {v0 .. v5}, Lcnk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
