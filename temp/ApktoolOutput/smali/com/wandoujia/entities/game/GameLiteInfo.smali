.class public Lcom/wandoujia/entities/game/GameLiteInfo;
.super Lcom/wandoujia/entities/app/AppLiteInfo;
.source "GameLiteInfo.java"


# instance fields
.field private gameStat:Ljava/lang/String;

.field private gameTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originalScreenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pos:Ljava/lang/Long;

.field private recommend:Ljava/lang/String;

.field private sectionTagWording:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wandoujia/entities/app/AppLiteInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameStat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameLiteInfo;->gameStat:Ljava/lang/String;

    return-object v0
.end method

.method public getGameTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameLiteInfo;->gameTags:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalScreenshots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameLiteInfo;->originalScreenshots:Ljava/util/List;

    return-object v0
.end method

.method public getPos()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameLiteInfo;->pos:Ljava/lang/Long;

    return-object v0
.end method

.method public getRecommend()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameLiteInfo;->recommend:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionTagWording()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameLiteInfo;->sectionTagWording:Ljava/lang/String;

    return-object v0
.end method
