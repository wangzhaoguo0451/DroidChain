.class final Ldvy;
.super Ljava/lang/Object;
.source "UpdateClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Ldvw;


# direct methods
.method constructor <init>(Ldvw;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Ldvy;->a:Ldvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    instance-of v0, p2, Lhqj;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Ldvy;->a:Ldvw;

    check-cast p2, Lhqj;

    iget-object v1, p2, Lhqj;->a:Lcom/wandoujia/update/LocalUpdateService;

    iput-object v1, v0, Ldvw;->b:Lcom/wandoujia/update/LocalUpdateService;

    .line 78
    iget-object v0, p0, Ldvy;->a:Ldvw;

    iget-object v0, v0, Ldvw;->b:Lcom/wandoujia/update/LocalUpdateService;

    iget-object v1, p0, Ldvy;->a:Ldvw;

    iput-object v1, v0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    .line 79
    iget-object v0, p0, Ldvy;->a:Ldvw;

    iget-object v0, v0, Ldvw;->b:Lcom/wandoujia/update/LocalUpdateService;

    invoke-virtual {v0}, Lcom/wandoujia/update/LocalUpdateService;->a()Z

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Ldvy;->a:Ldvw;

    const/4 v1, 0x0

    iput-object v1, v0, Ldvw;->b:Lcom/wandoujia/update/LocalUpdateService;

    .line 85
    return-void
.end method
