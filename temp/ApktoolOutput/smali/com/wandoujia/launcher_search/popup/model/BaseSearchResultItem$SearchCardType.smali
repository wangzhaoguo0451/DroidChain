.class public final enum Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;
.super Ljava/lang/Enum;
.source "BaseSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum APPS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum BANNER:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum COMMUNITY:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum EBOOKS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum MUSIC:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final ONEBOX_ATTACH_CARD_TYPES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum PERSON:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum PERSON_PRODUCT:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum RELATED_RECOMMEND:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum RESERVE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum TICKET_SHARE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum UNI:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final VALID_CARD_TYPES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum VIDEOS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum VIDEO_EPISODES:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum WALLPAPERS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

.field public static final enum WEB:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "APPS"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->APPS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 34
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "VIDEOS"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->VIDEOS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 35
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "EBOOKS"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->EBOOKS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 36
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "WALLPAPERS"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->WALLPAPERS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 37
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "WEB"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->WEB:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 38
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "UNI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->UNI:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 39
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "MUSIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->MUSIC:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 40
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "TICKET_SHARE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->TICKET_SHARE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 41
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "BANNER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->BANNER:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 42
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "PERSON"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->PERSON:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 43
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "RESERVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->RESERVE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 45
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "VIDEO_EPISODES"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->VIDEO_EPISODES:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 46
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "PERSON_PRODUCT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->PERSON_PRODUCT:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 47
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "COMMUNITY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->COMMUNITY:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 48
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    const-string v1, "RELATED_RECOMMEND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->RELATED_RECOMMEND:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 32
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->APPS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->VIDEOS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->EBOOKS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->WALLPAPERS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->WEB:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->UNI:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->MUSIC:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->TICKET_SHARE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->BANNER:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->PERSON:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->RESERVE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->VIDEO_EPISODES:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->PERSON_PRODUCT:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->COMMUNITY:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->RELATED_RECOMMEND:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->$VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 54
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->APPS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->VIDEOS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->EBOOKS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->WALLPAPERS:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->WEB:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->UNI:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->MUSIC:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->TICKET_SHARE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->BANNER:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->PERSON:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->RESERVE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->RELATED_RECOMMEND:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->VALID_CARD_TYPES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    .line 59
    new-array v0, v5, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->VIDEO_EPISODES:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->PERSON_PRODUCT:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->ONEBOX_ATTACH_CARD_TYPES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parseFrom(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;
    .locals 5
    .parameter

    .prologue
    .line 64
    invoke-static {}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->values()[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 65
    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    :goto_1
    return-object v0

    .line 64
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->$VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    return-object v0
.end method
