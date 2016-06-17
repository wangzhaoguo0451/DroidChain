.class public Lcom/wandoujia/entities/ebook/EbookSearchResult;
.super Ljava/lang/Object;
.source "EbookSearchResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private correctQuery:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private queryType:I

.field private relatedQuery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorrectQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookSearchResult;->correctQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getEbookList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookSearchResult;->result:Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookSearchResult;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/wandoujia/entities/ebook/EbookSearchResult;->queryType:I

    return v0
.end method

.method public getRelatedQuery()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookSearchResult;->relatedQuery:Ljava/util/List;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookSearchResult;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/wandoujia/entities/ebook/EbookSearchResult;->total:I

    return v0
.end method
