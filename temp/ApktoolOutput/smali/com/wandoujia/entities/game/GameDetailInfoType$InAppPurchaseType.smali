.class public final enum Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;
.super Ljava/lang/Enum;
.source "GameDetailInfoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

.field public static final enum NO:Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

.field public static final enum UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

.field public static final enum YES:Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;


# instance fields
.field private purchase:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    const-string v1, "YES"

    invoke-direct {v0, v1, v3, v4}, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->YES:Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    .line 61
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    const-string v1, "NO"

    invoke-direct {v0, v1, v4, v3}, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->NO:Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    .line 62
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->YES:Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->NO:Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->$VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->purchase:I

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;
    .locals 1
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->$VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;

    return-object v0
.end method


# virtual methods
.method public final getPurchase()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/wandoujia/entities/game/GameDetailInfoType$InAppPurchaseType;->purchase:I

    return v0
.end method
