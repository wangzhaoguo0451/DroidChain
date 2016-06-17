.class public final enum Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;
.super Ljava/lang/Enum;
.source "BaseSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

.field public static final enum MINI:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

.field public static final enum NORMAL:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

.field public static final enum RECOMMEND:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->NORMAL:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    .line 17
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    const-string v1, "MINI"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->MINI:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    .line 18
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    const-string v1, "RECOMMEND"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->RECOMMEND:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->NORMAL:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->MINI:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->RECOMMEND:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->$VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parseFrom(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;
    .locals 5
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->values()[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 21
    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    :goto_1
    return-object v0

    .line 20
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->NORMAL:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->$VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardStyle;

    return-object v0
.end method
