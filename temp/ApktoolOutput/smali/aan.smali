.class public final Laan;
.super Ljava/lang/Object;
.source "DeviceIdManager.java"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Laan;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Laan;->b:Landroid/content/Context;

    .line 16
    invoke-static {p1}, Laat;->a(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laao;

    invoke-direct {v1, p1, p2}, Laao;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x14

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Laap;

    invoke-direct {v2}, Laap;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    :try_start_0
    new-instance v0, Laaq;

    invoke-direct {v0}, Laaq;-><init>()V

    .line 26
    iget-object v0, p0, Laan;->b:Landroid/content/Context;

    invoke-static {v0}, Laaq;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 27
    sput-object v0, Laan;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Laan;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Laan;->a(Landroid/content/Context;Ljava/util/Map;)V

    move-object v0, v1

    .line 47
    :goto_0
    return-object v0

    .line 32
    :cond_0
    sget-object v0, Laan;->a:Ljava/util/Map;

    invoke-static {v0}, Laaq;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sget-object v0, Laan;->a:Ljava/util/Map;

    const-string v2, "deviceId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :goto_1
    :try_start_1
    iget-object v1, p0, Laan;->b:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Laan;->a(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 38
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    const-string v0, "tid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "tid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 40
    const-string v0, "tid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    const-string v0, "utdid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "utdid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 42
    const-string v0, "utdid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_2
    invoke-static {v2}, Laat;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {v3}, Laat;->a(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
