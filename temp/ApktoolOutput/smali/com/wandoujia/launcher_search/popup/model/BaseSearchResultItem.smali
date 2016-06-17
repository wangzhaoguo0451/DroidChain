.class public Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;
.super Ljava/lang/Object;
.source "BaseSearchResultItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public action:Ljava/lang/String;

.field public apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public attach:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;",
            ">;"
        }
    .end annotation
.end field

.field public cardStyle:Ljava/lang/String;

.field public content:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchResultContent;

.field public contentType:Ljava/lang/String;

.field public cornerMark:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CornerMark;

.field public id:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method


# virtual methods
.method public isValid([Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->content:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchResultContent;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 89
    invoke-virtual {v3}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
