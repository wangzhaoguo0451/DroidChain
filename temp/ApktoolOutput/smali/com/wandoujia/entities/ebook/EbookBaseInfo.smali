.class public Lcom/wandoujia/entities/ebook/EbookBaseInfo;
.super Ljava/lang/Object;
.source "EbookBaseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private category:Lcom/wandoujia/entities/ebook/EbookCategory;

.field private cover:Lcom/wandoujia/entities/ebook/EbookBaseInfo$CoverUrls;

.field private description:Ljava/lang/String;

.field private id:J

.field private latestEpisodeId:J

.field private latestEpisodeTitle:Ljava/lang/String;

.field private monthlyReadCount:I

.field private onlyProviderOpen:Z

.field private providerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providerOpenInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookProviderOpenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private publishType:Ljava/lang/String;

.field private rating:I

.field private source:Ljava/lang/String;

.field private sourceChapterListUrl:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private subCategory:Lcom/wandoujia/entities/ebook/EbookCategory;

.field private subscribeUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalChaptersNum:I

.field private totalReadCount:I

.field private updatedDate:J

.field private weeklyReadCount:I

.field private words:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    return-void
.end method


# virtual methods
.method public canSubscribe()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->subscribeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthors()Ljava/util/List;
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
    .line 53
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->authors:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Lcom/wandoujia/entities/ebook/EbookCategory;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->category:Lcom/wandoujia/entities/ebook/EbookCategory;

    return-object v0
.end method

.method public getCover()Lcom/wandoujia/entities/ebook/EbookBaseInfo$CoverUrls;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->cover:Lcom/wandoujia/entities/ebook/EbookBaseInfo$CoverUrls;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->id:J

    return-wide v0
.end method

.method public getLatestEpisodeId()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->latestEpisodeId:J

    return-wide v0
.end method

.method public getLatestEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->latestEpisodeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthlyReadCount()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->monthlyReadCount:I

    return v0
.end method

.method public getProviderNames()Ljava/util/List;
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
    .line 88
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->providerNames:Ljava/util/List;

    return-object v0
.end method

.method public getProviderOpenInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/ebook/EbookProviderOpenInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->providerOpenInfos:Ljava/util/List;

    return-object v0
.end method

.method public getPublishType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->publishType:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->rating:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceChapterListUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->sourceChapterListUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/wandoujia/entities/ebook/EbookBaseInfo$EbookStatus;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 192
    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->status:Ljava/lang/String;

    invoke-static {v1}, Lcom/wandoujia/entities/ebook/EbookBaseInfo$EbookStatus;->valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/ebook/EbookBaseInfo$EbookStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 201
    sget-object v0, Lcom/wandoujia/entities/ebook/EbookBaseInfo$EbookStatus;->FINISH:Lcom/wandoujia/entities/ebook/EbookBaseInfo$EbookStatus;

    .line 203
    :cond_1
    return-object v0

    .line 198
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lctf;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->getStatus()Lcom/wandoujia/entities/ebook/EbookBaseInfo$EbookStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/entities/ebook/EbookBaseInfo$EbookStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 217
    sget v0, Lcom/wandoujia/entities/R$string;->ebook_state_finish:I

    .line 220
    :goto_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :pswitch_0
    sget v0, Lcom/wandoujia/entities/R$string;->ebook_state_updating:I

    goto :goto_0

    .line 213
    :pswitch_1
    sget v0, Lcom/wandoujia/entities/R$string;->ebook_state_stop:I

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSubCategory()Lcom/wandoujia/entities/ebook/EbookCategory;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->subCategory:Lcom/wandoujia/entities/ebook/EbookCategory;

    return-object v0
.end method

.method public getSubscribeUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->subscribeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalChaptersNum()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->totalChaptersNum:I

    return v0
.end method

.method public getTotalReadCount()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->totalReadCount:I

    return v0
.end method

.method public getUpdatedDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->updatedDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->updatedDate:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWeeklyReadCount()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->weeklyReadCount:I

    return v0
.end method

.method public getWords()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->words:J

    return-wide v0
.end method

.method public isFinish()Z
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->getStatus()Lcom/wandoujia/entities/ebook/EbookBaseInfo$EbookStatus;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/entities/ebook/EbookBaseInfo$EbookStatus;->FINISH:Lcom/wandoujia/entities/ebook/EbookBaseInfo$EbookStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnlyProviderOpen()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->onlyProviderOpen:Z

    return v0
.end method

.method public setAuthors(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->authors:Ljava/util/List;

    .line 109
    return-void
.end method

.method public setCategory(Lcom/wandoujia/entities/ebook/EbookCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->category:Lcom/wandoujia/entities/ebook/EbookCategory;

    .line 125
    return-void
.end method

.method public setCover(Lcom/wandoujia/entities/ebook/EbookBaseInfo$CoverUrls;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->cover:Lcom/wandoujia/entities/ebook/EbookBaseInfo$CoverUrls;

    .line 113
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->description:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setId(J)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->id:J

    .line 101
    return-void
.end method

.method public setLatestEpisodeId(J)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->latestEpisodeId:J

    .line 133
    return-void
.end method

.method public setLatestEpisodeTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->latestEpisodeTitle:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->source:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setSubscribeUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->subscribeUrl:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->title:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setUpdateDate(J)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/wandoujia/entities/ebook/EbookBaseInfo;->updatedDate:J

    .line 129
    return-void
.end method
