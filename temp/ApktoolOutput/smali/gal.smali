.class public final Lgal;
.super Ljava/lang/Object;
.source "NetCheckFinishFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lgal;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lgal;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lgal;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lgal;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;

    invoke-virtual {v2}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;->startActivity(Landroid/content/Intent;)V

    .line 25
    iget-object v0, p0, Lgal;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 27
    :cond_0
    return-void
.end method
