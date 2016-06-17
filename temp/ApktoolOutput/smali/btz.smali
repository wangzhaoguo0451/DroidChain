.class final Lbtz;
.super Ljava/lang/Object;
.source "RsDmRemoteSysService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lbty;


# direct methods
.method constructor <init>(Lbty;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lbtz;->a:Lbty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lbtz;->a:Lbty;

    invoke-static {p2}, Lcom/redstone/sdk/enabler/remote/IRsSystemService$Stub;->a(Landroid/os/IBinder;)Lcom/redstone/sdk/enabler/remote/IRsSystemService;

    move-result-object v1

    invoke-static {v0, v1}, Lbty;->a(Lbty;Lcom/redstone/sdk/enabler/remote/IRsSystemService;)Lcom/redstone/sdk/enabler/remote/IRsSystemService;

    .line 31
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lbtz;->a:Lbty;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbty;->a(Lbty;Lcom/redstone/sdk/enabler/remote/IRsSystemService;)Lcom/redstone/sdk/enabler/remote/IRsSystemService;

    .line 36
    return-void
.end method
