.class public Lcom/wandoujia/entities/ebook/ChapterDetail;
.super Ljava/lang/Object;
.source "ChapterDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ebookId:J

.field private episodeNum:I

.field private id:J

.field private itemStatus:I

.field private onlineReadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/ChapterDetail$OnlineSource;",
            ">;"
        }
    .end annotation
.end field

.field private providerOpenInfos:[Lcom/wandoujia/entities/ebook/ChapterDetail$ProviderOpenInfo;

.field private title:Ljava/lang/String;

.field private updatedDate:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public getEbookId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail;->ebookId:J

    return-wide v0
.end method

.method public getEpisodeNum()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail;->episodeNum:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail;->id:J

    return-wide v0
.end method

.method public getItemStatus()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail;->itemStatus:I

    return v0
.end method

.method public getOnlineReadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/ChapterDetail$OnlineSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail;->onlineReadUrls:Ljava/util/List;

    return-object v0
.end method

.method public getProviderOpenInfos()[Lcom/wandoujia/entities/ebook/ChapterDetail$ProviderOpenInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail;->providerOpenInfos:[Lcom/wandoujia/entities/ebook/ChapterDetail$ProviderOpenInfo;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/ChapterDetail;->updatedDate:J

    return-wide v0
.end method
