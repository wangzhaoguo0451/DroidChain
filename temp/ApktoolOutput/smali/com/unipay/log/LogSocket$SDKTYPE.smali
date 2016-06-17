.class public final enum Lcom/unipay/log/LogSocket$SDKTYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unipay/log/LogSocket$SDKTYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SMS:Lcom/unipay/log/LogSocket$SDKTYPE;

.field public static final enum UNIPAY:Lcom/unipay/log/LogSocket$SDKTYPE;

.field public static final enum VAC:Lcom/unipay/log/LogSocket$SDKTYPE;

.field private static final synthetic _$1:[Lcom/unipay/log/LogSocket$SDKTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unipay/log/LogSocket$SDKTYPE;

    const-string v1, "VAC"

    invoke-direct {v0, v1, v2}, Lcom/unipay/log/LogSocket$SDKTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unipay/log/LogSocket$SDKTYPE;->VAC:Lcom/unipay/log/LogSocket$SDKTYPE;

    new-instance v0, Lcom/unipay/log/LogSocket$SDKTYPE;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v3}, Lcom/unipay/log/LogSocket$SDKTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unipay/log/LogSocket$SDKTYPE;->SMS:Lcom/unipay/log/LogSocket$SDKTYPE;

    new-instance v0, Lcom/unipay/log/LogSocket$SDKTYPE;

    const-string v1, "UNIPAY"

    invoke-direct {v0, v1, v4}, Lcom/unipay/log/LogSocket$SDKTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unipay/log/LogSocket$SDKTYPE;->UNIPAY:Lcom/unipay/log/LogSocket$SDKTYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unipay/log/LogSocket$SDKTYPE;

    sget-object v1, Lcom/unipay/log/LogSocket$SDKTYPE;->VAC:Lcom/unipay/log/LogSocket$SDKTYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unipay/log/LogSocket$SDKTYPE;->SMS:Lcom/unipay/log/LogSocket$SDKTYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unipay/log/LogSocket$SDKTYPE;->UNIPAY:Lcom/unipay/log/LogSocket$SDKTYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unipay/log/LogSocket$SDKTYPE;->_$1:[Lcom/unipay/log/LogSocket$SDKTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unipay/log/LogSocket$SDKTYPE;
    .locals 5

    sget-object v1, Lcom/unipay/log/LogSocket$SDKTYPE;->_$1:[Lcom/unipay/log/LogSocket$SDKTYPE;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/unipay/log/LogSocket$SDKTYPE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final values()[Lcom/unipay/log/LogSocket$SDKTYPE;
    .locals 1

    sget-object v0, Lcom/unipay/log/LogSocket$SDKTYPE;->_$1:[Lcom/unipay/log/LogSocket$SDKTYPE;

    invoke-virtual {v0}, [Lcom/unipay/log/LogSocket$SDKTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unipay/log/LogSocket$SDKTYPE;

    return-object v0
.end method
