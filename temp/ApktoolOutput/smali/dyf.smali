.class final Ldyf;
.super Ljava/lang/Object;
.source "BaseFetcher.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldye;",
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

    sput-object v0, Ldyf;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ldye;
    .locals 1
    .parameter

    .prologue
    .line 344
    invoke-static {p0}, Ldyf;->b(Ljava/lang/String;)Ldye;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;)Ldye;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ldye",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    const-class v1, Ldyf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldyf;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldye;

    .line 352
    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ldye;

    invoke-direct {v0}, Ldye;-><init>()V

    .line 355
    :cond_0
    sget-object v2, Ldyf;->a:Ljava/util/Map;

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
