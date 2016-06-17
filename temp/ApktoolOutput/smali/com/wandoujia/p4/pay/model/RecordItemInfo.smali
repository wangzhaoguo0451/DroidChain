.class public Lcom/wandoujia/p4/pay/model/RecordItemInfo;
.super Ljava/lang/Object;
.source "RecordItemInfo.java"


# static fields
.field public static final DATE_FORMAT_POINT:Ljava/lang/String; = "yyyy.MM.dd"

.field public static final FULL_DATE_FORMAT_DASH:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final TYPE_BOTH:I = 0x2

.field public static final TYPE_ORDER:I = 0x1

.field public static final TYPE_RECHARGE:I


# instance fields
.field public amount:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public dateString:Ljava/lang/String;

.field public gameName:Ljava/lang/String;

.field public itemName:Ljava/lang/String;

.field public orderInGame:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public wandouOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method static formatDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 242
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getRecordList(ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/pay/model/RecordItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    const-class v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$PurchaseRecordResponse;

    invoke-static {p1, v0}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$PurchaseRecordResponse;

    .line 61
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$PurchaseRecordResponse;->result:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 62
    iget-object v0, v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$PurchaseRecordResponse;->result:Ljava/lang/String;

    .line 63
    if-nez p0, :cond_1

    .line 64
    const-class v3, [Lcom/wandoujia/p4/pay/model/RecordItemInfo$RechargeItem;

    invoke-static {v0, v3}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/pay/model/RecordItemInfo$RechargeItem;

    .line 65
    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    .line 66
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 67
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$RechargeItem;->payOrder:Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$RechargeItem;->payOrder:Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;

    iget-object v5, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->money:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    new-instance v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;

    invoke-direct {v5}, Lcom/wandoujia/p4/pay/model/RecordItemInfo;-><init>()V

    .line 72
    const-string v6, "\u8c4c\u8c46\u5e01"

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->gameName:Ljava/lang/String;

    .line 73
    const-string v6, "\u5145\u503c"

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->itemName:Ljava/lang/String;

    .line 74
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$RechargeItem;->payOrder:Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;

    iget-object v6, v6, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->money:Ljava/lang/String;

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->price:Ljava/lang/String;

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->amount:Ljava/lang/String;

    .line 75
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$RechargeItem;->payOrder:Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;

    iget-object v6, v6, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->tradeStatus:Ljava/lang/String;

    invoke-static {v6, p0}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->getStatusString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->status:Ljava/lang/String;

    .line 77
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$RechargeItem;->payOrder:Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;

    iget-object v6, v6, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->modification:Ljava/lang/String;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v6, v7}, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->formatDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->dateString:Ljava/lang/String;

    .line 79
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$RechargeItem;->payOrder:Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;

    iget-object v6, v6, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->chargeType:Ljava/lang/String;

    invoke-static {v6}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->getChannelString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->channel:Ljava/lang/String;

    .line 81
    iget-object v4, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$RechargeItem;->id:Ljava/lang/String;

    iput-object v4, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->wandouOrder:Ljava/lang/String;

    .line 83
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const-class v3, [Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;

    invoke-static {v0, v3}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;

    .line 89
    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    .line 90
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 91
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->money:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 92
    new-instance v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;

    invoke-direct {v5}, Lcom/wandoujia/p4/pay/model/RecordItemInfo;-><init>()V

    .line 95
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->orderName:Ljava/lang/String;

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->gameName:Ljava/lang/String;

    .line 96
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->orderDesc:Ljava/lang/String;

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->itemName:Ljava/lang/String;

    .line 97
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->money:Ljava/lang/String;

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->price:Ljava/lang/String;

    .line 98
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->tradeStatus:Ljava/lang/String;

    invoke-static {v6, p0}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->getStatusString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->status:Ljava/lang/String;

    .line 100
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->modification:Ljava/lang/String;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v6, v7}, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->formatDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->dateString:Ljava/lang/String;

    .line 101
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->chargeType:Ljava/lang/String;

    invoke-static {v6}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->getChannelString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->channel:Ljava/lang/String;

    .line 102
    iget-object v6, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->id:Ljava/lang/String;

    iput-object v6, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->wandouOrder:Ljava/lang/String;

    .line 103
    iget-object v4, v4, Lcom/wandoujia/p4/pay/model/RecordItemInfo$OrderItem;->out_trade_no:Ljava/lang/String;

    iput-object v4, v5, Lcom/wandoujia/p4/pay/model/RecordItemInfo;->orderInGame:Ljava/lang/String;

    .line 105
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    :cond_3
    return-object v2
.end method
