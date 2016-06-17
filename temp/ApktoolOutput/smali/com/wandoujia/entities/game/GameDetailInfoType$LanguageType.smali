.class public final enum Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;
.super Ljava/lang/Enum;
.source "GameDetailInfoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

.field public static final enum CHS:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

.field public static final enum CHT:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

.field public static final enum EN:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

.field public static final enum JA:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

.field public static final enum KO:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

.field public static final enum OTHER:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

.field public static final enum UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    const-string v1, "EN"

    const-string v2, "EN"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->EN:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    .line 9
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    const-string v1, "CHS"

    const-string v2, "CHS"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->CHS:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    .line 10
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    const-string v1, "CHT"

    const-string v2, "CHT"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->CHT:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    .line 11
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    const-string v1, "JA"

    const-string v2, "JA"

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->JA:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    .line 12
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    const-string v1, "KO"

    const-string v2, "KO"

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->KO:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    .line 13
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    const-string v3, "OTHER"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->OTHER:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    .line 14
    new-instance v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->EN:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->CHS:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->CHT:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->JA:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->KO:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->OTHER:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->UNKNOWN:Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->$VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->code:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->$VALUES:[Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameDetailInfoType$LanguageType;->code:Ljava/lang/String;

    return-object v0
.end method
