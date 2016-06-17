.class public final Lcom/wandoujia/p4/subscribe/core/SubscribeManager;
.super Ljava/lang/Object;
.source "SubscribeManager.java"


# static fields
.field private static a:Lcom/wandoujia/p4/subscribe/core/SubscribeManager;


# instance fields
.field private final b:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Lgcj;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

.field private final d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->d:Landroid/os/Handler;

    .line 85
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b:Lgdw;

    .line 86
    new-instance v0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->c:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    .line 87
    return-void
.end method

.method public static declared-synchronized a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;
    .locals 2

    .prologue
    .line 90
    const-class v1, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a:Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    invoke-direct {v0}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a:Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    .line 93
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a:Lcom/wandoujia/p4/subscribe/core/SubscribeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b()V

    .line 243
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg;->f(Landroid/content/Context;)V

    move v0, v1

    .line 261
    :goto_0
    return v0

    .line 248
    :cond_0
    new-instance v2, Lcql;

    invoke-direct {v2, p1, p2}, Lcql;-><init>(Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;Ljava/lang/String;)V

    .line 250
    if-eqz p0, :cond_1

    .line 251
    invoke-virtual {v2}, Lcql;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgcq;

    invoke-virtual {v0, p0}, Lgcq;->a(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;)Lgcs;

    .line 255
    :cond_1
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    .line 256
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->d()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;Ljava/util/List;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b()V

    .line 209
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg;->f(Landroid/content/Context;)V

    move v0, v1

    .line 227
    :goto_0
    return v0

    .line 214
    :cond_0
    new-instance v3, Lcql;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Lcql;-><init>(Z[Ljava/lang/String;)V

    .line 216
    if-eqz p0, :cond_1

    .line 217
    invoke-virtual {v3}, Lcql;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;

    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;->a(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;)Lgcs;

    .line 221
    :cond_1
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    .line 222
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->d()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 227
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method public static b(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;Ljava/util/List;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b()V

    .line 271
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg;->f(Landroid/content/Context;)V

    move v0, v1

    .line 293
    :goto_0
    return v0

    .line 276
    :cond_0
    new-instance v2, Lcql;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lcql;-><init>(Z[Ljava/lang/String;)V

    .line 277
    if-eqz p0, :cond_1

    .line 278
    invoke-virtual {v2}, Lcql;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;

    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/subscribe/http/request/PostSubscribeRequest;->a(Lcom/wandoujia/p4/subscribe/SubscribeConstants$Source;)Lgcs;

    .line 282
    :cond_1
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    .line 283
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->c()V

    .line 284
    sget-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

    invoke-static {v0}, Lchv;->a(Lcom/wandoujia/account/dto/Role;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    sget-object v0, Lham;->f:Lham;

    const-string v2, "event_bus"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v2, Lhaq;

    sget-object v3, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DROP_ALL_SUBSCRIPTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static c()V
    .locals 6

    .prologue
    .line 317
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    const-string v1, "subscribe"

    iget-object v0, v0, Letz;->a:Lcmm;

    iget-object v2, v0, Lcmm;->a:Lcii;

    invoke-virtual {v0, v1}, Lcmm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcmm;->e:Lcom/wandoujia/account/dto/DeviceBean;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/wandoujia/account/dto/FIELDS;

    const/4 v4, 0x0

    sget-object v5, Lcom/wandoujia/account/dto/FIELDS;->BASIC_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v0, v3}, Lcii;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;[Lcom/wandoujia/account/dto/FIELDS;)Lcom/wandoujia/account/dto/AccountResponse;

    .line 318
    return-void
.end method

.method private static d()V
    .locals 4

    .prologue
    .line 321
    sget-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

    invoke-static {v0}, Lchv;->a(Lcom/wandoujia/account/dto/Role;)Z

    move-result v0

    .line 322
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->c()V

    .line 324
    if-nez v0, :cond_0

    .line 325
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->NEW_FOLLOW_USER:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 329
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lgcd;Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b:Lgdw;

    invoke-virtual {v0}, Lgdw;->b()Ljava/util/List;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->d:Landroid/os/Handler;

    new-instance v2, Lgce;

    invoke-direct {v2, v0, p2, p1}, Lgce;-><init>(Ljava/util/List;Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;Lgcd;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method public final a(Lgcj;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b:Lgdw;

    invoke-virtual {v0, p1}, Lgdw;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lgcd;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->b()V

    .line 144
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-static {p1}, Lg;->f(Landroid/content/Context;)V

    .line 146
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-virtual {p2}, Lgcd;->subscribe()Z

    move-result v0

    .line 149
    if-eqz v0, :cond_1

    .line 150
    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_SUBSCRIBE_SUCCESS:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    invoke-virtual {p0, p2, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lgcd;Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;)V

    goto :goto_0

    .line 152
    :cond_1
    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_SUBSCRIBE_FAILED:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    invoke-virtual {p0, p2, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lgcd;Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Lgcd;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->c:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    new-instance v1, Lgcf;

    invoke-direct {v1, p0, p1, p2}, Lgcf;-><init>(Lcom/wandoujia/p4/subscribe/core/SubscribeManager;Landroid/content/Context;Lgcd;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public final c(Landroid/content/Context;Lgcd;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->c:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    new-instance v1, Lgcg;

    invoke-direct {v1, p0, p1, p2}, Lgcg;-><init>(Lcom/wandoujia/p4/subscribe/core/SubscribeManager;Landroid/content/Context;Lgcd;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->execute(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method public final d(Landroid/content/Context;Lgcd;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->c:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    new-instance v1, Lgch;

    invoke-direct {v1, p0, p1, p2}, Lgch;-><init>(Lcom/wandoujia/p4/subscribe/core/SubscribeManager;Landroid/content/Context;Lgcd;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->execute(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method
