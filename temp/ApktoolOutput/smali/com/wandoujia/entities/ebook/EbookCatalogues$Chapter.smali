.class public Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;
.super Ljava/lang/Object;
.source "EbookCatalogues.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:J

.field private localDisplayDate:Ljava/lang/String;

.field private localDisplayTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updatedDate:Ljava/lang/Long;

.field private volumeNum:I

.field private workRelated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->id:J

    return-wide v0
.end method

.method public getLocalDisplayDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->localDisplayDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalDisplayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->updatedDate:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->updatedDate:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getVolumeNum()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->volumeNum:I

    return v0
.end method

.method public isWorkRelated()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->workRelated:Z

    return v0
.end method

.method public setLocalDisplayDate(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->localDisplayDate:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setLocalDisplayTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookCatalogues$Chapter;->localDisplayTitle:Ljava/lang/String;

    .line 137
    return-void
.end method
