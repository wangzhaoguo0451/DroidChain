.class public final Leyf;
.super Ljava/util/TimerTask;
.source "WeakTimer.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Leyg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Leyg;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Leyf;->a:Ljava/lang/ref/WeakReference;

    .line 16
    return-void
.end method

.method public static a(Leyg;)V
    .locals 4
    .parameter

    .prologue
    .line 33
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 34
    new-instance v1, Leyf;

    invoke-direct {v1, p0}, Leyf;-><init>(Leyg;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 35
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Leyf;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leyf;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Leyf;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyg;

    invoke-interface {v0}, Leyg;->a()V

    .line 23
    :cond_0
    return-void
.end method
