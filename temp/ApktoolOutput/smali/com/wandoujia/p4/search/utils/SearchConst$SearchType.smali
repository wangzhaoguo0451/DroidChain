.class public final enum Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;
.super Ljava/lang/Enum;
.source "SearchConst.java"

# interfaces
.implements Lcom/wandoujia/entities/app/TabCategory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;",
        ">;",
        "Lcom/wandoujia/entities/app/TabCategory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum ALL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum APP:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum EBOOK:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum ENTERTAINMENT:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static EXPLICIT_SEARCH_TYPES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum GAME:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum HOMEPAGE:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum MARKET:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum MUSIC:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum UNI:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum VIDEO:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum WALLPAPER:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

.field public static final enum WEB:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;


# instance fields
.field private pattern:I

.field private subTypeKey:Ljava/lang/String;

.field private tabId:Ljava/lang/String;

.field private typeKey:Ljava/lang/String;

.field private typeStringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 67
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "APP"

    const/4 v2, 0x0

    const-string v3, "APPS"

    const/4 v4, 0x1

    sget-object v5, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->APP:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-virtual {v5}, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app"

    const v7, 0x7f0e05ef

    invoke-direct/range {v0 .. v7}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->APP:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 69
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "GAME"

    const/4 v2, 0x1

    const-string v3, "APPS"

    const/4 v4, 0x2

    sget-object v5, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->GAME:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-virtual {v5}, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "game"

    const v7, 0x7f0e05f1

    invoke-direct/range {v0 .. v7}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->GAME:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 71
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    const-string v3, "VIDEOS"

    const/4 v4, 0x4

    const-string v5, "video"

    const v6, 0x7f0e05f7

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->VIDEO:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 72
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "MUSIC"

    const/4 v2, 0x3

    const-string v3, "MUSIC"

    const/16 v4, 0x8

    const-string v5, "music"

    const v6, 0x7f0e05f3

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->MUSIC:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 73
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "EBOOK"

    const/4 v2, 0x4

    const-string v3, "EBOOKS"

    const-string v4, "ebook"

    const v5, 0x7f0e05f0

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->EBOOK:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 74
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "WALLPAPER"

    const/4 v2, 0x5

    const-string v3, "WALLPAPERS"

    const/16 v4, 0x10

    const-string v5, "wallpaper"

    const v6, 0x7f0e05f8

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->WALLPAPER:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 76
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "MARKET"

    const/4 v2, 0x6

    const-string v3, "ALL"

    const/4 v4, 0x3

    const-string v5, "market"

    const v6, 0x7f0e0304

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->MARKET:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 77
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "ENTERTAINMENT"

    const/4 v2, 0x7

    const-string v3, "ENTERTAINMENT"

    const/16 v4, 0x3c

    const-string v5, "entertainment"

    const v6, 0x7f0e0303

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->ENTERTAINMENT:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 80
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "WEB"

    const/16 v2, 0x8

    const-string v3, "WEB"

    const-string v4, ""

    const v5, 0x7f0e0491

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->WEB:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 81
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "ALL"

    const/16 v2, 0x9

    const-string v3, "ALL"

    const-string v4, "all"

    const v5, 0x7f0e0302

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 82
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "UNI"

    const/16 v2, 0xa

    const-string v3, "UNI"

    const-string v4, ""

    const v5, 0x7f0e036e

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->UNI:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 83
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const-string v1, "HOMEPAGE"

    const/16 v2, 0xb

    const-string v3, "HOMEPAGE"

    const-string v4, "home"

    const v5, 0x7f0e0367

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->HOMEPAGE:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 66
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->APP:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->GAME:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->VIDEO:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->MUSIC:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->EBOOK:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->WALLPAPER:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->MARKET:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->ENTERTAINMENT:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->WEB:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->UNI:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->HOMEPAGE:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->$VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->APP:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->VIDEO:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->MUSIC:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->EBOOK:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->WALLPAPER:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->EXPLICIT_SEARCH_TYPES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput-object p3, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->typeKey:Ljava/lang/String;

    .line 109
    iput p4, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->pattern:I

    .line 110
    iput-object p6, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->tabId:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->subTypeKey:Ljava/lang/String;

    .line 112
    iput p7, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->typeStringId:I

    .line 113
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method public static getSearchTypeByTabId(Ljava/lang/String;)Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;
    .locals 5
    .parameter

    .prologue
    .line 149
    invoke-static {}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->values()[Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 150
    invoke-virtual {v0}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->getTabId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    :goto_1
    return-object v0

    .line 149
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 154
    :cond_1
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    goto :goto_1
.end method

.method public static parseExplicitFromTypeKey(Ljava/lang/String;)Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;
    .locals 5
    .parameter

    .prologue
    .line 158
    sget-object v2, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->EXPLICIT_SEARCH_TYPES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 159
    invoke-virtual {v0}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->getTypeKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    :goto_1
    return-object v0

    .line 158
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 163
    :cond_1
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    goto :goto_1
.end method

.method public static parseFrom(Ljava/lang/String;)Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;
    .locals 5
    .parameter

    .prologue
    .line 140
    invoke-static {}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->values()[Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 141
    invoke-virtual {v0}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    :goto_1
    return-object v0

    .line 140
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 145
    :cond_1
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    goto :goto_1
.end method

.method public static parseFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-static {}, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->values()[Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 169
    iget-object v4, v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->typeKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->subTypeKey:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->subTypeKey:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    sget-object v4, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->APP:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    if-ne v4, v0, :cond_1

    .line 176
    :cond_0
    :goto_1
    return-object v0

    .line 168
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 176
    :cond_2
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;
    .locals 1
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->$VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;

    return-object v0
.end method


# virtual methods
.method public final getPattern()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->pattern:I

    return v0
.end method

.method public final getSubTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->subTypeKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeStringId()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/wandoujia/p4/search/utils/SearchConst$SearchType;->typeStringId:I

    return v0
.end method
