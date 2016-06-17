.class public final Lajv;
.super Lajr;
.source "UiThreadImmediateExecutorService.java"


# static fields
.field private static b:Lajv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lajv;->b:Lajv;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lajr;-><init>(Landroid/os/Handler;)V

    .line 28
    return-void
.end method

.method public static a()Lajv;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lajv;->b:Lajv;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lajv;

    invoke-direct {v0}, Lajv;-><init>()V

    sput-object v0, Lajv;->b:Lajv;

    .line 34
    :cond_0
    sget-object v0, Lajv;->b:Lajv;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lajr;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 44
    :goto_1
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_1
    invoke-super {p0, p1}, Lajr;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
