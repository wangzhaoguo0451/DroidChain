.class public final enum Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;
.super Ljava/lang/Enum;
.source "GameDetailInfoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

.field public static final enum NEED_INTERNET:Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

.field public static final enum NOT_NEED_INTERNET:Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

.field public static final enum UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;


# instance fields
.field private internet:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    .line 45
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    const-string v1, "NEED_INTERNET"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->NEED_INTERNET:Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    .line 46
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    const-string v1, "NOT_NEED_INTERNET"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->NOT_NEED_INTERNET:Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->NEED_INTERNET:Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->NOT_NEED_INTERNET:Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->$VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->internet:I

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->$VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;

    return-object v0
.end method


# virtual methods
.method public final getInternet()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/wandoujia/entities/game/GameDetailInfoType$NeedInternetGameType;->internet:I

    return v0
.end method
