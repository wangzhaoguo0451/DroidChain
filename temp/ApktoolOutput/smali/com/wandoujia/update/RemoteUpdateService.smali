.class public final Lcom/wandoujia/update/RemoteUpdateService;
.super Landroid/app/Service;
.source "RemoteUpdateService.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lhqs;

.field private d:Lcom/wandoujia/update/aidl/IUpdateCallback;

.field private e:Lcom/wandoujia/update/aidl/UpdateParams;

.field private f:Lcom/wandoujia/update/protocol/UpdateInfo;

.field private g:Ljava/lang/Runnable;

.field private h:Lhra;

.field private i:Lhqy;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lcom/wandoujia/update/aidl/IUpdateCallback;

.field private n:Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/update/RemoteUpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/update/RemoteUpdateService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lhra;

    invoke-direct {v0, p0}, Lhra;-><init>(Lcom/wandoujia/update/RemoteUpdateService;)V

    iput-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->h:Lhra;

    .line 41
    new-instance v0, Lhqy;

    invoke-direct {v0, p0}, Lhqy;-><init>(Lcom/wandoujia/update/RemoteUpdateService;)V

    iput-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->i:Lhqy;

    .line 43
    iput v1, p0, Lcom/wandoujia/update/RemoteUpdateService;->j:I

    .line 44
    iput v1, p0, Lcom/wandoujia/update/RemoteUpdateService;->k:I

    .line 45
    iput-boolean v1, p0, Lcom/wandoujia/update/RemoteUpdateService;->l:Z

    .line 47
    new-instance v0, Lhqo;

    invoke-direct {v0, p0}, Lhqo;-><init>(Lcom/wandoujia/update/RemoteUpdateService;)V

    iput-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->m:Lcom/wandoujia/update/aidl/IUpdateCallback;

    .line 272
    new-instance v0, Lhqq;

    invoke-direct {v0, p0}, Lhqq;-><init>(Lcom/wandoujia/update/RemoteUpdateService;)V

    iput-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->n:Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/update/RemoteUpdateService;Lcom/wandoujia/update/aidl/IUpdateCallback;)Lcom/wandoujia/update/aidl/IUpdateCallback;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wandoujia/update/RemoteUpdateService;->d:Lcom/wandoujia/update/aidl/IUpdateCallback;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/UpdateParams;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->e:Lcom/wandoujia/update/aidl/UpdateParams;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/update/RemoteUpdateService;Lcom/wandoujia/update/aidl/UpdateParams;)Lcom/wandoujia/update/aidl/UpdateParams;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wandoujia/update/RemoteUpdateService;->e:Lcom/wandoujia/update/aidl/UpdateParams;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/update/RemoteUpdateService;Lcom/wandoujia/update/protocol/UpdateInfo;)Lcom/wandoujia/update/protocol/UpdateInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wandoujia/update/RemoteUpdateService;->f:Lcom/wandoujia/update/protocol/UpdateInfo;

    return-object p1
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/wandoujia/update/RemoteUpdateService;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    sget-object v0, Lcom/wandoujia/update/RemoteUpdateService;->a:Ljava/lang/String;

    const-string v1, "updateDelay() delayMS = %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wandoujia/update/RemoteUpdateService;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 89
    iget-boolean v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->l:Z

    if-nez v0, :cond_1

    .line 90
    iget v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->j:I

    .line 91
    iput-boolean v5, p0, Lcom/wandoujia/update/RemoteUpdateService;->l:Z

    .line 92
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->c:Lhqs;

    iget-object v1, p0, Lcom/wandoujia/update/RemoteUpdateService;->e:Lcom/wandoujia/update/aidl/UpdateParams;

    iget-object v1, v1, Lcom/wandoujia/update/aidl/UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iget-object v2, p0, Lcom/wandoujia/update/RemoteUpdateService;->i:Lhqy;

    invoke-virtual {v0, v1, v2}, Lhqs;->a(Lcom/wandoujia/update/protocol/CheckUpdateProtocol;Lhqy;)V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    new-instance v0, Lhqp;

    invoke-direct {v0, p0}, Lhqp;-><init>(Lcom/wandoujia/update/RemoteUpdateService;)V

    iput-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->g:Ljava/lang/Runnable;

    .line 112
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wandoujia/update/RemoteUpdateService;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/update/RemoteUpdateService;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/update/RemoteUpdateService;->a(J)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/update/RemoteUpdateService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/wandoujia/update/RemoteUpdateService;->l:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/protocol/UpdateInfo;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->f:Lcom/wandoujia/update/protocol/UpdateInfo;

    return-object v0
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 217
    iget v1, p0, Lcom/wandoujia/update/RemoteUpdateService;->k:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/wandoujia/update/RemoteUpdateService;->l:Z

    if-nez v1, :cond_0

    .line 218
    sget-object v1, Lcom/wandoujia/update/RemoteUpdateService;->a:Ljava/lang/String;

    const-string v2, "stopSelf"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0}, Lcom/wandoujia/update/RemoteUpdateService;->stopSelf()V

    .line 220
    const/4 v0, 0x1

    .line 222
    :cond_0
    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->n:Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/update/RemoteUpdateService;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->l:Z

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/update/RemoteUpdateService;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->j:I

    return v0
