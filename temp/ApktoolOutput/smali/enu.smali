.class public final Lenu;
.super Ljava/lang/Object;
.source "LogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;

.field private final b:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

.field private synthetic c:Leno;


# direct methods
.method private constructor <init>(Leno;Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lenu;->c:Leno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lenu;->a:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;

    .line 317
    iput-object p3, p0, Lenu;->b:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 318
    return-void
.end method

.method public synthetic constructor <init>(Leno;Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-direct {p0, p1, p2, p3}, Lenu;-><init>(Leno;Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 323
    :try_start_0
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;-><init>()V

    .line 324
    new-instance v1, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;-><init>()V

    .line 325
    iget-object v2, p0, Lenu;->a:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->consumption_event(Lcom/wandoujia/logv3/model/packages/ConsumptionEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    .line 326
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/EventPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package(Lcom/wandoujia/logv3/model/packages/EventPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 327
    iget-object v1, p0, Lenu;->b:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 328
    iget-object v1, p0, Lenu;->c:Leno;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    move-result-object v0

    invoke-static {v1, v0}, Leno;->a(Leno;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
