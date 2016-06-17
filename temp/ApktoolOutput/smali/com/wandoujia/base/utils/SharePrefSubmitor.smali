.class public Lcom/wandoujia/base/utils/SharePrefSubmitor;
.super Ljava/lang/Object;
.source "SharePrefSubmitor.java"


# static fields
.field private static final pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/base/utils/SharePrefSubmitor;->pool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static submit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 16
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    :goto_0
    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/wandoujia/base/utils/SharePrefSubmitor;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcrj;

    invoke-direct {v1, p0}, Lcrj;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
