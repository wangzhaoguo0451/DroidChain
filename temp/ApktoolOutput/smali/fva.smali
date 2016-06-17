.class public final Lfva;
.super Ljava/lang/Object;
.source "GetGiftListDelegate.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/processor/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/processor/Processor",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
        ">;",
        "Lcom/wandoujia/rpc/http/exception/ContentParseException;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcvo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    iput-object v0, p0, Lfva;->a:Lcvo;

    .line 32
    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 25
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lfva;->a:Lcvo;

    const-class v1, [Lcom/wandoujia/p4/gift/http/model/GiftInfo;

    invoke-virtual {v0, p1, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/gift/http/model/GiftInfo;

    if-eqz v0, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v0

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v7, v0, v5

    invoke-virtual {v7}, Lcom/wandoujia/p4/gift/http/model/GiftInfo;->getGifts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lcom/wandoujia/p4/gift/http/model/GiftInfo;->getGifts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;

    invoke-virtual {v7}, Lcom/wandoujia/p4/gift/http/model/GiftInfo;->getPn()Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getReceivedCount()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getRemnantCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-direct {v4}, Lcom/wandoujia/p4/gift/http/model/GiftModel;-><init>()V

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getRemnantCount()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setRemnantCount(I)V

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getReceivedCount()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setReceivedCount(I)V

    invoke-virtual {v4, v9}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getSubject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getDirections()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setDirections(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getExchangeDateRange()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setExchangeDateRange(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getId()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setId(J)V

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->isReceived()Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setReceived(Z)Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getProvideType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setProvideType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;->getEndDateStamp()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setEndDateStamp(J)V

    move-object v1, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    :goto_3
    return-object v0

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method
