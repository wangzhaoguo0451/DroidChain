.class final Lfsq;
.super Ljava/lang/Object;
.source "BaseFetcher.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfsp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfsq;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lfsp;
    .locals 1
    .parameter

    .prologue
    .line 344
    invoke-static {p0}, Lfsq;->b(Ljava/lang/String;)Lfsp;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;)Lfsp;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lfsp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    const-class v1, Lfsq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfsq;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsp;

    .line 352
    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lfsp;

    invoke-direct {v0}, Lfsp;-><init>()V

    .line 355
    :cond_0
    sget-object v2, Lfsq;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit v1

    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
