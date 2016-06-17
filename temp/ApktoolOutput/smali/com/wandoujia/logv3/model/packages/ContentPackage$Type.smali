.class public final enum Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;
.super Ljava/lang/Enum;
.source "ContentPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum ACTION:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum APP:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum EBOOK:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum IAS:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum MUSIC_ALBUM:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum MUSIC_PLAY_LIST:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum MUSIC_RANKING_LIST:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum MUSIC_RANK_ISSUE:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum MUSIC_SONG:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum PERSON:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum SINGER:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum STORY:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum SUGGESTION:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum TRIGGER:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum VIDEO:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

.field public static final enum WALLPAPER:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "APP"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 202
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->VIDEO:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 206
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "EBOOK"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->EBOOK:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 210
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v7, v7}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 214
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "WALLPAPER"

    invoke-direct {v0, v1, v8, v8}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->WALLPAPER:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 218
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "PERSON"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->PERSON:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 222
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "MUSIC_SONG"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->MUSIC_SONG:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 226
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "MUSIC_ALBUM"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->MUSIC_ALBUM:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 230
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "MUSIC_PLAY_LIST"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->MUSIC_PLAY_LIST:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 234
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "MUSIC_RANKING_LIST"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->MUSIC_RANKING_LIST:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 238
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "MUSIC_RANK_ISSUE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->MUSIC_RANK_ISSUE:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 242
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "SINGER"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->SINGER:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 246
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "IAS"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->IAS:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 250
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "TRIGGER"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->TRIGGER:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 254
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "STORY"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->STORY:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 258
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "SUGGESTION"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->SUGGESTION:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 262
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    const-string v1, "ACTION"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->ACTION:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    .line 196
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->VIDEO:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->EBOOK:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->WALLPAPER:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->PERSON:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->MUSIC_SONG:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->MUSIC_ALBUM:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->MUSIC_PLAY_LIST:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->MUSIC_RANKING_LIST:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->MUSIC_RANK_ISSUE:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->SINGER:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->IAS:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->TRIGGER:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->STORY:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->SUGGESTION:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->ACTION:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

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
    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 267
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->value:I

    .line 268
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;
    .locals 1
    .parameter

    .prologue
    .line 196
    const-class v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->value:I

    return v0
.end method
