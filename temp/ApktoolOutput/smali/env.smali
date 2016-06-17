.class final Lenv;
.super Ljava/lang/Object;
.source "LogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

.field private final b:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

.field private synthetic c:Leno;


# direct methods
.method private constructor <init>(Leno;Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lenv;->c:Leno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lenv;->a:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    .line 151
    iput-object p3, p0, Lenv;->b:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Leno;Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lenv;-><init>(Leno;Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lenv;->b:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->NEW:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lenv;->c:Leno;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leno;->b(Leno;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 159
    iget-object v0, p0, Lenv;->c:Leno;

    invoke-static {v0}, Leno;->b(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 160
    iget-object v0, p0, Lenv;->c:Leno;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leno;->c(Leno;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 161
    iget-object v0, p0, Lenv;->c:Leno;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leno;->a(Leno;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 163
    :cond_0
    iget-object v0, p0, Lenv;->b:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;->reason:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->RESTART:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    if-eq v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lenv;->c:Leno;

    invoke-static {v0}, Leno;->a(Leno;)Lemw;

    move-result-object v0

    iget-object v1, p0, Lenv;->a:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    iget-object v2, v0, Lemw;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lemy;

    invoke-direct {v3, v0, v1}, Lemy;-><init>(Lemw;Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 166
    :cond_1
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;-><init>()V

    .line 167
    new-instance v1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;-><init>()V

    .line 168
    iget-object v2, p0, Lenv;->b:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->start_event(Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    .line 169
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/EventPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package(Lcom/wandoujia/logv3/model/packages/EventPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 170
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 171
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 172
    iget-object v1, p0, Lenv;->c:Leno;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    move-result-object v0

    invoke-static {v1, v0}, Leno;->a(Leno;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
