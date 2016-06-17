.class public final Lfsy;
.super Ljava/lang/Object;
.source "AsyncLoadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/fragment/AsyncLoadFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/fragment/AsyncLoadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lfsy;->a:Lcom/wandoujia/p4/fragment/AsyncLoadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lfsy;->a:Lcom/wandoujia/p4/fragment/AsyncLoadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lfsy;->a:Lcom/wandoujia/p4/fragment/AsyncLoadFragment;

    #getter for: Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->allowLoading:Z
    invoke-static {v0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->access$000(Lcom/wandoujia/p4/fragment/AsyncLoadFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lfsy;->a:Lcom/wandoujia/p4/fragment/AsyncLoadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onStartLoading()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lfsy;->a:Lcom/wandoujia/p4/fragment/AsyncLoadFragment;

    const/4 v1, 0x1

    #setter for: Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->pendingToLoad:Z
    invoke-static {v0, v1}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->access$102(Lcom/wandoujia/p4/fragment/AsyncLoadFragment;Z)Z

    goto :goto_0
.end method
