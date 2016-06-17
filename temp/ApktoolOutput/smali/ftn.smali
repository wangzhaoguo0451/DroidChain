.class public final Lftn;
.super Ljava/lang/Object;
.source "NetworkListAsyncloadFragment.java"


# instance fields
.field a:Ldxa;

.field public b:Z

.field c:Landroid/content/Context;

.field final synthetic d:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lftn;->d:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    new-instance v0, Lfto;

    invoke-direct {v0, p0}, Lfto;-><init>(Lftn;)V

    iput-object v0, p0, Lftn;->e:Landroid/os/Handler;

    .line 556
    iput-object p2, p0, Lftn;->c:Landroid/content/Context;

    .line 557
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lftn;->a:Ldxa;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lftn;->a:Ldxa;

    invoke-virtual {v0}, Ldxa;->b()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lftn;->a:Ldxa;

    .line 597
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;)V
    .locals 2
    .parameter

    .prologue
    .line 620
    iget-object v0, p0, Lftn;->d:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->b(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftn;->d:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lftn;->b()V

    .line 623
    iget-object v0, p0, Lftn;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 625
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 613
    iget-object v0, p0, Lftn;->d:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->b(Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftn;->d:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lftn;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 616
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 629
    invoke-virtual {p0}, Lftn;->a()V

    .line 630
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->values()[Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 631
    iget-object v4, p0, Lftn;->e:Landroid/os/Handler;

    invoke-virtual {v3}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->ordinal()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_0
    return-void
.end method
