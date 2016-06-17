.class public final Lcqz;
.super Landroid/os/Handler;
.source "AlarmService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/base/services/AlarmService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/base/services/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcqz;->a:Lcom/wandoujia/base/services/AlarmService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcqz;->a:Lcom/wandoujia/base/services/AlarmService;

    invoke-static {v0}, Lcom/wandoujia/base/services/AlarmService;->access$010(Lcom/wandoujia/base/services/AlarmService;)I

    .line 74
    iget-object v0, p0, Lcqz;->a:Lcom/wandoujia/base/services/AlarmService;

    #getter for: Lcom/wandoujia/base/services/AlarmService;->checkNum:I
    invoke-static {v0}, Lcom/wandoujia/base/services/AlarmService;->access$000(Lcom/wandoujia/base/services/AlarmService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcqz;->a:Lcom/wandoujia/base/services/AlarmService;

    invoke-virtual {v0}, Lcom/wandoujia/base/services/AlarmService;->stopSelf()V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
