.class final Lfto;
.super Landroid/os/Handler;
.source "NetworkListAsyncloadFragment.java"


# instance fields
.field final synthetic a:Lftn;


# direct methods
.method constructor <init>(Lftn;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lfto;->a:Lftn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    .line 562
    iget v0, p1, Landroid/os/Message;->what:I

    .line 563
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->values()[Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    move-result-object v1

    aget-object v0, v1, v0

    .line 564
    sget-object v1, Lftm;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 576
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lftp;

    invoke-direct {v1, p0}, Lftp;-><init>(Lfto;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 589
    return-void

    .line 566
    :pswitch_0
    iget-object v0, p0, Lfto;->a:Lftn;

    iget-object v1, p0, Lfto;->a:Lftn;

    iget-object v1, v1, Lftn;->c:Landroid/content/Context;

    const v2, 0x7f0e048c

    sget v3, Ldxa;->b:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v1

    iput-object v1, v0, Lftn;->a:Ldxa;

    .line 568
    iget-object v0, p0, Lfto;->a:Lftn;

    iget-object v0, v0, Lftn;->a:Ldxa;

    invoke-virtual {v0}, Ldxa;->a()V

    .line 569
    iget-object v0, p0, Lfto;->a:Lftn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lftn;->b:Z

    goto :goto_0

    .line 572
    :pswitch_1
    iget-object v0, p0, Lfto;->a:Lftn;

    iget-object v0, v0, Lftn;->d:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f0e048b

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lfto;->a:Lftn;

    iget-object v1, v1, Lftn;->d:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 575
    :pswitch_2
    iget-object v0, p0, Lfto;->a:Lftn;

    iget-object v0, v0, Lftn;->d:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f0e0487

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lfto;->a:Lftn;

    iget-object v1, v1, Lftn;->d:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
