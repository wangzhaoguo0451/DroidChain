.class public final Leye;
.super Ljava/lang/Object;
.source "ScanAndCleanTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Lcrq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Leye;->a:Lgdw;

    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Leye;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->b()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrq;

    .line 45
    if-nez p1, :cond_0

    .line 46
    invoke-interface {v0}, Lcrq;->a()V

    goto :goto_0

    .line 47
    :cond_0
    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    .line 48
    invoke-interface {v0}, Lcrq;->b()V

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v0, p1}, Lcrq;->a(I)V

    goto :goto_0

    .line 53
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcrq;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Leye;->a:Lgdw;

    invoke-virtual {v0, p1}, Lgdw;->a(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Leye;->a(I)V

    .line 32
    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/MemoryUtil;->killAllProcesses(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Leye;->a(I)V

    .line 38
    invoke-static {}, Lcrr;->a()V

    .line 39
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Leye;->a(I)V

    .line 40
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
