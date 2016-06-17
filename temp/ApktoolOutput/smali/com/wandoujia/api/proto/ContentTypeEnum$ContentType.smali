.class public final enum Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;
.super Ljava/lang/Enum;
.source "ContentTypeEnum.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum APP_COMMENT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum APP_DIVERSION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum APP_RECOMMEND:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum BANNER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum BAR:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum BUTTON:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum CATEGORY:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum CHANNEL:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum CONTAINER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum DOWNLOAD_INFO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum FEED:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum FILTER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum GAME:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum GIFT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum HISTORY:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum IMAGE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum KEYWORD:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum MUSIC:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum NOT_SUPPORT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum PATCH:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum PUBLISHER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum PUBLISHSER_BUNDLE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum RANKING:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SCENE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SCENE_SUGGESTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SEARCH_DIRECT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SEARCH_HINT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SECTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SELF_UPDATE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SHARE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SORTER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SUGGESTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SUGGESTION_ACTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum SUGGESTION_ACTION_GROUP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum TAB:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum TODAY:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

.field public static final enum VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;


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

    .line 41
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "NOT_SUPPORT"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->NOT_SUPPORT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 42
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "APP"

    invoke-direct {v0, v1, v5, v4}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 43
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v6, v5}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->GAME:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 44
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v7, v6}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 45
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v8, v7}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->MUSIC:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 46
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "FEED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->FEED:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 47
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "BAR"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->BAR:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 48
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SECTION"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SECTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 49
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "BANNER"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->BANNER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 50
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "CONTAINER"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->CONTAINER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 51
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "CATEGORY"

    const/16 v2, 0xa

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->CATEGORY:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 52
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "TAB"

    const/16 v2, 0xb

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->TAB:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 53
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "CHANNEL"

    const/16 v2, 0xc

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->CHANNEL:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 54
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "TODAY"

    const/16 v2, 0xd

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->TODAY:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 55
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "APP_DIVERSION"

    const/16 v2, 0xe

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP_DIVERSION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 56
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "APP_RECOMMEND"

    const/16 v2, 0xf

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP_RECOMMEND:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 57
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "APP_COMMENT"

    const/16 v2, 0x10

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP_COMMENT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 58
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SELF_UPDATE"

    const/16 v2, 0x11

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SELF_UPDATE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 59
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "KEYWORD"

    const/16 v2, 0x12

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->KEYWORD:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 60
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "GIFT"

    const/16 v2, 0x13

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->GIFT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 61
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "RANKING"

    const/16 v2, 0x14

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->RANKING:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 62
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "FILTER"

    const/16 v2, 0x15

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->FILTER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 63
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SORTER"

    const/16 v2, 0x16

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SORTER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 64
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "BUTTON"

    const/16 v2, 0x17

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->BUTTON:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 65
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "HISTORY"

    const/16 v2, 0x18

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->HISTORY:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 66
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SUGGESTION"

    const/16 v2, 0x19

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SUGGESTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 67
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SEARCH_DIRECT"

    const/16 v2, 0x1a

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SEARCH_DIRECT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 68
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SEARCH_HINT"

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SEARCH_HINT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 69
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "DOWNLOAD_INFO"

    const/16 v2, 0x1c

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->DOWNLOAD_INFO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 70
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "PUBLISHER"

    const/16 v2, 0x1d

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PUBLISHER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 71
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "PUBLISHSER_BUNDLE"

    const/16 v2, 0x1e

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PUBLISHSER_BUNDLE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 72
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "IMAGE"

    const/16 v2, 0x1f

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->IMAGE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 73
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "PATCH"

    const/16 v2, 0x20

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PATCH:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 74
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SHARE"

    const/16 v2, 0x21

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SHARE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 78
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SCENE"

    const/16 v2, 0x22

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SCENE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 82
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SCENE_SUGGESTION"

    const/16 v2, 0x23

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SCENE_SUGGESTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 86
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SUGGESTION_ACTION_GROUP"

    const/16 v2, 0x24

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SUGGESTION_ACTION_GROUP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 90
    new-instance v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    const-string v1, "SUGGESTION_ACTION"

    const/16 v2, 0x25

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SUGGESTION_ACTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 39
    const/16 v0, 0x26

    new-array v0, v0, [Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->NOT_SUPPORT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->GAME:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->MUSIC:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->FEED:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->BAR:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SECTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->BANNER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->CONTAINER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->CATEGORY:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->TAB:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->CHANNEL:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->TODAY:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP_DIVERSION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP_RECOMMEND:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP_COMMENT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SELF_UPDATE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->KEYWORD:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->GIFT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->RANKING:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->FILTER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SORTER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->BUTTON:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->HISTORY:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SUGGESTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SEARCH_DIRECT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SEARCH_HINT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->DOWNLOAD_INFO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PUBLISHER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PUBLISHSER_BUNDLE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->IMAGE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PATCH:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SHARE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SCENE:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SCENE_SUGGESTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SUGGESTION_ACTION_GROUP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SUGGESTION_ACTION:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->$VALUES:[Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->value:I

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->$VALUES:[Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0}, [Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->value:I

    return v0
.end method
