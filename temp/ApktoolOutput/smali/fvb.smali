.class public final Lfvb;
.super Ljava/lang/Object;
.source "GetMyGiftDelegate.java"

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
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    iput-object v0, p0, Lfvb;->a:Lcvo;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lfvb;->a:Lcvo;

    const-class v1, [Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v0, p1, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/app/AppLiteInfo;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    new-instance v5, Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-direct {v5}, Lcom/wandoujia/p4/gift/http/model/GiftModel;-><init>()V

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftDirections()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setDirections(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setId(J)V

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftCdKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setCdkey(Ljava/lang/String;)Lcom/wandoujia/p4/gift/http/model/GiftModel;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setReceived(Z)Lcom/wandoujia/p4/gift/http/model/GiftModel;

    new-instance v6, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;

    invoke-static {v4}, Ld;->a(Lcom/wandoujia/entities/app/IAppLiteInfo;)Leiu;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/wandoujia/p4/app/button/model/AppModelWrapper;-><init>(Leiu;)V

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setAppModelWrapper(Lcom/wandoujia/p4/app/button/model/AppModelWrapper;)V

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftEndDateStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setEndDateStamp(J)V

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftProvideType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setProvideType(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftExchangeDateRange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setExchangeDateRange(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppGiftCdKeyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->setCdkeyId(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
