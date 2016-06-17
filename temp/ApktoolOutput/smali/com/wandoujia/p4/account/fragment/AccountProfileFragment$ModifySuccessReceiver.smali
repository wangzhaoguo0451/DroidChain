.class Lcom/wandoujia/p4/account/fragment/AccountProfileFragment$ModifySuccessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountProfileFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment$ModifySuccessReceiver;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 544
    const-string v0, "account.intent.action.MODIFY_SUCCESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment$ModifySuccessReceiver;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a()V

    .line 547
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment$ModifySuccessReceiver;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->j(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    .line 549
    :cond_0
    return-void
.end method
