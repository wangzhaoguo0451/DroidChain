.class final enum Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;
.super Ljava/lang/Enum;
.source "RecordItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

.field public static final enum CREATE:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

.field public static final enum ERROR:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

.field public static final enum FINISH:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

.field public static final enum PROCESS:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

.field public static final enum SERVERFINISH:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->CREATE:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    const-string v1, "PROCESS"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->PROCESS:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    const-string v1, "FINISH"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->FINISH:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    const-string v1, "SERVERFINISH"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->SERVERFINISH:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    new-instance v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->ERROR:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->CREATE:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->PROCESS:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->FINISH:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->SERVERFINISH:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->ERROR:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->$VALUES:[Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getStatusString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 118
    const-string v0, "\u652f\u4ed8"

    .line 119
    if-nez p1, :cond_0

    .line 120
    const-string v0, "\u5145\u503c"

    .line 123
    :cond_0
    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->SERVERFINISH:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string v1, "\u6210\u529f"

    .line 133
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_1
    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->CREATE:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->PROCESS:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    invoke-virtual {v1, p0}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->FINISH:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    invoke-virtual {v1, p0}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    :cond_2
    const-string v1, "\u4e2d"

    goto :goto_0

    .line 128
    :cond_3
    sget-object v1, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->ERROR:Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    const-string v1, "\u5931\u8d25"

    goto :goto_0

    .line 131
    :cond_4
    const-string v1, "\u72b6\u6001\u672a\u77e5"

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;
    .locals 1
    .parameter

    .prologue
    .line 114
    const-class v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->$VALUES:[Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/pay/model/RecordItemInfo$TradeStatus;

    return-object v0
.end method
