.class public final Ledy;
.super Ljava/lang/Object;
.source "WanUtils.java"


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ledy;->b:[B

    return-void
.end method

.method private static a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 22
    sget-object v1, Ledy;->b:[B

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Ledy;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ledz;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Ledz;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ledy;->a:Landroid/os/Handler;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    sget-object v0, Ledy;->a:Landroid/os/Handler;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-static {}, Ledy;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 4
    .parameter

    .prologue
    .line 51
    invoke-static {}, Ledy;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    return-void
.end method
