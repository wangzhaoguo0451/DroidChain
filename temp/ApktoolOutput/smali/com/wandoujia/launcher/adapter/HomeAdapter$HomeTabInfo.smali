.class public final enum Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;
.super Ljava/lang/Enum;
.source "HomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

.field public static final enum GF:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

.field public static final enum GL:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

.field public static final enum SEARCH:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;


# instance fields
.field private tabId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    const-string v1, "SEARCH"

    const-string v2, "search"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->SEARCH:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    .line 69
    new-instance v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    const-string v1, "GL"

    const-string v2, "gl"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GL:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    .line 70
    new-instance v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    const-string v1, "GF"

    const-string v2, "gf"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GF:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    sget-object v1, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->SEARCH:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GL:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GF:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->$VALUES:[Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->tabId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;
    .locals 1
    .parameter

    .prologue
    .line 67
    const-class v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->$VALUES:[Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    return-object v0
.end method
