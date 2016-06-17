.class final Lfoq;
.super Ljava/lang/Object;
.source "ConnectionServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lfop;


# direct methods
.method constructor <init>(Lfop;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lfoq;->a:Lfop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lfoq;->a:Lfop;

    invoke-static {p2}, Lcom/wandoujia/connection/IConnectionService$Stub;->a(Landroid/os/IBinder;)Lcom/wandoujia/connection/IConnectionService;

    move-result-object v1

    invoke-static {v0, v1}, Lfop;->a(Lfop;Lcom/wandoujia/connection/IConnectionService;)Lcom/wandoujia/connection/IConnectionService;

    .line 64
    :try_start_0
    iget-object v0, p0, Lfoq;->a:Lfop;

    invoke-static {v0}, Lfop;->b(Lfop;)Lcom/wandoujia/connection/IConnectionService;

    move-result-object v0

    iget-object v1, p0, Lfoq;->a:Lfop;

    invoke-static {v1}, Lfop;->a(Lfop;)Lcom/wandoujia/connection/IConnectionServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wandoujia/connection/IConnectionService;->a(Lcom/wandoujia/connection/IConnectionServiceCallback;)V

    .line 65
    invoke-static {}, Lfop;->d()V

    .line 66
    invoke-static {}, Lfop;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lfoq;->a:Lfop;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfop;->a(Lfop;Lcom/wandoujia/connection/IConnectionService;)Lcom/wandoujia/connection/IConnectionService;

    .line 75
    invoke-static {}, Lfpv;->c()Lfpv;

    move-result-object v0

    invoke-virtual {v0}, Lfpv;->i()V

    .line 76
    invoke-static {}, Lfop;->f()V

    .line 77
    return-void
.end method
