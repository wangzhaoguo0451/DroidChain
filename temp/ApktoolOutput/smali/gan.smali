.class public final Lgan;
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
    .line 30
    iput-object p1, p0, Lgan;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lgan;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    iget-object v1, p0, Lgan;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    invoke-virtual {v0, v1}, Lag;->a(Landroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I

    .line 40
    :cond_0
    iget-object v0, p0, Lgan;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->RETRY_POST:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->a(Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;)V

    .line 41
    return-void
.end method
