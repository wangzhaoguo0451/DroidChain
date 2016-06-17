.class public final enum Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;
.super Ljava/lang/Enum;
.source "PlaylistType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

.field public static final enum M3U:Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

.field public static final enum M3U8:Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;


# instance fields
.field final contentType:Ljava/lang/String;

.field final encoding:Ljava/lang/String;

.field final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    const-string v1, "M3U8"

    const-string v3, "UTF-8"

    const-string v4, "application/vnd.apple.mpegurl"

    const-string v5, "m3u8"

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->M3U8:Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    .line 8
    new-instance v3, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    const-string v4, "M3U"

    const-string v6, "US-ASCII"

    const-string v7, "audio/mpegurl"

    const-string v8, "m3u"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->M3U:Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->M3U8:Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->M3U:Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->$VALUES:[Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->encoding:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->contentType:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->extension:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->$VALUES:[Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;

    return-object v0
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/video/m3u8/PlaylistType;->extension:Ljava/lang/String;

    return-object v0
.end method
