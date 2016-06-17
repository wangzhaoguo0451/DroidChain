.class public Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public query:Ljava/lang/String;

.field public searchType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->query:Ljava/lang/String;

    .line 230
    invoke-virtual {p2}, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->searchType:Ljava/lang/String;

    .line 231
    return-void
.end method


# virtual methods
.method public normalize()V
    .locals 6

    .prologue
    .line 234
    invoke-static {}, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->values()[Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 235
    invoke-virtual {v3}, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->getTypeKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->searchType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-virtual {v3}, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->searchType:Ljava/lang/String;

    .line 234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    return-void
.end method
