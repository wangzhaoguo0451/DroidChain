.class public final enum Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;
.super Ljava/lang/Enum;
.source "SPMusicInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

.field public static final enum FEED_ALBUM:Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

.field public static final enum FEED_PLAYLIST:Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

.field public static final enum FEED_RANKING:Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    const-string v1, "FEED_PLAYLIST"

    const-string v2, "FEED_PLAYLIST"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;->FEED_PLAYLIST:Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    new-instance v0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    const-string v1, "FEED_RANKING"

    const-string v2, "FEED_RANKING"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;->FEED_RANKING:Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    new-instance v0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    const-string v1, "FEED_ALBUM"

    const-string v2, "FEED_ALBUM"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;->FEED_ALBUM:Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    sget-object v1, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;->FEED_PLAYLIST:Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;->FEED_RANKING:Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;->FEED_ALBUM:Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;->$VALUES:[Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;->type:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;->$VALUES:[Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/music/SPMusicInfo$SPMusicType;

    return-object v0
.end method
