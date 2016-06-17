.class public final Lck;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 466
    invoke-direct {p0}, Lck;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 470
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laf;

    .line 471
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 480
    :goto_0
    return-void

    .line 474
    :pswitch_0
    iget-object v0, v0, Laf;->e:Landroid/support/v4/content/ModernAsyncTask;

    invoke-static {v0}, Landroid/support/v4/content/ModernAsyncTask;->a(Landroid/support/v4/content/ModernAsyncTask;)V

    goto :goto_0

    .line 477
    :pswitch_1
    invoke-static {}, Landroid/support/v4/content/ModernAsyncTask;->a()V

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
