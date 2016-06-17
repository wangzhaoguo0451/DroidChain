.class public Lcom/wandoujia/jupiter/activity/AccountHistoryActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "AccountHistoryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lcom/wandoujia/jupiter/fragment/ListFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 20
    const-string v1, ""

    const-string v2, "http://apis.wandoujia.com/five/v2/history/%s?format=proto"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/AccountHistoryActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 25
    return-void
.end method
