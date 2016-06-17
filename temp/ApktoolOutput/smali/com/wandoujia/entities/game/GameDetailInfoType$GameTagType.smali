.class public final enum Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;
.super Ljava/lang/Enum;
.source "GameDetailInfoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

.field public static final enum GAME_STYLE:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

.field public static final enum GAME_THEME:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

.field public static final enum GAME_TYPE:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

.field public static final enum UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;


# instance fields
.field private tagType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    const-string v1, "GAME_TYPE"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->GAME_TYPE:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    .line 77
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    const-string v1, "GAME_THEME"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->GAME_THEME:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    .line 78
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    const-string v1, "GAME_STYLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->GAME_STYLE:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    .line 79
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->GAME_TYPE:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->GAME_THEME:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->GAME_STYLE:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->$VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p3, p0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->tagType:I

    .line 85
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;
    .locals 1
    .parameter

    .prologue
    .line 75
    const-class v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->$VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;

    return-object v0
.end method


# virtual methods
.method public final getTagType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/wandoujia/entities/game/GameDetailInfoType$GameTagType;->tagType:I

    return v0
.end method
