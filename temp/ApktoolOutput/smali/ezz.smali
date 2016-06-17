.class public final Lezz;
.super Ljava/lang/Object;
.source "ALManager.java"


# static fields
.field private static f:Lezz;


# instance fields
.field public a:Landroid/os/Handler;

.field b:Landroid/os/Handler;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lfad;",
            ">;"
        }
    .end annotation
.end field

.field d:Leeq;

.field e:Lcom/wandoujia/appmanager/LocalAppChangedListener;

.field private g:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lezz;->b:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppLauncherTaskThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lezz;->g:Landroid/os/HandlerThread;

    .line 45
    iget-object v0, p0, Lezz;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    new-instance v0, Lfae;

    iget-object v1, p0, Lezz;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lfae;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lezz;->a:Landroid/os/Handler;

    .line 47
    iget-object v0, p0, Lezz;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    return-void
.end method

.method public static declared-synchronized a()Lezz;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lezz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lezz;->f:Lezz;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lezz;

    invoke-direct {v0}, Lezz;-><init>()V

    sput-object v0, Lezz;->f:Lezz;

    .line 57
    :cond_0
    sget-object v0, Lezz;->f:Lezz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lfad;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must run on UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lezz;->c:Ljava/lang/ref/WeakReference;

    .line 91
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lezz;->a:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    return-void
.end method
