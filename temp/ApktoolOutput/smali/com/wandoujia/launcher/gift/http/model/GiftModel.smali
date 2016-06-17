.class public Lcom/wandoujia/launcher/gift/http/model/GiftModel;
.super Ljava/lang/Object;
.source "GiftModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# instance fields
.field appModelWrapper:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

.field cdkey:Ljava/lang/String;

.field cdkeyId:Ljava/lang/String;

.field description:Ljava/lang/String;

.field directions:Ljava/lang/String;

.field private endDateStamp:J

.field exchangeDateRange:Ljava/lang/String;

.field private giftViewType:Lcom/wandoujia/launcher/gift/http/model/GiftModel$GiftViewType;

.field id:J

.field isReceived:Z

.field packageName:Ljava/lang/String;

.field private provideType:Ljava/lang/String;

.field receivedCount:I

.field remnantCount:I

.field specialAction:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppModel()Leiu;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->appModelWrapper:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->appModelWrapper:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;->getAppModel()Leiu;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppModelWrapper()Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->appModelWrapper:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    return-object v0
.end method

.method public getCdkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->cdkey:Ljava/lang/String;

    return-object v0
.end method

.method public getCdkeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->cdkeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDirections()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->directions:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDateStamp()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->endDateStamp:J

    return-wide v0
.end method

.method public getExchangeDateRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->exchangeDateRange:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftViewType()Lcom/wandoujia/launcher/gift/http/model/GiftModel$GiftViewType;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->giftViewType:Lcom/wandoujia/launcher/gift/http/model/GiftModel$GiftViewType;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->id:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvideType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->provideType:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->receivedCount:I

    return v0
.end method

.method public getRemnantCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->remnantCount:I

    return v0
.end method

.method public getSpecialAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->specialAction:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isReceived()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->isReceived:Z

    return v0
.end method

.method public setAppModelWrapper(Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->appModelWrapper:Lcom/wandoujia/launcher/app/button/model/AppModelWrapper;

    .line 143
    return-void
.end method

.method public setCdkey(Ljava/lang/String;)Lcom/wandoujia/launcher/gift/http/model/GiftModel;
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->cdkey:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public setCdkeyId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->cdkeyId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->description:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDirections(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->directions:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setEndDateStamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->endDateStamp:J

    .line 151
    return-void
.end method

.method public setExchangeDateRange(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->exchangeDateRange:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setGiftViewType(Lcom/wandoujia/launcher/gift/http/model/GiftModel$GiftViewType;)Lcom/wandoujia/launcher/gift/http/model/GiftModel;
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->giftViewType:Lcom/wandoujia/launcher/gift/http/model/GiftModel$GiftViewType;

    .line 167
    return-object p0
.end method

.method public setId(J)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->id:J

    .line 122
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->packageName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setProvideType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->provideType:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setReceived(Z)Lcom/wandoujia/launcher/gift/http/model/GiftModel;
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->isReceived:Z

    .line 85
    return-object p0
.end method

.method public setReceivedCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->receivedCount:I

    .line 69
    return-void
.end method

.method public setRemnantCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->remnantCount:I

    .line 77
    return-void
.end method

.method public setSpecialAction(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->specialAction:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->title:Ljava/lang/String;

    .line 45
    return-void
.end method
