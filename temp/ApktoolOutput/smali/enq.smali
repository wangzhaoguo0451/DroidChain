.class final Lenq;
.super Ljava/lang/Object;
.source "LogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leno;


# direct methods
.method private constructor <init>(Leno;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lenq;->a:Leno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leno;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lenq;-><init>(Leno;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;-><init>()V

    .line 127
    new-instance v1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;-><init>()V

    .line 128
    new-instance v2, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->active_event(Lcom/wandoujia/logv3/model/packages/ApplicationActiveEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    .line 129
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/EventPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package(Lcom/wandoujia/logv3/model/packages/EventPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 130
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 131
    iget-object v2, p0, Lenq;->a:Leno;

    invoke-static {v2}, Leno;->a(Leno;)Lemw;

    move-result-object v2

    invoke-virtual {v2}, Lemw;->a()Lcom/wandoujia/logv3/model/packages/DevicePackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->device_package(Lcom/wandoujia/logv3/model/packages/DevicePackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 132
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 133
    iget-object v1, p0, Lenq;->a:Leno;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    move-result-object v0

    invoke-static {v1, v0}, Leno;->a(Leno;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
