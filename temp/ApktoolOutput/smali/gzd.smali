.class public final Lgzd;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# instance fields
.field private final a:Lcom/wandoujia/plugin/qr/CaptureActivity;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/wandoujia/plugin/qr/CaptureActivity;Lbnt;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/plugin/qr/CaptureActivity;",
            "Lbnt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 50
    iput-object p1, p0, Lgzd;->a:Lcom/wandoujia/plugin/qr/CaptureActivity;

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lgzd;->d:Ljava/util/concurrent/CountDownLatch;

    .line 53
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lgzd;->b:Ljava/util/Map;

    .line 57
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 59
    const-class v0, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 60
    invoke-static {}, Lgza;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lgzb;->a:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_0
    invoke-static {}, Lgza;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    sget-object v1, Lgzb;->b:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_1
    invoke-static {}, Lgza;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    sget-object v1, Lgzb;->c:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 70
    :cond_2
    iget-object v1, p0, Lgzd;->b:Ljava/util/Map;

    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lgzd;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lgzd;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget-object v0, p0, Lgzd;->c:Landroid/os/Handler;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 90
    new-instance v0, Lgzc;

    iget-object v1, p0, Lgzd;->a:Lcom/wandoujia/plugin/qr/CaptureActivity;

    iget-object v2, p0, Lgzd;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lgzc;-><init>(Lcom/wandoujia/plugin/qr/CaptureActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lgzd;->c:Landroid/os/Handler;

    .line 91
    iget-object v0, p0, Lgzd;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 92
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 93
    return-void
.end method
