.class public Lcom/wandoujia/p4/netcheck/NetCheckActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "NetCheckActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/NetCheckActivity;->setContentView(I)V

    .line 15
    invoke-virtual {p0}, Lcom/wandoujia/p4/netcheck/NetCheckActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x7f0c02aa

    new-instance v2, Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;

    invoke-direct {v2}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 19
    return-void
.end method
