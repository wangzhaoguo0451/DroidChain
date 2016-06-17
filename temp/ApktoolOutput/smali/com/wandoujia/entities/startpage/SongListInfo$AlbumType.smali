.class public final enum Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
.super Ljava/lang/Enum;
.source "SongListInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

.field public static final enum ALBUM:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .annotation runtime Lcwj;
        a = "0"
    .end annotation
.end field

.field public static final enum CHOICE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .annotation runtime Lcwj;
        a = "7"
    .end annotation
.end field

.field public static final enum MY_THINGS:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .annotation runtime Lcwj;
        a = "4"
    .end annotation
.end field

.field public static final enum PLAYLIST:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .annotation runtime Lcwj;
        a = "1"
    .end annotation
.end field

.field public static final enum RANKING:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .annotation runtime Lcwj;
        a = "2"
    .end annotation
.end field

.field public static final enum RANK_ISSUE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .annotation runtime Lcwj;
        a = "3"
    .end annotation
.end field

.field public static final enum SCENE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .annotation runtime Lcwj;
        a = "8"
    .end annotation
.end field

.field public static final enum SINGER:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .annotation runtime Lcwj;
        a = "5"
    .end annotation
.end field

.field public static final enum SINGLE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .annotation runtime Lcwj;
        a = "6"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->ALBUM:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    .line 28
    new-instance v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->PLAYLIST:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    .line 30
    new-instance v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    const-string v1, "RANKING"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->RANKING:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    .line 32
    new-instance v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    const-string v1, "RANK_ISSUE"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->RANK_ISSUE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    .line 34
    new-instance v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    const-string v1, "MY_THINGS"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->MY_THINGS:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    .line 36
    new-instance v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    const-string v1, "SINGER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->SINGER:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    .line 38
    new-instance v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    const-string v1, "SINGLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->SINGLE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    .line 40
    new-instance v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    const-string v1, "CHOICE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->CHOICE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    .line 42
    new-instance v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    const-string v1, "SCENE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->SCENE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    sget-object v1, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->ALBUM:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->PLAYLIST:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->RANKING:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->RANK_ISSUE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->MY_THINGS:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->SINGER:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->SINGLE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->CHOICE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->SCENE:Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->$VALUES:[Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->$VALUES:[Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    invoke-virtual {v0}, [Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;

    return-object v0
.end method
