.class public Lcom/wandoujia/entities/startpage/SongListInfo;
.super Ljava/lang/Object;
.source "SongListInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5e018971bae709fbL


# instance fields
.field private albumType:Ljava/lang/String;

.field public songListId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getAlbumType()Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    .locals 1

    .prologue
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SongListInfo;->albumType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;->valueOf(Ljava/lang/String;)Lcom/wandoujia/entities/startpage/SongListInfo$AlbumType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
