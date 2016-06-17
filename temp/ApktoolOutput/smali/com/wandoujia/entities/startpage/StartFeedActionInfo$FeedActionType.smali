.class public final enum Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;
.super Ljava/lang/Enum;
.source "StartFeedActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum CLOSE:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum DOWNLOAD_VIDEO:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum INSTALL:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum OPEN_BANNER:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum OPEN_URL:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum PICKUP_GIFT:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum PLAY_SONG_LIST:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum PLAY_VIDEO:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum READ_EBOOK:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum SUBSCRIBE_EBOOK:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum SUBSCRIBE_MUSIC:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum SUBSCRIBE_VIDEO:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

.field public static final enum VIEW:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "VIEW"

    const-string v2, "VIEW"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->VIEW:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 129
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "OPEN_URL"

    const-string v2, "OPEN_URL"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->OPEN_URL:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 130
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "INSTALL"

    const-string v2, "INSTALL"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->INSTALL:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 131
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "CLOSE"

    const-string v2, "CLOSE"

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->CLOSE:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 132
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "PLAY_VIDEO"

    const-string v2, "PLAY_VIDEO"

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->PLAY_VIDEO:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 133
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "PICKUP_GIFT"

    const/4 v2, 0x5

    const-string v3, "PICKUP_GIFT"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->PICKUP_GIFT:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 134
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "DOWNLOAD_VIDEO"

    const/4 v2, 0x6

    const-string v3, "DOWNLOAD_VIDEO"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->DOWNLOAD_VIDEO:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 135
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "SUBSCRIBE_EBOOK"

    const/4 v2, 0x7

    const-string v3, "SUBSCRIBE_EBOOK"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->SUBSCRIBE_EBOOK:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 136
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "SUBSCRIBE_VIDEO"

    const/16 v2, 0x8

    const-string v3, "SUBSCRIBE_VIDEO"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->SUBSCRIBE_VIDEO:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 137
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "READ_EBOOK"

    const/16 v2, 0x9

    const-string v3, "READ_EBOOK"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->READ_EBOOK:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 138
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "SUBSCRIBE_MUSIC"

    const/16 v2, 0xa

    const-string v3, "SUBSCRIBE_MUSIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->SUBSCRIBE_MUSIC:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 139
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "OPEN_BANNER"

    const/16 v2, 0xb

    const-string v3, "OPEN_BANNER"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->OPEN_BANNER:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 140
    new-instance v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    const-string v1, "PLAY_SONG_LIST"

    const/16 v2, 0xc

    const-string v3, "PLAY_SONG_LIST"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->PLAY_SONG_LIST:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    .line 127
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    sget-object v1, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->VIEW:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->OPEN_URL:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->INSTALL:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->CLOSE:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->PLAY_VIDEO:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->PICKUP_GIFT:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->DOWNLOAD_VIDEO:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->SUBSCRIBE_EBOOK:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->SUBSCRIBE_VIDEO:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->READ_EBOOK:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->SUBSCRIBE_MUSIC:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->OPEN_BANNER:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->PLAY_SONG_LIST:Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->$VALUES:[Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

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
    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput-object p3, p0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->type:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;
    .locals 1
    .parameter

    .prologue
    .line 127
    const-class v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->$VALUES:[Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/startpage/StartFeedActionInfo$FeedActionType;

    return-object v0
.end method
