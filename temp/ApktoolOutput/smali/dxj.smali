.class public final Ldxj;
.super Ljava/lang/Object;
.source "LauncherAppDelegate.java"


# static fields
.field private static d:Ldaa;


# instance fields
.field public a:Ldxy;

.field public b:Ldxo;

.field public c:Lcom/wandoujia/game_launcher/receivers/GameLauncherReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/wandoujia/game_launcher/receivers/GameLauncherReceiver;

    invoke-direct {v0}, Lcom/wandoujia/game_launcher/receivers/GameLauncherReceiver;-><init>()V

    iput-object v0, p0, Ldxj;->c:Lcom/wandoujia/game_launcher/receivers/GameLauncherReceiver;

    .line 161
    return-void
.end method

.method public static declared-synchronized a()Ldaa;
    .locals 4

    .prologue
    .line 94
    const-class v1, Ldxj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldxj;->d:Ldaa;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ldxl;

    invoke-direct {v0}, Ldxl;-><init>()V

    .line 144
    new-instance v2, Ldaa;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ldaa;-><init>(Landroid/content/Context;Lczz;)V

    sput-object v2, Ldxj;->d:Ldaa;

    .line 146
    :cond_0
    sget-object v0, Ldxj;->d:Ldaa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
