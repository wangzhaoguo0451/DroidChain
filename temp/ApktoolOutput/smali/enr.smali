.class final Lenr;
.super Ljava/lang/Object;
.source "LogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;

.field private synthetic b:Leno;


# direct methods
.method private constructor <init>(Leno;Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lenr;->b:Leno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lenr;->a:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;

    .line 373
    return-void
.end method

.method synthetic constructor <init>(Leno;Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Lenr;-><init>(Leno;Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 377
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;-><init>()V

    .line 378
    new-instance v1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;-><init>()V

    .line 379
    iget-object v2, p0, Lenr;->a:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->crash_event(Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    .line 380
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/EventPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package(Lcom/wandoujia/logv3/model/packages/EventPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 382
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 383
    iget-object v2, p0, Lenr;->b:Leno;

    invoke-static {v2}, Leno;->a(Leno;)Lemw;

    move-result-object v2

    invoke-virtual {v2}, Lemw;->a()Lcom/wandoujia/logv3/model/packages/DevicePackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_package(Lcom/wandoujia/logv3/model/packages/DevicePackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 384
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 385
    iget-object v1, p0, Lenr;->a:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;

    iget-object v1, v1, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Builder;->type:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;->ANR:Lcom/wandoujia/logv3/model/packages/ApplicationCrashEvent$Type;

    if-ne v1, v2, :cond_0

    .line 386
    iget-object v1, p0, Lenr;->b:Leno;

    invoke-static {v1}, Leno;->a(Leno;)Lemw;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lemw;->onEvent(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v1, p0, Lenr;->b:Leno;

    invoke-static {v1}, Leno;->a(Leno;)Lemw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lemw;->onEventSync(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V

    goto :goto_0
.end method
