.class public Lcom/wandoujia/launcher/launcher/models/RecommendModel;
.super Ljava/lang/Object;
.source "RecommendModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private app:Lcom/wandoujia/entities/game/GameLiteInfo;

.field private date:Ljava/lang/String;

.field private headImage:Ljava/lang/String;

.field private operationTitle:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private recommendWording:Ljava/lang/String;

.field private story:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/StoryParagraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp()Lcom/wandoujia/entities/game/GameLiteInfo;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->app:Lcom/wandoujia/entities/game/GameLiteInfo;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->headImage:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->operationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendWording()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->recommendWording:Ljava/lang/String;

    return-object v0
.end method

.method public getStory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher/launcher/models/StoryParagraph;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/RecommendModel;->story:Ljava/util/List;

    return-object v0
.end method
