.class final Ldwi;
.super Ljava/lang/Object;
.source "UpdateNotification.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Ldwh;


# direct methods
.method constructor <init>(Ldwh;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Ldwi;->a:Ldwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Ldwi;->a:Ldwh;

    check-cast p2, Lhqj;

    iget-object v1, p2, Lhqj;->a:Lcom/wandoujia/update/LocalUpdateService;

    iput-object v1, v0, Ldwh;->a:Lcom/wandoujia/update/LocalUpdateService;

    .line 374
    iget-object v0, p0, Ldwi;->a:Ldwh;

    iget-object v0, v0, Ldwh;->a:Lcom/wandoujia/update/LocalUpdateService;

    iget-object v1, p0, Ldwi;->a:Ldwh;

    iput-object v1, v0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    .line 375
    iget-object v0, p0, Ldwi;->a:Ldwh;

    iget-object v0, v0, Ldwh;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-virtual {v0}, Lcom/wandoujia/update/LocalUpdateService;->a()Z

    .line 376
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Ldwi;->a:Ldwh;

    const/4 v1, 0x0

    iput-object v1, v0, Ldwh;->a:Lcom/wandoujia/update/LocalUpdateService;

    .line 381
    return-void
.end method
