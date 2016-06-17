.class public final Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ldrs;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/wandoujia/base/utils/Preferences;

.field private c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_search_history"

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/Preferences;->getById(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b:Lcom/wandoujia/base/utils/Preferences;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a:Ljava/util/Set;

    .line 38
    return-void
.end method

.method private declared-synchronized a()Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;
    .locals 4

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b:Lcom/wandoujia/base/utils/Preferences;

    const-string v1, "key_search_history_v2"

    const-class v2, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    new-instance v3, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    invoke-direct {v3}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/base/utils/Preferences;->getObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    .line 117
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->normalize()V

    .line 118
    invoke-direct {p0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b()Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    #getter for: Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;
    invoke-static {v1}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->access$000(Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;)Ljava/util/List;

    move-result-object v1

    #getter for: Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->access$000(Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b:Lcom/wandoujia/base/utils/Preferences;

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    const-string v1, "key_search_history_v2"

    iget-object v2, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putObject(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;
    .locals 7

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b:Lcom/wandoujia/base/utils/Preferences;

    const-string v1, "key_search_history"

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b:Lcom/wandoujia/base/utils/Preferences;

    const-string v1, "key_search_history"

    const-class v3, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$OldSearchHistory;

    new-instance v4, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$OldSearchHistory;

    invoke-direct {v4}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$OldSearchHistory;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Lcom/wandoujia/base/utils/Preferences;->getObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$OldSearchHistory;

    .line 135
    new-instance v1, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;-><init>()V

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$OldSearchHistory;->getHistory()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ldrr;

    invoke-direct {v0}, Ldrr;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    #getter for: Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;
    invoke-static {v1}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->access$000(Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v6, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    invoke-direct {v5, v0, v6}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;-><init>(Ljava/lang/String;Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    .line 138
    :goto_1
    return-object v0

    .line 136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b:Lcom/wandoujia/base/utils/Preferences;

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    const-string v2, "key_search_history"

    invoke-virtual {v0, v2}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 139
    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private declared-synchronized b(Ljava/lang/String;Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    sget-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->APP:Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    .line 65
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b:Lcom/wandoujia/base/utils/Preferences;

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    const-string v1, "key_search_history_v2"

    invoke-direct {p0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a()Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->addSearchHistory(Ljava/lang/String;Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putObject(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    invoke-direct {p0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a:Ljava/util/Set;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 175
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrs;

    .line 177
    if-eqz v0, :cond_1

    .line 178
    iget-object v3, v0, Ldrs;->a:Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;

    invoke-static {v3}, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->a(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)Leqw;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Ldrs;->a:Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->b(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->h()V

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 180
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 183
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a()Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->getSearchHistories(Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a()Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p1, p2, v1}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->getHistorySuggestions(Ljava/lang/String;Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b(Ljava/lang/String;Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)V
    .locals 3
    .parameter

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    if-ne p1, v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    .line 104
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b:Lcom/wandoujia/base/utils/Preferences;

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    const-string v1, "key_search_history_v2"

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    :goto_0
    invoke-direct {p0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a()Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    .line 107
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    invoke-virtual {v0, p1}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->clear(Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    .line 108
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->b:Lcom/wandoujia/base/utils/Preferences;

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    const-string v1, "key_search_history_v2"

    iget-object v2, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->c:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putObject(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
