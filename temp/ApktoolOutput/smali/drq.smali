.class public final Ldrq;
.super Ljava/lang/Object;
.source "SearchHintCache.java"


# instance fields
.field private a:Lcom/wandoujia/base/utils/Preferences;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldrq;->b:Ljava/util/Map;

    .line 23
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_search_hint"

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/Preferences;->getById(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    iput-object v0, p0, Ldrq;->a:Lcom/wandoujia/base/utils/Preferences;

    .line 24
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)Ljava/util/Set;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldrq;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 33
    invoke-static {}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->values()[Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 34
    iget-object v4, p0, Ldrq;->a:Lcom/wandoujia/base/utils/Preferences;

    invoke-virtual {v3}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/wandoujia/base/utils/Preferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 35
    invoke-static {v4}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    iget-object v5, p0, Ldrq;->b:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Ldrq;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldrq;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Ldrq;->a:Lcom/wandoujia/base/utils/Preferences;

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
