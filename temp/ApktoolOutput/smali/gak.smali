.class public final Lgak;
.super Ljava/lang/Object;
.source "NetCheckFailedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lgak;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lgak;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x7f0c02aa

    new-instance v2, Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;

    invoke-direct {v2}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 27
    :cond_0
    return-void
.end method
