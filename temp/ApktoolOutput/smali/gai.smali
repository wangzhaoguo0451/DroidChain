.class public final Lgai;
.super Landroid/os/AsyncTask;
.source "NetCheckCheckingFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lgai;-><init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 102
    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0c02aa

    .line 102
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->d(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    const v3, 0x7f0e044a

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->c(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->c(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;

    invoke-direct {v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFinishFragment;-><init>()V

    invoke-virtual {v0, v4, v1}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->d(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    const v3, 0x7f0e0448

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;

    invoke-direct {v1}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;-><init>()V

    iget-object v2, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lag;->a(Ljava/lang/String;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->b()I

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->c(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 108
    iget-object v0, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->d(Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lgai;->a:Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;

    const v2, 0x7f0e0447

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method
