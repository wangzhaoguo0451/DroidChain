.class public abstract enum Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;
.super Ljava/lang/Enum;
.source "RecordItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum ALIPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum ALIPAYWAP:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum ALIPAYWEB:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum BALANCEPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum BANKPAYWEB:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum COMPENSATION:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum CREDITCARD:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum DEBITCARD:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum GAMECARDPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum SHENZHOUPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum TELECOM:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum UNICOM:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum UNIONPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

.field public static final enum UNKNOW:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$1;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->UNKNOW:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 144
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$2;

    const-string v1, "ALIPAY"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->ALIPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 150
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$3;

    const-string v1, "SHENZHOUPAY"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->SHENZHOUPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 156
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$4;

    const-string v1, "BALANCEPAY"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->BALANCEPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 162
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$5;

    const-string v1, "CREDITCARD"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->CREDITCARD:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 168
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$6;

    const-string v1, "DEBITCARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->DEBITCARD:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 174
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$7;

    const-string v1, "GAMECARDPAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->GAMECARDPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 180
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$8;

    const-string v1, "COMPENSATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->COMPENSATION:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 186
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$9;

    const-string v1, "ALIPAYWAP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->ALIPAYWAP:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 194
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$10;

    const-string v1, "ALIPAYWEB"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->ALIPAYWEB:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 200
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$11;

    const-string v1, "BANKPAYWEB"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->BANKPAYWEB:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 206
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$12;

    const-string v1, "UNIONPAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->UNIONPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 212
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$13;

    const-string v1, "TELECOM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->TELECOM:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 218
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$14;

    const-string v1, "UNICOM"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->UNICOM:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    .line 137
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->UNKNOW:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->ALIPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->SHENZHOUPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->BALANCEPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->CREDITCARD:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->DEBITCARD:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->GAMECARDPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->COMPENSATION:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->ALIPAYWAP:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->ALIPAYWEB:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->BANKPAYWEB:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->UNIONPAY:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->TELECOM:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->UNICOM:Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->$VALUES:[Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/wandoujia/p4/pay/model/RecordItemInfo$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getChannelString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 228
    invoke-static {}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->values()[Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 229
    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    invoke-virtual {v3}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->channelString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_1
    return-object v0

    .line 228
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    const-string v0, "\u672a\u77e5\u65b9\u5f0f"

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;
    .locals 1
    .parameter

    .prologue
    .line 137
    const-class v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->$VALUES:[Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/pay/model/RecordItemInfo$ChargeType;

    return-object v0
.end method


# virtual methods
.method abstract channelString()Ljava/lang/String;
.end method
