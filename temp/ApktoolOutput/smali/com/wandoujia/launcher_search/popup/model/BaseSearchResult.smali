.class public Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;
.super Ljava/lang/Object;
.source "BaseSearchResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x73d1ec47133d1934L


# instance fields
.field public correctQuery:Ljava/lang/String;

.field public correctionConfidenceRange:Ljava/lang/String;

.field public filteredTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public query:Ljava/lang/String;

.field public relatedSearch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$RelatedSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field public sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public sessionId:Ljava/lang/String;

.field public summary:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult$Summary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method
