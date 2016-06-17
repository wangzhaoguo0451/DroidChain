.class public Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;
.super Lcom/wandoujia/p4/fragment/AsyncLoadFragment;
.source "NetCheckCheckingFragment.java"


# instance fields
.field public a:I

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:I

.field private final f:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

.field private g:Lfzw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;-><init>()V

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->d:I

    .line 33
    new-instance v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    invoke-direct {v0}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->f:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    .line 206
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->f:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->d:I

    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->b:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->d:I

    iget v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->e:I

    iget v2, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a:I

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->f:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v1, v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->d:Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;

    invoke-virtual {v1}, Lcom/wandoujia/p4/netcheck/model/NetCheckInfo$Common;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->f:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iput-object v1, v0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    invoke-virtual {p0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x7f0c02aa

    invoke-virtual {v1, v2, v0}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lag;->a(Ljava/lang/String;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lgai;

    invoke-direct {v1, p0, v3}, Lgai;-><init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lgai;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a:I

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->e:I

    return v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 197
    const v0, 0x7f030030

    return v0
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 143
    const v0, 0x7f0c014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->c:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0c014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->b:Landroid/widget/ProgressBar;

    .line 145
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->e:I

    .line 146
    new-instance v0, Lfzw;

    invoke-direct {v0, p0, p1}, Lfzw;-><init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->g:Lfzw;

    .line 191
    iget-object v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->f:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v2, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->g:Lfzw;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->f:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfzw;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_1
    :goto_0
    new-instance v0, Lgah;

    invoke-direct {v0, p0, v5}, Lgah;-><init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;B)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lgah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    return-void

    .line 191
    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->f:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPrepareLoading()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f0e044e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
