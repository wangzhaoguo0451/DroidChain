.class public abstract Lcom/wandoujia/base/services/AlarmService;
.super Landroid/app/Service;
.source "AlarmService.java"


# static fields
.field private static final ALARM_ACTION:Ljava/lang/String; = "ALARM_ACTION"

.field private static final CHECK_COMPLETED:I = 0x3e8

.field private static final DEFAULT_CHECK_INTERVAL:I = 0x2710

.field private static final DEFAULT_DURATION:J = 0x36ee80L

.field private static final DEFAULT_TIMEOUT_MILL_SECONDS:I = 0x927c0

.field private static final NONE_CHECKER:I = 0x0

.field private static final ONE_MINUTE_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "AlarmService"

.field private static checkerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/base/services/AlarmService$ScheduleChecker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;

.field private checkNum:I

.field private checkThread:Ljava/lang/Thread;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private finished:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/base/services/AlarmService;->finished:Z

    .line 68
    new-instance v0, Lcqz;

    invoke-direct {v0, p0}, Lcqz;-><init>(Lcom/wandoujia/base/services/AlarmService;)V

    iput-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->handler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/base/services/AlarmService;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/wandoujia/base/services/AlarmService;->checkNum:I

    return v0
.end method

.method public static synthetic access$010(Lcom/wandoujia/base/services/AlarmService;)I
    .locals 2
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/wandoujia/base/services/AlarmService;->checkNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/wandoujia/base/services/AlarmService;->checkNum:I

    return v0
.end method

.method public static synthetic access$100(Lcom/wandoujia/base/services/AlarmService;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/wandoujia/base/services/AlarmService;->finished:Z

    return v0
.end method

.method public static synthetic access$102(Lcom/wandoujia/base/services/AlarmService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/wandoujia/base/services/AlarmService;->finished:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/wandoujia/base/services/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/wandoujia/base/services/AlarmService;->handleChecker()V

    return-void
.end method

.method public static synthetic access$300(Lcom/wandoujia/base/services/AlarmService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleChecker()V
    .locals 3

    .prologue
    .line 221
    new-instance v1, Lcrb;

    invoke-direct {v1, p0}, Lcrb;-><init>(Lcom/wandoujia/base/services/AlarmService;)V

    .line 222
    sget-object v0, Lcom/wandoujia/base/services/AlarmService;->checkerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/base/services/AlarmService$ScheduleChecker;

    .line 223
    invoke-interface {v0, p0, v1}, Lcom/wandoujia/base/services/AlarmService$ScheduleChecker;->scheduleCheck(Landroid/content/Context;Lcom/wandoujia/base/services/AlarmService$Callback;)V

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/wandoujia/base/services/AlarmService;->stopSelf()V

    .line 189
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->action:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/wandoujia/base/services/AlarmService;->stopSelf()V

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start alarm service from action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/base/services/AlarmService;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->checkThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 159
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service is running now by action from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/base/services/AlarmService;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 164
    :cond_3
    sget-object v0, Lcom/wandoujia/base/services/AlarmService;->checkerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/base/services/AlarmService;->checkNum:I

    .line 168
    new-instance v0, Lcrc;

    invoke-direct {v0, p0}, Lcrc;-><init>(Lcom/wandoujia/base/services/AlarmService;)V

    iput-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->checkThread:Ljava/lang/Thread;

    .line 169
    iget-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->checkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    new-instance v0, Lcra;

    invoke-direct {v0, p0}, Lcra;-><init>(Lcom/wandoujia/base/services/AlarmService;)V

    iput-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->countDownTimer:Landroid/os/CountDownTimer;

    .line 188
    iget-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method private static hasAlarmService(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 318
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    const-string v2, "ALARM_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const/high16 v2, 0x2000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static scheduleAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/wandoujia/base/services/AlarmService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    if-nez p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-static {p0, p2}, Lcom/wandoujia/base/services/AlarmService;->hasAlarmService(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1, p1, p2}, Lcom/wandoujia/base/services/AlarmService;->startAlarmService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static scheduleAlarmAtOnce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/wandoujia/base/services/AlarmService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    if-nez p0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    const-wide/16 v0, 0x64

    invoke-static {p0, v0, v1, p1, p2}, Lcom/wandoujia/base/services/AlarmService;->startAlarmService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private scheduleNextAlarm()V
    .locals 4

    .prologue
    .line 244
    const-wide/32 v0, 0x36ee80

    const-string v2, "ALARM_ACTION"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/wandoujia/base/services/AlarmService;->startAlarmService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/Class;)V

    .line 245
    return-void
.end method

.method private static startAlarmService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/Class;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/wandoujia/base/services/AlarmService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 302
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 307
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 309
    return-void
.end method


# virtual methods
.method public abstract initCheckerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/base/services/AlarmService$ScheduleChecker;",
            ">;"
        }
    .end annotation
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 119
    invoke-virtual {p0}, Lcom/wandoujia/base/services/AlarmService;->initCheckerList()Ljava/util/List;

    move-result-object v0

    .line 121
    sput-object v0, Lcom/wandoujia/base/services/AlarmService;->checkerList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/wandoujia/base/services/AlarmService;->checkerList:Ljava/util/List;

    .line 124
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wandoujia/base/services/AlarmService;->hasAlarmService(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/wandoujia/base/services/AlarmService;->scheduleNextAlarm()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 233
    iput-object v1, p0, Lcom/wandoujia/base/services/AlarmService;->countDownTimer:Landroid/os/CountDownTimer;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->checkThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->checkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/wandoujia/base/services/AlarmService;->checkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 238
    :cond_2
    iput-object v1, p0, Lcom/wandoujia/base/services/AlarmService;->checkThread:Ljava/lang/Thread;

    .line 239
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 241
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/wandoujia/base/services/AlarmService;->scheduleNextAlarm()V

    .line 137
    invoke-direct {p0, p1}, Lcom/wandoujia/base/services/AlarmService;->handleIntent(Landroid/content/Intent;)V

    .line 138
    const/4 v0, 0x1

    return v0
.end method
