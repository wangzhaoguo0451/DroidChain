.class public final Lgao;
.super Ljava/lang/Object;
.source "NetCheckPostFailedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lgao;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lgao;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v0

    iget-object v1, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->g:Landroid/os/Handler;

    new-instance v2, Lfzx;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lfzx;-><init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;B)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    iget-object v0, p0, Lgao;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lgao;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lgao;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    invoke-virtual {v2}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->startActivity(Landroid/content/Intent;)V

    .line 51
    iget-object v0, p0, Lgao;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 53
    :cond_0
    return-void
.end method
