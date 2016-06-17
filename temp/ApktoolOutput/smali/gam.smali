.class public final Lgam;
.super Ljava/lang/Object;
.source "NetCheckHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lgam;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;

    iput-object p2, p0, Lgam;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    new-instance v1, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;

    invoke-direct {v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;-><init>()V

    .line 39
    :goto_0
    iget-object v0, p0, Lgam;->b:Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v2, 0x7f0c02aa

    invoke-virtual {v0, v2, v1}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 46
    :cond_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lgam;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    new-instance v1, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-direct {v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;-><init>()V

    move-object v0, v1

    .line 34
    check-cast v0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    iget v2, v0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a:I

    goto :goto_0

    .line 36
    :cond_2
    new-instance v1, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-direct {v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;-><init>()V

    goto :goto_0
.end method
