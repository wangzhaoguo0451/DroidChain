.class public final Leha;
.super Ljava/lang/Object;
.source "OnlineConfigController.java"


# static fields
.field private static a:Leha;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lehd;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Leha;->c:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leha;->b:Ljava/util/List;

    .line 46
    invoke-static {}, Leha;->n()V

    .line 47
    return-void
.end method

.method public static declared-synchronized a()Leha;
    .locals 2

    .prologue
    .line 57
    const-class v1, Leha;

    monitor-enter v1

    :try_start_0
    sget-object v0, Leha;->a:Leha;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Leha;->o()V

    .line 60
    :cond_0
    sget-object v0, Leha;->a:Leha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Leha;->b:Ljava/util/List;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Leha;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehd;

    .line 138
    if-eqz v0, :cond_0

    .line 139
    iget-object v3, p0, Leha;->c:Landroid/os/Handler;

    new-instance v4, Lehb;

    invoke-direct {v4, v0, p1}, Lehb;-><init>(Lehd;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 146
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 149
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    const-string v0, "launcher_apk_url"

    invoke-static {v0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string v0, "http://upload.cdn.wandoujia.com/games/launcher/game_launcher_1.0.19.160.apk"

    .line 170
    :cond_0
    return-object v0
.end method

.method public static e()I
    .locals 3

    .prologue
    const/16 v0, 0xa0

    .line 175
    const-string v1, "launcher_apk_vc"

    invoke-static {v1}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    :goto_0
    return v0

    .line 180
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    const-string v0, "launcher_apk_icon"

    invoke-static {v0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v0, "http://upload.cdn.wandoujia.com/games/launcher/game_launcher_icon_v2_192_192.png"

    .line 193
    :cond_0
    return-object v0
.end method

.method public static g()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 211
    const-string v1, "enable_update_apk_gl"

    invoke-static {v1}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    :goto_0
    return v0

    .line 217
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static h()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 225
    const-string v1, "enable_guess_apk_gl"

    invoke-static {v1}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    :goto_0
    return v0

    .line 231
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    const-string v0, "launcher_zero_game_icon"

    invoke-static {v0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const-string v0, ""

    .line 272
    :cond_0
    return-object v0
.end method

.method public static j()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 291
    const-string v1, "alert_update_gl_interval"

    invoke-static {v1}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    :goto_0
    return v0

    .line 297
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static k()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 310
    const-string v1, "enable_update_gl_for_new_user"

    invoke-static {v1}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    :goto_0
    return v0

    .line 316
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static l()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 329
    const-string v1, "enable_gl_guide"

    invoke-static {v1}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    :goto_0
    return v0

    .line 335
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 374
    const-string v0, "gl_guide_button"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/launcher_base/R$string;->launcher_guide_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()V
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lehc;

    invoke-direct {v0}, Lehc;-><init>()V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 448
    return-void
.end method

.method private static declared-synchronized o()V
    .locals 2

    .prologue
    .line 50
    const-class v1, Leha;

    monitor-enter v1

    :try_start_0
    sget-object v0, Leha;->a:Leha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    monitor-exit v1

    return-void

    .line 53
    :cond_0
    :try_start_1
    new-instance v0, Leha;

    invoke-direct {v0}, Leha;-><init>()V

    sput-object v0, Leha;->a:Leha;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lehd;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    iget-object v1, p0, Leha;->b:Ljava/util/List;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Leha;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 66
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehd;

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    monitor-exit v1

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Leha;->b:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lehe;

    invoke-direct {v1, p0}, Lehe;-><init>(Leha;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public final declared-synchronized c()Lcom/wandoujia/launcher_base/onlineconfig/OnlineConfigResult;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    const-string v0, "cfg_version"

    invoke-static {v0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v2, "wdj_version"

    invoke-static {v2}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    :cond_0
    const-string v0, "0"

    move-object v2, v0

    .line 91
    :goto_0
    new-instance v3, Lefo;

    invoke-direct {v3}, Lefo;-><init>()V

    .line 92
    invoke-virtual {v3}, Lefo;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lefw;

    iput-object v2, v0, Lefw;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-static {}, Legx;->d()Lcom/wandoujia/rpc/http/client/DataApi;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/wandoujia/rpc/http/client/DataApi;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/onlineconfig/OnlineConfigResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    .line 96
    :goto_1
    if-nez v2, :cond_1

    move-object v0, v1

    .line 105
    :goto_2
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 101
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/wandoujia/launcher_base/onlineconfig/OnlineConfigResult;->getUpdate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/wandoujia/launcher_base/onlineconfig/OnlineConfigResult;->getUpdate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    invoke-virtual {v2}, Lcom/wandoujia/launcher_base/onlineconfig/OnlineConfigResult;->toMap()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_3
    :try_start_3
    const-string v0, "wdj_version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ld;->c(Ljava/util/Map;)V

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v4}, Leha;->a(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    move-object v0, v2

    .line 105
    goto :goto_2

    :cond_5
    move-object v2, v0

    goto/16 :goto_0
.end method
