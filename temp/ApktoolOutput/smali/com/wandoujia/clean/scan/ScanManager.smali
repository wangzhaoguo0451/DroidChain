.class public final Lcom/wandoujia/clean/scan/ScanManager;
.super Ljava/lang/Object;
.source "ScanManager.java"


# instance fields
.field private volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/wandoujia/clean/scan/ScanManager;

    invoke-direct {v0}, Lcom/wandoujia/clean/scan/ScanManager;-><init>()V

    .line 185
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/clean/scan/ScanManager;->a:Z

    .line 30
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    .line 33
    new-instance v0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(I)V

    .line 187
    return-void
.end method
