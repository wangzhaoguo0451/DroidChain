.class public Lcom/wandoujia/log/LogReporter;
.super Ljava/lang/Object;
.source "LogReporter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_REPORTER_THREAD:Ljava/lang/String; = "log-reporter-thread"

.field private static final LOG_REPORTER_THREAD_CACHE_TIME:J = 0x927c0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final commonParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final logConfiguration:Lcom/wandoujia/log/LogConfiguration;

.field private final logSender:Lcom/wandoujia/log/LogSender;

.field private final logStorage:Lemr;

.field private final reporterExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/wandoujia/log/LogReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/log/LogReporter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lemr;Lcom/wandoujia/log/LogConfiguration;Lcom/wandoujia/log/LogSender;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/log/LogReporter;->commonParams:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lcom/wandoujia/log/LogReporter;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const/4 v1, 0x1

    const-wide/32 v2, 0x927c0

    const-string v4, "log-reporter-thread"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(IJLjava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/log/LogReporter;->reporterExecutor:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p2, p0, Lcom/wandoujia/log/LogReporter;->logStorage:Lemr;

    .line 45
    iput-object p3, p0, Lcom/wandoujia/log/LogReporter;->logConfiguration:Lcom/wandoujia/log/LogConfiguration;

    .line 46
    iput-object p4, p0, Lcom/wandoujia/log/LogReporter;->logSender:Lcom/wandoujia/log/LogSender;

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/wandoujia/log/LogReporter;->asyncInit(Landroid/content/Context;Lcom/wandoujia/log/LogConfiguration;)V

    .line 48
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/log/LogReporter;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/log/LogReporter;->commonParams:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/wandoujia/log/LogReporter;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/wandoujia/log/LogReporter;->addCommonParams(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/wandoujia/log/LogReporter;)Lemr;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/log/LogReporter;->logStorage:Lemr;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/wandoujia/log/LogReporter;)Lcom/wandoujia/log/LogSender;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/log/LogReporter;->logSender:Lcom/wandoujia/log/LogSender;

    return-object v0
.end method

.method private addCommonParams(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/wandoujia/log/LogReporter;->commonParams:Ljava/util/Map;

    iget-object v1, p0, Lcom/wandoujia/log/LogReporter;->logConfiguration:Lcom/wandoujia/log/LogConfiguration;

    iget-object v2, p0, Lcom/wandoujia/log/LogReporter;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/wandoujia/log/LogConfiguration;->buildVolatileCommonParams(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    iget-object v0, p0, Lcom/wandoujia/log/LogReporter;->commonParams:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 185
    return-void
.end method

.method private asyncInit(Landroid/content/Context;Lcom/wandoujia/log/LogConfiguration;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wandoujia/log/LogReporter;->reporterExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Leml;

    invoke-direct {v1, p0, p2, p1}, Leml;-><init>(Lcom/wandoujia/log/LogReporter;Lcom/wandoujia/log/LogConfiguration;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method private buildEventName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onEvent(Ljava/lang/String;Ljava/util/Map;Lcom/wandoujia/log/LogEventModel$Priority;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/wandoujia/log/LogEventModel$Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    if-nez p2, :cond_0

    .line 143
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 146
    :cond_0
    new-instance v1, Lcom/wandoujia/log/LogEventModel;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/wandoujia/log/LogEventModel;-><init>(Ljava/lang/String;Ljava/util/Map;JLcom/wandoujia/log/LogEventModel$Priority;)V

    .line 148
    iget-object v0, p0, Lcom/wandoujia/log/LogReporter;->reporterExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lemm;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lemm;-><init>(Lcom/wandoujia/log/LogReporter;Lcom/wandoujia/log/LogEventModel;B)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 149
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    const-string v0, "[event:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/log/LogReporter;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/wandoujia/log/LogReporter;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/log/LogReporter;->buildEventName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/log/LogEventModel$Priority;->NORMAL:Lcom/wandoujia/log/LogEventModel$Priority;

    invoke-direct {p0, v0, p4, v1}, Lcom/wandoujia/log/LogReporter;->onEvent(Ljava/lang/String;Ljava/util/Map;Lcom/wandoujia/log/LogEventModel$Priority;)V

    .line 116
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/wandoujia/log/LogEventModel$Priority;->NORMAL:Lcom/wandoujia/log/LogEventModel$Priority;

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/log/LogReporter;->onEvent(Ljava/lang/String;Ljava/util/Map;Lcom/wandoujia/log/LogEventModel$Priority;)V

    .line 76
    return-void
.end method

.method public onEventRealTime(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    sget-object v1, Lcom/wandoujia/log/LogEventModel$Priority;->REAL_TIME:Lcom/wandoujia/log/LogEventModel$Priority;

    invoke-direct {p0, p1, v0, v1}, Lcom/wandoujia/log/LogReporter;->onEvent(Ljava/lang/String;Ljava/util/Map;Lcom/wandoujia/log/LogEventModel$Priority;)V

    .line 87
    return-void
.end method

.method public onEventRealTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/log/LogReporter;->buildEventName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/log/LogEventModel$Priority;->REAL_TIME:Lcom/wandoujia/log/LogEventModel$Priority;

    invoke-direct {p0, v0, v1, v2}, Lcom/wandoujia/log/LogReporter;->onEvent(Ljava/lang/String;Ljava/util/Map;Lcom/wandoujia/log/LogEventModel$Priority;)V

    .line 126
    return-void
.end method

.method public onEventRealTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/log/LogReporter;->buildEventName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/log/LogEventModel$Priority;->REAL_TIME:Lcom/wandoujia/log/LogEventModel$Priority;

    invoke-direct {p0, v0, p4, v1}, Lcom/wandoujia/log/LogReporter;->onEvent(Ljava/lang/String;Ljava/util/Map;Lcom/wandoujia/log/LogEventModel$Priority;)V

    .line 138
    return-void
.end method

.method public onEventRealTime(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/wandoujia/log/LogEventModel$Priority;->REAL_TIME:Lcom/wandoujia/log/LogEventModel$Priority;

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/log/LogReporter;->onEvent(Ljava/lang/String;Ljava/util/Map;Lcom/wandoujia/log/LogEventModel$Priority;)V

    .line 99
    return-void
.end method

.method public onEventSync(Ljava/lang/String;Ljava/util/Map;Lcom/wandoujia/log/LogEventModel$Priority;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/wandoujia/log/LogEventModel$Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    if-nez p2, :cond_0

    .line 170
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 172
    :cond_0
    new-instance v1, Lcom/wandoujia/log/LogEventModel;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/wandoujia/log/LogEventModel;-><init>(Ljava/lang/String;Ljava/util/Map;JLcom/wandoujia/log/LogEventModel$Priority;)V

    .line 174
    new-instance v0, Lemm;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lemm;-><init>(Lcom/wandoujia/log/LogReporter;Lcom/wandoujia/log/LogEventModel;B)V

    invoke-virtual {v0}, Lemm;->run()V

    .line 175
    return-void
.end method
