.class public final Lbuw;
.super Ljava/lang/Object;
.source "SsoHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbuw;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p2}, Lcom/sina/sso/RemoteSSO$Stub;->a(Landroid/os/IBinder;)Lcom/sina/sso/RemoteSSO;

    move-result-object v0

    .line 97
    :try_start_0
    invoke-interface {v0}, Lcom/sina/sso/RemoteSSO;->a()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-interface {v0}, Lcom/sina/sso/RemoteSSO;->b()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lbuw;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v2, v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lbuw;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v3, v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 103
    iget-object v2, p0, Lbuw;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v2, v1, v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lbuw;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v0, v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->a:Lbux;

    iget-object v1, p0, Lbuw;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    invoke-virtual {v0, v1}, Lbux;->a(Lbuv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lbuw;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v0, v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->a:Lbux;

    iget-object v1, p0, Lbuw;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    invoke-virtual {v0, v1}, Lbux;->a(Lbuv;)V

    .line 91
    return-void
.end method
