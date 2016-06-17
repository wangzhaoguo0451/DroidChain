.class public final enum Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;
.super Ljava/lang/Enum;
.source "SearchConst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

.field public static final enum ALBUM:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

.field public static final enum MIX:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

.field public static final enum PLAYLIST:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

.field public static final enum SINGER:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

.field public static final enum SONG:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;


# instance fields
.field private final title:Ljava/lang/String;

.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 203
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    const-string v1, "SONG"

    const-string v2, "song"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0567

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->SONG:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    .line 204
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    const-string v1, "ALBUM"

    const-string v2, "album"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e00df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->ALBUM:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    .line 205
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    const-string v1, "SINGER"

    const-string v2, "singer"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0565

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->SINGER:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    .line 206
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    const-string v1, "PLAYLIST"

    const-string v2, "playlist"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e04e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->PLAYLIST:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    .line 207
    new-instance v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    const-string v1, "MIX"

    const-string v2, "mix"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e05f3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->MIX:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    .line 202
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->SONG:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->ALBUM:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->SINGER:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->PLAYLIST:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->MIX:Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->$VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 213
    iput-object p3, p0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->typeName:Ljava/lang/String;

    .line 214
    iput-object p4, p0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->title:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public static parseFrom(Ljava/lang/String;)Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;
    .locals 5
    .parameter

    .prologue
    .line 226
    invoke-static {}, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->values()[Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 227
    invoke-virtual {v0}, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    :goto_1
    return-object v0

    .line 226
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;
    .locals 1
    .parameter

    .prologue
    .line 202
    const-class v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->$VALUES:[Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/wandoujia/p4/search/utils/SearchConst$MusicContentType;->typeName:Ljava/lang/String;

    return-object v0
.end method
