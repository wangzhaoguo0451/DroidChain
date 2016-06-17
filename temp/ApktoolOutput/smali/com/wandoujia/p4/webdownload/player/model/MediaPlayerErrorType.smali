.class public final enum Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;
.super Ljava/lang/Enum;
.source "MediaPlayerErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

.field public static final enum ILLEGAL_ARGUMENTS_ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

.field public static final enum MEDIA_PLAYER_ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

.field public static final enum PROXY_ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    const-string v1, "MEDIA_PLAYER_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;->MEDIA_PLAYER_ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    const-string v1, "ILLEGAL_ARGUMENTS_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;->ILLEGAL_ARGUMENTS_ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    const-string v1, "PROXY_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;->PROXY_ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;->MEDIA_PLAYER_ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;->ILLEGAL_ARGUMENTS_ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;->PROXY_ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;->$VALUES:[Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;->$VALUES:[Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;

    return-object v0
.end method
