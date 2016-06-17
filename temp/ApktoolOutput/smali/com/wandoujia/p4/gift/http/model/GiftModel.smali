.class public Lcom/wandoujia/p4/gift/http/model/GiftModel;
.super Ljava/lang/Object;
.source "GiftModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# instance fields
.field appModelWrapper:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

.field cdkey:Ljava/lang/String;

.field cdkeyId:Ljava/lang/String;

.field description:Ljava/lang/String;

.field directions:Ljava/lang/String;

.field private endDateStamp:J

.field exchangeDateRange:Ljava/lang/String;

.field private giftViewType:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

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
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/GiftDetail;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->packageName:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->cdkey:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->cdkey:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->id:J

    .line 44
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->special_action:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->specialAction:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->title:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->description:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->is_received:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->isReceived:Z

    .line 48
    iget-object v0, p1, Lcom/wandoujia/api/proto/GiftDetail;->provide_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->provideType:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getAppModel$7b145623()Leiu;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->appModelWrapper:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->appModelWrapper:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;->getAppModel$7b145623()Leiu;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppModelWrapper()Lcom/wandoujia/p4/app/button/model/AppModelWrapper;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->appModelWrapper:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    return-object v0
.end method

.method public getCdkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->cdkey:Ljava/lang/String;

    return-object v0
.end method

.method public getCdkeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->cdkeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDirections()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->directions:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDateStamp()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->endDateStamp:J

    return-wide v0
.end method

.method public getExchangeDateRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->exchangeDateRange:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftViewType()Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->giftViewType:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->id:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvideType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->provideType:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->receivedCount:I

    return v0
.end method

.method public getRemnantCount()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->remnantCount:I

    return v0
.end method

.method public getSpecialAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->specialAction:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isReceived()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->isReceived:Z

    return v0
.end method

.method public setAppModelWrapper(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->appModelWrapper:Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    .line 155
    return-void
.end method

.method public setCdkey(Ljava/lang/String;)Lcom/wandoujia/p4/gift/http/model/GiftModel;
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->cdkey:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public setCdkeyId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->cdkeyId:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->description:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDirections(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->directions:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setEndDateStamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->endDateStamp:J

    .line 163
    return-void
.end method

.method public setExchangeDateRange(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->exchangeDateRange:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setGiftViewType(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)Lcom/wandoujia/p4/gift/http/model/GiftModel;
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->giftViewType:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 179
    return-object p0
.end method

.method public setId(J)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->id:J

    .line 134
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->packageName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setProvideType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->provideType:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setReceived(Z)Lcom/wandoujia/p4/gift/http/model/GiftModel;
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->isReceived:Z

    .line 97
    return-object p0
.end method

.method public setReceivedCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->receivedCount:I

    .line 81
    return-void
.end method

.method public setRemnantCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->remnantCount:I

    .line 89
    return-void
.end method

.method public setSpecialAction(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->specialAction:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/wandoujia/p4/gift/http/model/GiftModel;->title:Ljava/lang/String;

    .line 57
    return-void
.end method
