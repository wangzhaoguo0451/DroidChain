.class public final Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IASSearchResultPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public item_id:Ljava/lang/String;

.field public query_understanding_result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;",
            ">;"
        }
    .end annotation
.end field

.field public section_result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 77
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->query_understanding_result:Ljava/util/List;

    #calls: Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->query_understanding_result:Ljava/util/List;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->section_result:Ljava/util/List;

    #calls: Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->section_result:Ljava/util/List;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;->item_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->item_id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage;-><init>(Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final item_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->item_id:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public final query_understanding_result(Ljava/util/List;)Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$QueryUnderstandingScore;",
            ">;)",
            "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->query_understanding_result:Ljava/util/List;

    .line 85
    return-object p0
.end method

.method public final section_result(Ljava/util/List;)Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$SectionResultPackage;",
            ">;)",
            "Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IASSearchResultPackage$Builder;->section_result:Ljava/util/List;

    .line 90
    return-object p0
.end method
