.class public Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;
.super Ljava/lang/Object;
.source "GiftMessageModel.java"

# interfaces
.implements Leax;
.implements Ljava/io/Serializable;


# instance fields
.field private giftModel:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

.field private status:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/gift/http/model/GiftModel;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->UNREAD:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->status:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    .line 17
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->giftModel:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    .line 18
    sget-object v0, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->UNREAD:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->status:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    instance-of v2, p1, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    if-eqz v2, :cond_3

    .line 44
    check-cast p1, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;

    .line 45
    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getGiftModel()Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getGiftModel()Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getGiftModel()Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->getGiftModel()Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/launcher/gift/http/model/GiftModel;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 55
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGiftModel()Lcom/wandoujia/launcher/gift/http/model/GiftModel;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->giftModel:Lcom/wandoujia/launcher/gift/http/model/GiftModel;

    return-object v0
.end method

.method public getStatus()Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->status:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setStatus(Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;->status:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    .line 27
    return-void
.end method
