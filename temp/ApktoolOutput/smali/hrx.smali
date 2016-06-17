.class public Lhrx;
.super Ljava/lang/Object;
.source "EventBus.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static volatile b:Lhrx;

.field private static final c:Lhsb;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lhsj;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lhsa;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lhsc;

.field private final i:Lhrw;

.field private final j:Lhrv;

.field private final k:Lhsi;

.field private l:Ljava/util/concurrent/ExecutorService;

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private final q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "Event"

    sput-object v0, Lhrx;->a:Ljava/lang/String;

    .line 46
    new-instance v0, Lhsb;

    invoke-direct {v0}, Lhsb;-><init>()V

    sput-object v0, Lhrx;->c:Lhsb;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhrx;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lhrx;->c:Lhsb;

    invoke-direct {p0, v0}, Lhrx;-><init>(Lhsb;)V

    .line 102
    return-void
.end method

.method private constructor <init>(Lhsb;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lhry;

    invoke-direct {v0}, Lhry;-><init>()V

    iput-object v0, p0, Lhrx;->g:Ljava/lang/ThreadLocal;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhrx;->e:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhrx;->f:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 108
    new-instance v0, Lhsc;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lhsc;-><init>(Lhrx;Landroid/os/Looper;)V

    iput-object v0, p0, Lhrx;->h:Lhsc;

    .line 109
    new-instance v0, Lhrw;

    invoke-direct {v0, p0}, Lhrw;-><init>(Lhrx;)V

    iput-object v0, p0, Lhrx;->i:Lhrw;

    .line 110
    new-instance v0, Lhrv;

    invoke-direct {v0, p0}, Lhrv;-><init>(Lhrx;)V

    iput-object v0, p0, Lhrx;->j:Lhrv;

    .line 111
    new-instance v0, Lhsi;

    invoke-direct {v0}, Lhsi;-><init>()V

    iput-object v0, p0, Lhrx;->k:Lhsi;

    .line 112
    iget-boolean v0, p1, Lhsb;->a:Z

    iput-boolean v0, p0, Lhrx;->m:Z

    .line 113
    iget-boolean v0, p1, Lhsb;->b:Z

    iput-boolean v0, p0, Lhrx;->n:Z

    .line 114
    iget-boolean v0, p1, Lhsb;->c:Z

    iput-boolean v0, p0, Lhrx;->o:Z

    .line 115
    iget-boolean v0, p1, Lhsb;->d:Z

    iput-boolean v0, p0, Lhrx;->p:Z

    .line 116
    iget-boolean v0, p1, Lhsb;->e:Z

    iput-boolean v0, p0, Lhrx;->q:Z

    .line 118
    iget-object v0, p1, Lhsb;->f:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lhrx;->l:Ljava/util/concurrent/ExecutorService;

    .line 119
    return-void
.end method

.method public static a()Lhrx;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lhrx;->b:Lhrx;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lhrx;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lhrx;->b:Lhrx;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lhrx;

    invoke-direct {v0}, Lhrx;-><init>()V

    sput-object v0, Lhrx;->b:Lhrx;

    .line 81
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lhrx;->b:Lhrx;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 455
    sget-object v2, Lhrx;->d:Ljava/util/Map;

    monitor-enter v2

    .line 456
    :try_start_0
    sget-object v0, Lhrx;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 457
    if-nez v0, :cond_1

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    .line 460
    :goto_0
    if-eqz v1, :cond_0

    .line 461
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lhrx;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 463
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 465
    :cond_0
    sget-object v1, Lhrx;->d:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_1
    monitor-exit v2

    return-object v0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lhsj;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 498
    :try_start_0
    iget-object v0, p1, Lhsj;->b:Lhsh;

    iget-object v0, v0, Lhsh;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lhsj;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    instance-of v0, p2, Lhsg;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lhrx;->m:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubscriberExceptionEvent subscriber "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lhsj;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threw an exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Lhsg;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initial event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lhsg;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caused exception in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lhsg;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lhrx;->m:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not dispatch event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to subscribing class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lhsj;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v0, p0, Lhrx;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Lhsg;

    iget-object v1, p1, Lhsj;->a:Ljava/lang/Object;

    invoke-direct {v0, p2, v1}, Lhsg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lhrx;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 501
    :catch_1
    move-exception v0

    .line 502
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 473
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 474
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 475
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lhrx;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 473
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Object;Lhsa;Ljava/lang/Class;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lhsa;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 401
    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v0, p0, Lhrx;->e:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 403
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 404
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 405
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsj;

    .line 406
    :try_start_1
    iget-boolean v3, p2, Lhsa;->c:Z

    sget-object v4, Lhrz;->a:[I

    iget-object v5, v0, Lhsj;->b:Lhsh;

    iget-object v5, v5, Lhsh;->b:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v5}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown thread mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lhsj;->b:Lhsh;

    iget-object v0, v0, Lhsh;->b:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :catchall_0
    move-exception v0

    throw v0

    .line 403
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 406
    :pswitch_0
    :try_start_3
    invoke-direct {p0, v0, p1}, Lhrx;->a(Lhsj;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    if-eqz v3, :cond_0

    invoke-direct {p0, v0, p1}, Lhrx;->a(Lhsj;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lhrx;->h:Lhsc;

    invoke-static {v0, p1}, Lhse;->a(Lhsj;Ljava/lang/Object;)Lhse;

    move-result-object v0

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, v3, Lhsc;->a:Lhsf;

    invoke-virtual {v4, v0}, Lhsf;->a(Lhse;)V

    iget-boolean v0, v3, Lhsc;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v3, Lhsc;->b:Z

    invoke-virtual {v3}, Lhsc;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhsc;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lde/greenrobot/event/EventBusException;

    const-string v1, "Could not send handler message"

    invoke-direct {v0, v1}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :pswitch_2
    if-eqz v3, :cond_3

    :try_start_7
    iget-object v3, p0, Lhrx;->i:Lhrw;

    invoke-static {v0, p1}, Lhse;->a(Lhsj;Ljava/lang/Object;)Lhse;

    move-result-object v0

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v4, v3, Lhrw;->a:Lhsf;

    invoke-virtual {v4, v0}, Lhsf;->a(Lhse;)V

    iget-boolean v0, v3, Lhrw;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, v3, Lhrw;->c:Z

    iget-object v0, v3, Lhrw;->b:Lhrx;

    iget-object v0, v0, Lhrx;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0

    :cond_3
    invoke-direct {p0, v0, p1}, Lhrx;->a(Lhsj;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v3, p0, Lhrx;->j:Lhrv;

    invoke-static {v0, p1}, Lhse;->a(Lhsj;Ljava/lang/Object;)Lhse;

    move-result-object v0

    iget-object v4, v3, Lhrv;->a:Lhsf;

    invoke-virtual {v4, v0}, Lhsf;->a(Lhse;)V

    iget-object v0, v3, Lhrv;->b:Lhrx;

    iget-object v0, v0, Lhrx;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 423
    :goto_1
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method final a(Lhse;)V
    .locals 3
    .parameter

    .prologue
    .line 488
    iget-object v0, p1, Lhse;->a:Ljava/lang/Object;

    .line 489
    iget-object v1, p1, Lhse;->b:Lhsj;

    .line 490
    invoke-static {p1}, Lhse;->a(Lhse;)V

    .line 491
    iget-boolean v2, v1, Lhsj;->c:Z

    if-eqz v2, :cond_0

    .line 492
    invoke-direct {p0, v1, v0}, Lhrx;->a(Lhsj;Ljava/lang/Object;)V

    .line 494
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhrx;->k:Lhsi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhsi;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsh;

    .line 165
    iget-object v3, v0, Lhsh;->c:Ljava/lang/Class;

    iget-object v1, p0, Lhrx;->e:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lhsj;

    invoke-direct {v4, p1, v0}, Lhsj;-><init>(Ljava/lang/Object;Lhsh;)V

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v0, p0, Lhrx;->e:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v5, :cond_3

    if-eq v0, v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lde/greenrobot/event/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscriber "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already registered to event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :cond_2
    :try_start_1
    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lhrx;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lhrx;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhrx;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/Object;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhrx;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 239
    if-eqz v0, :cond_2

    .line 240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 241
    iget-object v1, p0, Lhrx;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v4

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhsj;

    iget-object v6, v1, Lhsj;->a:Ljava/lang/Object;

    if-ne v6, p1, :cond_3

    const/4 v6, 0x0

    iput-boolean v6, v1, Lhsj;->c:Z

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v2, v3, -0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lhrx;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_2
    monitor-exit p0

    return-void

    .line 245
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subscriber to unregister was not registered before: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 251
    iget-object v0, p0, Lhrx;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsa;

    .line 252
    iget-object v5, v0, Lhsa;->a:Ljava/util/List;

    .line 253
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-boolean v1, v0, Lhsa;->b:Z

    if-nez v1, :cond_6

    .line 256
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lhsa;->c:Z

    .line 257
    iput-boolean v2, v0, Lhsa;->b:Z

    .line 258
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 263
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-boolean v1, p0, Lhrx;->q:Z

    if-eqz v1, :cond_4

    invoke-static {v7}, Lhrx;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v4, v3

    move v2, v3

    :goto_2
    if-ge v4, v9, :cond_2

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, v6, v0, v1}, Lhrx;->a(Ljava/lang/Object;Lhsa;Ljava/lang/Class;)Z

    move-result v1

    or-int/2addr v2, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_1
    move v1, v3

    .line 256
    goto :goto_0

    :cond_2
    move v1, v2

    .line 263
    :goto_3
    if-nez v1, :cond_0

    iget-boolean v1, p0, Lhrx;->n:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No subscribers registered for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lhrx;->p:Z

    if-eqz v1, :cond_0

    const-class v1, Lhsd;

    if-eq v7, v1, :cond_0

    const-class v1, Lhsg;

    if-eq v7, v1, :cond_0

    new-instance v1, Lhsd;

    invoke-direct {v1}, Lhsd;-><init>()V

    invoke-virtual {p0, v1}, Lhrx;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 266
    :catchall_0
    move-exception v1

    iput-boolean v3, v0, Lhsa;->b:Z

    .line 267
    iput-boolean v3, v0, Lhsa;->c:Z

    throw v1

    .line 263
    :cond_4
    :try_start_1
    invoke-direct {p0, v6, v0, v7}, Lhrx;->a(Ljava/lang/Object;Lhsa;Ljava/lang/Class;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_3

    .line 266
    :cond_5
    iput-boolean v3, v0, Lhsa;->b:Z

    .line 267
    iput-boolean v3, v0, Lhsa;->c:Z

    .line 270
    :cond_6
    return-void
.end method
