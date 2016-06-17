.class public Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;
.super Ljava/lang/Object;
.source "EbookCatalogues.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field private title:Ljava/lang/String;

.field private updatedDate:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapters()Ljava/util/List;
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
    .line 93
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;->chapters:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;->id:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;->updatedDate:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Volume;->updatedDate:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method
