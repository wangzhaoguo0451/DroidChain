.class public final Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;
.super Ljava/lang/Object;
.source "SubscribeRefreshFlagChecker.java"


# static fields
.field private static c:Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lgcj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lgca;

    invoke-direct {v0}, Lgca;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->b:Lgcj;

    .line 91
    iput-object p1, p0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public static a()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    const-string v1, "pheonix.intent.action.LOGIN_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "pheonix.intent.action.REGISTER_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "pheonix.intent.action.LOGOUT_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;
    .locals 2
    .parameter

    .prologue
    .line 117
    const-class v1, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->c:Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->c:Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;

    .line 120
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->c:Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 24
    sget-object v0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 130
    sget-object v0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v2, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_0
    return v1

    .line 136
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 137
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 138
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
