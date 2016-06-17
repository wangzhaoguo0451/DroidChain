.class public Lcom/wandoujia/log/LogSender;
.super Ljava/lang/Object;
.source "LogSender.java"


# static fields
.field private static final AUTO_TRIGGERSEND_DELAY:J = 0xaL

.field private static final AUTO_TRIGGERSEND_INITIAL_DELAY:J = 0x5L

.field private static final BUFFER_SIZE:I = 0x400

.field private static final LOG_SENDER_THREAD_CACHE_TIME:J = 0x927c0L

.field private static final LOG_SENDER_THREAD_NAME:Ljava/lang/String; = "log-sender-thread"

.field private static final MUCE_URL_RAW:Ljava/lang/String; = null

.field private static final MUCE_URL_RAW_DEBUG:Ljava/lang/String; = "http://10.0.29.57:8095/muce/data/sink?profile=%1$s&vc=%2$s&vn=%3$s&gzip=true&encrypt=true&key_version=%4$s&log_version=%5$s"

.field private static final PREF_KEY_LAST_SEND_SUCCESS_TIME:Ljava/lang/String; = "log_sender_last_success_time"

.field private static final PREF_NAME:Ljava/lang/String; = "log_module"


# instance fields
.field private final context:Landroid/content/Context;

.field private headerLine:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private isJustLaunch:Z

.field private final logConfiguration:Lcom/wandoujia/log/LogConfiguration;

.field private final logStorage:Lemr;

.field private final mobileSenderPolicy:Lcom/wandoujia/log/LogSender$SenderPolicyModel;

.field private muceUrl:Ljava/lang/String;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final senderExecutor:Ljava/util/concurrent/Executor;

.field private final wifiSenderPolicy:Lcom/wandoujia/log/LogSender$SenderPolicyModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lemk;->a:Ljava/lang/String;

    sput-object v0, Lcom/wandoujia/log/LogSender;->MUCE_URL_RAW:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lemr;Lcom/wandoujia/log/LogConfiguration;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v4, p0, Lcom/wandoujia/log/LogSender;->isJustLaunch:Z

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/log/LogSender;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    new-instance v0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const-wide/32 v2, 0x927c0

    const-string v1, "log-sender-thread"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(IJLjava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/log/LogSender;->senderExecutor:Ljava/util/concurrent/Executor;

    .line 78
    iput-object p2, p0, Lcom/wandoujia/log/LogSender;->logStorage:Lemr;

    .line 79
    iput-object p3, p0, Lcom/wandoujia/log/LogSender;->logConfiguration:Lcom/wandoujia/log/LogConfiguration;

    .line 81
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->logConfiguration:Lcom/wandoujia/log/LogConfiguration;

    invoke-interface {v0}, Lcom/wandoujia/log/LogConfiguration;->getWifiSendPolicy()Lcom/wandoujia/log/LogSender$SenderPolicyModel;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/log/LogSender;->wifiSenderPolicy:Lcom/wandoujia/log/LogSender$SenderPolicyModel;

    .line 82
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->logConfiguration:Lcom/wandoujia/log/LogConfiguration;

    invoke-interface {v0}, Lcom/wandoujia/log/LogConfiguration;->getMobileSendPolicy()Lcom/wandoujia/log/LogSender$SenderPolicyModel;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/log/LogSender;->mobileSenderPolicy:Lcom/wandoujia/log/LogSender$SenderPolicyModel;

    .line 83
    iput-object p1, p0, Lcom/wandoujia/log/LogSender;->context:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/wandoujia/log/LogSender;->asyncInit()V

    .line 87
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lemn;

    invoke-direct {v1, p0}, Lemn;-><init>(Lcom/wandoujia/log/LogSender;)V

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 93
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/log/LogSender;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->muceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$002(Lcom/wandoujia/log/LogSender;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/log/LogSender;->muceUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/wandoujia/log/LogSender;)Lcom/wandoujia/log/LogConfiguration;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->logConfiguration:Lcom/wandoujia/log/LogConfiguration;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/wandoujia/log/LogSender;)Lorg/apache/http/client/HttpClient;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public static synthetic access$1002(Lcom/wandoujia/log/LogSender;Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/log/LogSender;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/wandoujia/log/LogSender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/log/LogSender;->buildMuceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$300(Lcom/wandoujia/log/LogSender;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->headerLine:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$302(Lcom/wandoujia/log/LogSender;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/log/LogSender;->headerLine:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/wandoujia/log/LogSender;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/wandoujia/log/LogSender;->buildHeaderLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$800(Lcom/wandoujia/log/LogSender;)Lemr;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->logStorage:Lemr;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/wandoujia/log/LogSender;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->context:Landroid/content/Context;

    return-object v0
.end method

.method private asyncInit()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->senderExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lemo;

    invoke-direct {v1, p0}, Lemo;-><init>(Lcom/wandoujia/log/LogSender;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method private buildHeaderLine()Ljava/lang/String;
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->logConfiguration:Lcom/wandoujia/log/LogConfiguration;

    iget-object v1, p0, Lcom/wandoujia/log/LogSender;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/wandoujia/log/LogConfiguration;->buildHeaderParams(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildMuceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/wandoujia/log/LogSender;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "http://10.0.29.57:8095/muce/data/sink?profile=%1$s&vc=%2$s&vn=%3$s&gzip=true&encrypt=true&key_version=%4$s&log_version=%5$s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/wandoujia/log/LogSender;->MUCE_URL_RAW:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkPolicy()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 148
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkType()I

    move-result v0

    .line 118
    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 128
    goto :goto_0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->mobileSenderPolicy:Lcom/wandoujia/log/LogSender$SenderPolicyModel;

    .line 130
    :goto_1
    sget-object v3, Lemp;->a:[I

    #getter for: Lcom/wandoujia/log/LogSender$SenderPolicyModel;->timePolicy:Lcom/wandoujia/log/LogSender$TimePolicy;
    invoke-static {v0}, Lcom/wandoujia/log/LogSender$SenderPolicyModel;->access$600(Lcom/wandoujia/log/LogSender$SenderPolicyModel;)Lcom/wandoujia/log/LogSender$TimePolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/log/LogSender$TimePolicy;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    move v0, v2

    .line 148
    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->wifiSenderPolicy:Lcom/wandoujia/log/LogSender$SenderPolicyModel;

    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 126
    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 132
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    :pswitch_5
    iget-boolean v0, p0, Lcom/wandoujia/log/LogSender;->isJustLaunch:Z

    if-eqz v0, :cond_1

    .line 137
    iput-boolean v2, p0, Lcom/wandoujia/log/LogSender;->isJustLaunch:Z

    move v0, v1

    .line 138
    goto :goto_0

    :cond_1
    move v0, v2

    .line 140
    goto :goto_0

    .line 143
    :pswitch_6
    #getter for: Lcom/wandoujia/log/LogSender$SenderPolicyModel;->duration:J
    invoke-static {v0}, Lcom/wandoujia/log/LogSender$SenderPolicyModel;->access$700(Lcom/wandoujia/log/LogSender$SenderPolicyModel;)J

    move-result-wide v4

    .line 144
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->context:Landroid/content/Context;

    const-string v3, "log_module"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "log_sender_last_success_time"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 146
    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public triggerSend(Z)V
    .locals 3
    .parameter

    .prologue
    .line 107
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/wandoujia/log/LogSender;->checkPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/log/LogSender;->senderExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lemq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lemq;-><init>(Lcom/wandoujia/log/LogSender;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    :cond_1
    return-void
.end method
