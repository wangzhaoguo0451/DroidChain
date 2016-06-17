.class public final enum Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;
.super Ljava/lang/Enum;
.source "SearchConst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

.field public static final enum HORIZONTAL:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

.field public static final enum HORIZONTAL_MINI:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

.field public static final enum VERTICAL:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

.field public static final enum VERTICAL_MINI:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

.field public static final enum WEATHER:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->VERTICAL:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    new-instance v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->HORIZONTAL:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    new-instance v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    const-string v1, "VERTICAL_MINI"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->VERTICAL_MINI:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    new-instance v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    const-string v1, "HORIZONTAL_MINI"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->HORIZONTAL_MINI:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    new-instance v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    const-string v1, "WEATHER"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->WEATHER:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->VERTICAL:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->HORIZONTAL:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->VERTICAL_MINI:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->HORIZONTAL_MINI:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->WEATHER:Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->$VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getCardType(I)Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;
    .locals 1
    .parameter

    .prologue
    .line 33
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->values()[Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 34
    invoke-static {}, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->values()[Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    move-result-object v0

    aget-object v0, v0, p0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->$VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/app/SearchConst$InAppCardType;

    return-object v0
.end method
