.class public final Lcra;
.super Landroid/os/CountDownTimer;
.source "AlarmService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/base/services/AlarmService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/base/services/AlarmService;)V
    .locals 4
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcra;->a:Lcom/wandoujia/base/services/AlarmService;

    const-wide/32 v0, 0x927c0

    const-wide/16 v2, 0x2710

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcra;->a:Lcom/wandoujia/base/services/AlarmService;

    const/4 v1, 0x1

    #setter for: Lcom/wandoujia/base/services/AlarmService;->finished:Z
    invoke-static {v0, v1}, Lcom/wandoujia/base/services/AlarmService;->access$102(Lcom/wandoujia/base/services/AlarmService;Z)Z

    .line 184
    iget-object v0, p0, Lcra;->a:Lcom/wandoujia/base/services/AlarmService;

    invoke-virtual {v0}, Lcom/wandoujia/base/services/AlarmService;->stopSelf()V

    .line 186
    return-void
.end method

.method public final onTick(J)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcra;->a:Lcom/wandoujia/base/services/AlarmService;

    #getter for: Lcom/wandoujia/base/services/AlarmService;->finished:Z
    invoke-static {v0}, Lcom/wandoujia/base/services/AlarmService;->access$100(Lcom/wandoujia/base/services/AlarmService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcra;->a:Lcom/wandoujia/base/services/AlarmService;

    #getter for: Lcom/wandoujia/base/services/AlarmService;->checkNum:I
    invoke-static {v0}, Lcom/wandoujia/base/services/AlarmService;->access$000(Lcom/wandoujia/base/services/AlarmService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcra;->cancel()V

    .line 177
    invoke-virtual {p0}, Lcra;->onFinish()V

    .line 179
    :cond_0
    return-void
.end method