.end method

.method public static synthetic f(Lcom/wandoujia/update/RemoteUpdateService;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->j:I

    return v0
.end method

.method public static synthetic g(Lcom/wandoujia/update/RemoteUpdateService;)Lhqs;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->c:Lhqs;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/update/RemoteUpdateService;)Lhqy;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->i:Lhqy;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateCallback;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->d:Lcom/wandoujia/update/aidl/IUpdateCallback;

    return-object v0
.end method

.method public static synthetic j(Lcom/wandoujia/update/RemoteUpdateService;)Lhra;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->h:Lhra;

    return-object v0
.end method

.method public static synthetic k(Lcom/wandoujia/update/RemoteUpdateService;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->l:Z

    invoke-direct {p0}, Lcom/wandoujia/update/RemoteUpdateService;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->e:Lcom/wandoujia/update/aidl/UpdateParams;

    iget-wide v0, v0, Lcom/wandoujia/update/aidl/UpdateParams;->updateDurationMs:J

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/update/RemoteUpdateService;->a(J)V

    :cond_0
    return-void
.end method

.method public static synthetic l(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateCallback;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->m:Lcom/wandoujia/update/aidl/IUpdateCallback;

    return-object v0
.end method

.method public static synthetic m(Lcom/wandoujia/update/RemoteUpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter

    .prologue
    .line 330
    sget-object v0, Lcom/wandoujia/update/RemoteUpdateService;->a:Ljava/lang/String;

    const-string v1, "onBind()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->k:I

    .line 332
    iget-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->n:Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;

    return-object v0
.end method

.method public final onCreate()V
    .locals 3

    .prologue
    .line 302
    sget-object v0, Lcom/wandoujia/update/RemoteUpdateService;->a:Ljava/lang/String;

    const-string v1, "onCreate()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 304
    new-instance v0, Lhqr;

    invoke-direct {v0, p0}, Lhqr;-><init>(Lcom/wandoujia/update/RemoteUpdateService;)V

    iput-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->b:Landroid/os/Handler;

    .line 305
    new-instance v0, Lhqs;

    invoke-virtual {p0}, Lcom/wandoujia/update/RemoteUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lhqs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->c:Lhqs;

    .line 306
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    .line 323
    sget-object v0, Lcom/wandoujia/update/RemoteUpdateService;->a:Ljava/lang/String;

    const-string v1, "onDestroy()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->c:Lhqs;

    .line 326
    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 345
    sget-object v0, Lcom/wandoujia/update/RemoteUpdateService;->a:Ljava/lang/String;

    const-string v1, "onRebind()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->k:I

    .line 347
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    sget-object v0, Lcom/wandoujia/update/RemoteUpdateService;->a:Ljava/lang/String;

    const-string v1, "onStartCommand()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    if-eqz p1, :cond_0

    const-string v0, "com.wandoujia.update.toolkit.install"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "FILE_PATH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/wandoujia/update/RemoteUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FILE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter

    .prologue
    .line 337
    sget-object v0, Lcom/wandoujia/update/RemoteUpdateService;->a:Ljava/lang/String;

    const-string v1, "onUnbind()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wandoujia/update/RemoteUpdateService;->k:I

    .line 339
    invoke-direct {p0}, Lcom/wandoujia/update/RemoteUpdateService;->b()Z

    .line 340
    const/4 v0, 0x1

    return v0
.end method
