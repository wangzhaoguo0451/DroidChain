.class public final Lajm;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "CallerThreadExecutor.java"


# static fields
.field private static final a:Lajm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lajm;

    invoke-direct {v0}, Lajm;-><init>()V

    sput-object v0, Lajm;->a:Lajm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 45
    return-void
.end method

.method public static a()Lajm;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lajm;->a:Lajm;

    return-object v0
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 50
    return-void
.end method

.method public final isShutdown()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public final isTerminated()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final shutdown()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lajm;->shutdown()V

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
