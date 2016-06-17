.class public final Lftd;
.super Ljava/lang/Object;
.source "NetworkAsyncLoadPageListFragment.java"


# instance fields
.field a:Landroid/widget/Toast;

.field b:Landroid/widget/Toast;

.field c:Landroid/widget/Toast;

.field d:Landroid/widget/Toast;

.field e:Z

.field f:Landroid/content/Context;

.field private final g:Landroid/os/Handler;

.field private synthetic h:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lftd;->h:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    new-instance v0, Lfte;

    invoke-direct {v0, p0}, Lfte;-><init>(Lftd;)V

    iput-object v0, p0, Lftd;->g:Landroid/os/Handler;

    .line 544
    iput-object p2, p0, Lftd;->f:Landroid/content/Context;

    .line 545
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 587
    iget-object v0, p0, Lftd;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lftd;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 589
    iput-object v1, p0, Lftd;->a:Landroid/widget/Toast;

    .line 591
    :cond_0
    iget-object v0, p0, Lftd;->b:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lftd;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 593
    iput-object v1, p0, Lftd;->b:Landroid/widget/Toast;

    .line 595
    :cond_1
    iget-object v0, p0, Lftd;->c:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lftd;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 597
    iput-object v1, p0, Lftd;->c:Landroid/widget/Toast;

    .line 599
    :cond_2
    iget-object v0, p0, Lftd;->d:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 600
    iget-object v0, p0, Lftd;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 601
    iput-object v1, p0, Lftd;->d:Landroid/widget/Toast;

    .line 603
    :cond_3
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;)V
    .locals 2
    .parameter

    .prologue
    .line 614
    iget-object v0, p0, Lftd;->h:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->b(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftd;->h:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lftd;->b()V

    .line 617
    iget-object v0, p0, Lftd;->g:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 619
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, Lftd;->h:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->b(Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lftd;->h:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lftd;->g:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 610
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 623
    invoke-virtual {p0}, Lftd;->a()V

    .line 624
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->values()[Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 625
    iget-object v4, p0, Lftd;->g:Landroid/os/Handler;

    invoke-virtual {v3}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->ordinal()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    :cond_0
    return-void
.end method
