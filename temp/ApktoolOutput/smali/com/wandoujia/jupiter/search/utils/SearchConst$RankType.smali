.class public final enum Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;
.super Ljava/lang/Enum;
.source "SearchConst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

.field public static final enum APK_SIZE_ASC:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

.field public static final enum INSTALL_COUNT:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

.field public static final enum LATEST:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

.field public static final enum WEEKLY_DOWNLOAD:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;


# instance fields
.field private rankType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 257
    new-instance v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    const-string v1, "INSTALL_COUNT"

    const-string v2, "installCount"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->INSTALL_COUNT:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    .line 258
    new-instance v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    const-string v1, "LATEST"

    const-string v2, "latest"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->LATEST:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    .line 259
    new-instance v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    const-string v1, "APK_SIZE_ASC"

    const-string v2, "apkSizeAsc"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->APK_SIZE_ASC:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    .line 260
    new-instance v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    const-string v1, "WEEKLY_DOWNLOAD"

    const-string v2, "weekly"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->WEEKLY_DOWNLOAD:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    .line 255
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    sget-object v1, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->INSTALL_COUNT:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->LATEST:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->APK_SIZE_ASC:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->WEEKLY_DOWNLOAD:Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->$VALUES:[Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

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
    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 265
    iput-object p3, p0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->rankType:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;
    .locals 1
    .parameter

    .prologue
    .line 255
    const-class v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->$VALUES:[Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;

    return-object v0
.end method


# virtual methods
.method public final getRankType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/utils/SearchConst$RankType;->rankType:Ljava/lang/String;

    return-object v0
.end method
