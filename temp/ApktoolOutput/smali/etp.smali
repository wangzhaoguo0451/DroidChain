.class public final Letp;
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
    .line 257
    iput-object p1, p0, Letp;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Letp;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->launch(Landroid/content/Context;)V

    .line 261
    return-void
.end method
