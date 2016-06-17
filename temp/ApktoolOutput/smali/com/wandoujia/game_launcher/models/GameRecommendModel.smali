.class public Lcom/wandoujia/game_launcher/models/GameRecommendModel;
.super Ljava/lang/Object;
.source "GameRecommendModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private recommend:Lcom/wandoujia/game_launcher/models/RecommendModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecommend()Lcom/wandoujia/game_launcher/models/RecommendModel;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/wandoujia/game_launcher/models/GameRecommendModel;->recommend:Lcom/wandoujia/game_launcher/models/RecommendModel;

    return-object v0
.end method
