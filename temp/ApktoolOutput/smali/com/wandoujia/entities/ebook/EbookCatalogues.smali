.class public Lcom/wandoujia/entities/ebook/EbookCatalogues;
.super Ljava/lang/Object;
.source "EbookCatalogues.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private localChaptersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private localChaptersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private signature:Ljava/lang/String;

.field private volumes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public generateIndexFields()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->volumes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->localChaptersMap:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->localChaptersList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->localChaptersMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->localChaptersList:Ljava/util/List;

    .line 48
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move v2, v3

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->volumes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->volumes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;

    .line 52
    invoke-virtual {v0}, Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;->getChapters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    move v4, v3

    .line 53
    :goto_1
    invoke-virtual {v0}, Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;->getChapters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 57
    invoke-virtual {v0}, Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;->getChapters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;

    .line 59
    invoke-virtual {v1}, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->getUpdatedDate()Ljava/util/Date;

    move-result-object v5

    .line 60
    if-nez v5, :cond_2

    const-string v5, ""

    :goto_2
    invoke-virtual {v1, v5}, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->setLocalDisplayDate(Ljava/lang/String;)V

    .line 64
    iget-object v5, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->localChaptersMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v5, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->localChaptersList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v1}, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->getUpdatedDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 50
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public getLocalChaptersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->localChaptersList:Ljava/util/List;

    return-object v0
.end method

.method public getLocalChaptersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->localChaptersMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues;->volumes:Ljava/util/List;

    return-object v0
.end method
