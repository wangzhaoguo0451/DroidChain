.class public final Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;
.super Lhpu;
.source "AppIgnoreUpdateStorage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhpu",
        "<",
        "Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage$IgnoreUpdateApp;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lhpu;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;->c:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    invoke-direct {v0}, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;-><init>()V

    sput-object v0, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;->c:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;

    .line 25
    :cond_0
    sget-object v0, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;->c:Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage$IgnoreUpdateApp;

    invoke-direct {v0, p1}, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage$IgnoreUpdateApp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage;->a(Lcom/wandoujia/shared_storage/StorageLine;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    new-instance v3, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage$IgnoreUpdateApp;

    invoke-direct {v3, v0}, Lcom/wandoujia/shared_storage/AppIgnoreUpdateStorage$IgnoreUpdateApp;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lhpu;->a:Landroid/os/Handler;

    new-instance v2, Lhpw;

    invoke-direct {v2, p0, v1}, Lhpw;-><init>(Lhpu;Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "ignore_update_apps"

    return-object v0
.end method

.method protected final c()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lhpq;

    invoke-direct {v0}, Lhpq;-><init>()V

    invoke-virtual {v0}, Lhpq;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
