.class final Lekx;
.super Lefv;
.source "SearchDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lefv",
        "<",
        "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcvo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lefv;-><init>()V

    .line 63
    invoke-static {}, Lefr;->a()Lcvo;

    move-result-object v0

    iput-object v0, p0, Lekx;->a:Lcvo;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lekx;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    :try_start_0
    new-instance v0, Lcwc;

    invoke-direct {v0}, Lcwc;-><init>()V

    .line 70
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcwc;->a(Ljava/io/Reader;)Lcvz;

    move-result-object v0

    check-cast v0, Lcwb;

    .line 71
    new-instance v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;

    invoke-direct {v6}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;-><init>()V

    .line 72
    const-string v1, "query"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v3

    :goto_0
    iput-object v1, v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->query:Ljava/lang/String;

    .line 74
    const-string v1, "correctQuery"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v1, v3

    :goto_1
    iput-object v1, v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->correctQuery:Ljava/lang/String;

    .line 76
    const-string v1, "relatedSearch"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    iget-object v4, p0, Lekx;->a:Lcvo;

    new-instance v5, Leky;

    invoke-direct {v5}, Leky;-><init>()V

    invoke-virtual {v5}, Leky;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcvo;->a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->relatedSearch:Ljava/util/List;

    .line 82
    :cond_0
    const-string v1, "correctionConfidenceRange"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v3

    :goto_2
    iput-object v1, v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->correctionConfidenceRange:Ljava/lang/String;

    .line 85
    const-string v1, "sessionId"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v1, v3

    :goto_3
    iput-object v1, v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->sessionId:Ljava/lang/String;

    .line 87
    const-string v1, "summary"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v1, v3

    :goto_4
    iput-object v1, v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->summary:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$Summary;

    .line 89
    const-string v1, "filteredTags"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lekx;->a:Lcvo;

    const-string v4, "filteredTags"

    invoke-virtual {v0, v4}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v4

    new-instance v5, Lekz;

    invoke-direct {v5}, Lekz;-><init>()V

    invoke-virtual {v5}, Lekz;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcvo;->a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->filteredTags:Ljava/util/List;

    .line 93
    :cond_1
    const-string v1, "sections"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_9

    move-object v5, v3

    .line 95
    :goto_5
    if-eqz v5, :cond_f

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->sections:Ljava/util/List;

    move v4, v2

    .line 97
    :goto_6
    invoke-virtual {v5}, Lcvx;->a()I

    move-result v0

    if-ge v4, v0, :cond_f

    .line 98
    invoke-virtual {v5, v4}, Lcvx;->a(I)Lcvz;

    move-result-object v0

    check-cast v0, Lcwb;

    .line 99
    if-eqz v0, :cond_3

    .line 100
    new-instance v7, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;

    invoke-direct {v7}, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;-><init>()V

    .line 103
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v1, v3

    :goto_7
    iput-object v1, v7, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->title:Ljava/lang/String;

    .line 105
    const-string v1, "visible"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "visible"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_2
    const/4 v1, 0x1

    :goto_8
    iput-boolean v1, v7, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->visible:Z

    .line 107
    const-string v1, "description"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_c

    move-object v1, v3

    :goto_9
    iput-object v1, v7, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->description:Ljava/lang/String;

    .line 109
    const-string v1, "items"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_d

    move-object v1, v3

    .line 111
    :goto_a
    iget-boolean v8, v7, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->visible:Z

    invoke-direct {p0, v1, v8}, Lekx;->a(Lcvx;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v7, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->items:Ljava/util/List;

    .line 112
    const-string v1, "totalCount"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_e

    move v0, v2

    :goto_b
    iput v0, v7, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->totalCount:I

    .line 114
    iget-object v0, v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->sections:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    .line 72
    :cond_4
    const-string v1, "query"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 74
    :cond_5
    const-string v1, "correctQuery"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 82
    :cond_6
    const-string v1, "correctionConfidenceRange"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 85
    :cond_7
    const-string v1, "sessionId"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 87
    :cond_8
    iget-object v1, p0, Lekx;->a:Lcvo;

    const-string v4, "summary"

    invoke-virtual {v0, v4}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v4

    const-class v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$Summary;

    invoke-virtual {v1, v4, v5}, Lcvo;->a(Lcvz;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$Summary;

    goto/16 :goto_4

    .line 93
    :cond_9
    const-string v1, "sections"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v0

    invoke-virtual {v0}, Lcvz;->h()Lcvx;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_5

    .line 103
    :cond_a
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :cond_b
    move v1, v2

    .line 105
    goto/16 :goto_8

    .line 107
    :cond_c
    const-string v1, "description"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    .line 109
    :cond_d
    const-string v1, "items"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->h()Lcvx;

    move-result-object v1

    goto/16 :goto_a

    .line 112
    :cond_e
    const-string v1, "totalCount"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v0

    invoke-virtual {v0}, Lcvz;->f()I
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto/16 :goto_b

    .line 118
    :catch_0
    move-exception v0

    .line 119
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_f
    return-object v6
.end method

.method private a(Lcvx;Z)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcvx;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 126
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return-object v3

    .line 129
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Lcvx;->a()I

    move-result v0

    if-ge v2, v0, :cond_d

    .line 131
    invoke-virtual {p1, v2}, Lcvx;->a(I)Lcvz;

    move-result-object v0

    check-cast v0, Lcwb;

    .line 132
    if-eqz v0, :cond_4

    .line 133
    new-instance v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;

    invoke-direct {v5}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v1, v3

    :goto_2
    iput-object v1, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->id:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v3

    :goto_3
    iput-object v1, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->type:Ljava/lang/String;

    const-string v1, "cardStyle"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v1, v3

    :goto_4
    iput-object v1, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->cardStyle:Ljava/lang/String;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v1, v3

    :goto_5
    iput-object v1, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->action:Ljava/lang/String;

    iput-boolean p2, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->visible:Z

    const-string v1, "apps"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lekx;->a:Lcvo;

    const-string v6, "apps"

    invoke-virtual {v0, v6}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v6

    new-instance v7, Lela;

    invoke-direct {v7}, Lela;-><init>()V

    invoke-virtual {v7}, Lela;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcvo;->a(Lcvz;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->apps:Ljava/util/List;

    :cond_1
    const-string v1, "cornerMark"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lekx;->a:Lcvo;

    const-string v6, "cornerMark"

    invoke-virtual {v0, v6}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v6

    const-class v7, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CornerMark;

    invoke-virtual {v1, v6, v7}, Lcvo;->a(Lcvz;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CornerMark;

    iput-object v1, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->cornerMark:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CornerMark;

    :cond_2
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_9

    move-object v1, v3

    :goto_6
    iget-object v6, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->type:Ljava/lang/String;

    if-eqz v6, :cond_3

    if-nez v1, :cond_a

    :cond_3
    move-object v0, v3

    .line 134
    :goto_7
    if-eqz v0, :cond_4

    .line 135
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 133
    :cond_5
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_7
    const-string v1, "cardStyle"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_8
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->c()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_9
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    invoke-virtual {v1}, Lcvz;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_a
    new-instance v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchResultContent;

    invoke-direct {v6}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchResultContent;-><init>()V

    iput-object v6, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->content:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchResultContent;

    sget-object v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->APPS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    invoke-virtual {v6}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->content:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchResultContent;

    iget-object v7, p0, Lekx;->a:Lcvo;

    const-class v8, Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v7, v1, v8}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/entities/app/AppLiteInfo;

    iput-object v1, v6, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchResultContent;->appLiteInfo:Lcom/wandoujia/entities/app/AppLiteInfo;

    :cond_b
    const-string v1, "attach"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v1

    if-nez v1, :cond_c

    move-object v0, v3

    :goto_8
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lekx;->a(Lcvx;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v5, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->attach:Ljava/util/List;

    move-object v0, v5

    goto :goto_7

    :cond_c
    const-string v1, "attach"

    invoke-virtual {v0, v1}, Lcwb;->a(Ljava/lang/String;)Lcvz;

    move-result-object v0

    invoke-virtual {v0}, Lcvz;->h()Lcvx;

    move-result-object v0

    goto :goto_8

    :cond_d
    move-object v3, v4

    .line 139
    goto/16 :goto_0
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 58
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lekx;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic process(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lekx;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;

    move-result-object v0

    return-object v0
.end method
