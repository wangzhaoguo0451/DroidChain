.class final Lfte;
.super Landroid/os/Handler;
.source "NetworkAsyncLoadPageListFragment.java"


# instance fields
.field final synthetic a:Lftd;


# direct methods
.method constructor <init>(Lftd;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lfte;->a:Lftd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 550
    iget v0, p1, Landroid/os/Message;->what:I

    .line 551
    invoke-static {}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->values()[Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    move-result-object v1

    aget-object v0, v1, v0

    .line 552
    sget-object v1, Lftc;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 573
    :goto_0
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lftf;

    invoke-direct {v1, p0}, Lftf;-><init>(Lfte;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    return-void

    .line 554
    :pswitch_0
    iget-object v0, p0, Lfte;->a:Lftd;

    iget-object v1, p0, Lfte;->a:Lftd;

    iget-object v1, v1, Lftd;->f:Landroid/content/Context;

    const v2, 0x7f0e048c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lftd;->a:Landroid/widget/Toast;

    .line 556
    iget-object v0, p0, Lfte;->a:Lftd;

    iget-object v0, v0, Lftd;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 557
    iget-object v0, p0, Lfte;->a:Lftd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lftd;->e:Z

    goto :goto_0

    .line 560
    :pswitch_1
    iget-object v0, p0, Lfte;->a:Lftd;

    iget-object v1, p0, Lfte;->a:Lftd;

    iget-object v1, v1, Lftd;->f:Landroid/content/Context;

    const v2, 0x7f0e048b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lftd;->b:Landroid/widget/Toast;

    .line 562
    iget-object v0, p0, Lfte;->a:Lftd;

    iget-object v0, v0, Lftd;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 565
    :pswitch_2
    iget-object v0, p0, Lfte;->a:Lftd;

    iget-object v1, p0, Lfte;->a:Lftd;

    iget-object v1, v1, Lftd;->f:Landroid/content/Context;

    const v2, 0x7f0e0487

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lftd;->c:Landroid/widget/Toast;

    .line 567
    iget-object v0, p0, Lfte;->a:Lftd;

    iget-object v0, v0, Lftd;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 570
    :pswitch_3
    iget-object v0, p0, Lfte;->a:Lftd;

    iget-object v1, p0, Lfte;->a:Lftd;

    iget-object v1, v1, Lftd;->f:Landroid/content/Context;

    const v2, 0x7f0e048a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lftd;->d:Landroid/widget/Toast;

    .line 572
    iget-object v0, p0, Lfte;->a:Lftd;

    iget-object v0, v0, Lftd;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
