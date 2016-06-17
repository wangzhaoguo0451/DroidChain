.class public final Leto;
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
    .line 250
    iput-object p1, p0, Leto;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Leto;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/activity/RechargeActivity;->launch(Landroid/content/Context;)V

    .line 254
    return-void
.end method
