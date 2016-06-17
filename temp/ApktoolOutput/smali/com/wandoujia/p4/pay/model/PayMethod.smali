.class public abstract enum Lcom/wandoujia/p4/pay/model/PayMethod;
.super Ljava/lang/Enum;
.source "PayMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/pay/model/PayMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/pay/model/PayMethod;

.field public static final enum ALIPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

.field public static final enum SHENZHOUPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

.field public static final enum TELECOM:Lcom/wandoujia/p4/pay/model/PayMethod;

.field public static final enum UNICOM:Lcom/wandoujia/p4/pay/model/PayMethod;

.field public static final enum UNIONPAY:Lcom/wandoujia/p4/pay/model/PayMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayMethod$1;

    const-string v1, "ALIPAY"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/PayMethod$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->ALIPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    .line 19
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayMethod$2;

    const-string v1, "UNIONPAY"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/pay/model/PayMethod$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->UNIONPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    .line 30
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayMethod$3;

    const-string v1, "SHENZHOUPAY"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/pay/model/PayMethod$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->SHENZHOUPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    .line 41
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayMethod$4;

    const-string v1, "UNICOM"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/pay/model/PayMethod$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->UNICOM:Lcom/wandoujia/p4/pay/model/PayMethod;

    .line 52
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayMethod$5;

    const-string v1, "TELECOM"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/pay/model/PayMethod$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->TELECOM:Lcom/wandoujia/p4/pay/model/PayMethod;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/p4/pay/model/PayMethod;

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayMethod;->ALIPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayMethod;->UNIONPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayMethod;->SHENZHOUPAY:Lcom/wandoujia/p4/pay/model/PayMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayMethod;->UNICOM:Lcom/wandoujia/p4/pay/model/PayMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayMethod;->TELECOM:Lcom/wandoujia/p4/pay/model/PayMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->$VALUES:[Lcom/wandoujia/p4/pay/model/PayMethod;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/wandoujia/p4/pay/model/PayMethod$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/pay/model/PayMethod;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;
    .locals 5
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/wandoujia/p4/pay/model/PayMethod;->values()[Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 69
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    :goto_1
    return-object v0

    .line 68
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getByTitle(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;
    .locals 5
    .parameter

    .prologue
    .line 77
    invoke-static {}, Lcom/wandoujia/p4/pay/model/PayMethod;->values()[Lcom/wandoujia/p4/pay/model/PayMethod;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 78
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/model/PayMethod;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    :goto_1
    return-object v0

    .line 77
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayMethod;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/PayMethod;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/pay/model/PayMethod;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayMethod;->$VALUES:[Lcom/wandoujia/p4/pay/model/PayMethod;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/pay/model/PayMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/pay/model/PayMethod;

    return-object v0
.end method


# virtual methods
.method public abstract describe()Ljava/lang/String;
.end method

.method public abstract title()Ljava/lang/String;
.end method
