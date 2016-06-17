.class public Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addSearchHistory(Ljava/lang/String;Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 287
    new-instance v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;

    invoke-direct {v0, p1, p2}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;-><init>(Ljava/lang/String;Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)V

    .line 288
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 289
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 293
    :cond_0
    return-object p0
.end method

.method public clear(Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;
    .locals 3
    .parameter

    .prologue
    .line 297
    sget-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    if-ne p1, v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 308
    :cond_0
    return-object p0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 301
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;

    .line 303
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->searchType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public getHistorySuggestions(Ljava/lang/String;Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;I)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;

    .line 258
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p3, :cond_2

    .line 259
    sget-object v3, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    if-eq p2, v3, :cond_1

    invoke-virtual {p2}, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->searchType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->query:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->query:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    iget-object v0, v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->query:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_2
    return-object v1
.end method

.method public getSearchHistories(Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;I)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 273
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;

    .line 274
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, p2, :cond_2

    .line 275
    sget-object v4, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    if-eq p1, v4, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->searchType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    iget-object v4, v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->query:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 279
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->query:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_2
    return-object v1
.end method

.method public normalize()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;

    .line 251
    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->normalize()V

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method
