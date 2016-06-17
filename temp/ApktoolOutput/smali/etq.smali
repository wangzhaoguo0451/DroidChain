.class public final Letq;
.super Ljava/lang/Object;
.source "AccountProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Letq;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Letq;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/pay/activity/MyBonusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    iget-object v1, p0, Letq;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 269
    return-void
.end method
