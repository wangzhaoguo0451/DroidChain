.class public final Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;
.super Ljava/lang/Object;
.source "ProfileHistoryManager.java"


# static fields
.field private static b:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    .line 58
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    .line 59
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static declared-synchronized a()Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;->b:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;

    invoke-direct {v0}, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;->b:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;

    .line 66
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;->b:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 144
    new-instance v0, Leua;

    invoke-direct {v0, p0, p1, p2}, Leua;-><init>(Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;J)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
