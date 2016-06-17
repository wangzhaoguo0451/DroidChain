.class public final Letz;
.super Ljava/lang/Object;
.source "PhoenixAccountManager.java"


# static fields
.field private static b:Letz;


# instance fields
.field public a:Lcmm;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Letz;->c:Landroid/content/Context;

    .line 30
    new-instance v0, Lcmm;

    const-string v1, "phoenix2"

    const-string v2, ""

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lese;->a(Landroid/content/Context;)Lcom/wandoujia/account/dto/DeviceBean;

    move-result-object v3

    new-instance v4, Lcmi;

    invoke-direct {v4}, Lcmi;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcmm;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;)V

    iput-object v0, p0, Letz;->a:Lcmm;

    .line 33
    iget-object v0, p0, Letz;->a:Lcmm;

    new-instance v1, Lety;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lety;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcmm;->a(Lcom/wandoujia/account/listener/IAccountListener;)V

    .line 35
    iget-object v0, p0, Letz;->a:Lcmm;

    new-instance v1, Lfcj;

    invoke-direct {v1}, Lfcj;-><init>()V

    invoke-virtual {v0, v1}, Lcmm;->a(Lcom/wandoujia/account/listener/IAccountListener;)V

    .line 36
    return-void
.end method

.method public static declared-synchronized a()Letz;
    .locals 2

    .prologue
    .line 39
    const-class v1, Letz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Letz;->b:Letz;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Letz;

    invoke-direct {v0}, Letz;-><init>()V

    sput-object v0, Letz;->b:Letz;

    .line 43
    :cond_0
    sget-object v0, Letz;->b:Letz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcmg;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Letz;->a:Lcmm;

    const-string v1, "verify_account"

    invoke-virtual {v0, v1, p1}, Lcmm;->a(Ljava/lang/String;Lcmg;)V

    .line 105
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pheonix.intent.action.LOGOUT_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    if-eqz p1, :cond_0

    .line 292
    const-string v1, "phoenix.intent.extra_ACCOUNT_EXPIRED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    :cond_0
    iget-object v1, p0, Letz;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    return-void
.end method

.method public final b()V
    .locals 9

    .prologue
    .line 100
    iget-object v4, p0, Letz;->a:Lcmm;

    const-string v3, "verify_account"

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcng;

    const-string v1, ""

    iget-object v2, v4, Lcmm;->d:Lcmo;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/wandoujia/account/dto/FIELDS;

    const/4 v7, 0x0

    sget-object v8, Lcom/wandoujia/account/dto/FIELDS;->BASIC_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    aput-object v8, v5, v7

    invoke-direct/range {v0 .. v5}, Lcng;-><init>(Ljava/lang/String;Lcmg;Ljava/lang/String;Lcmm;[Lcom/wandoujia/account/dto/FIELDS;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 101
    return-void
.end method
