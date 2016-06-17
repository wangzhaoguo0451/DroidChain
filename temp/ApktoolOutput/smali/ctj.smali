.class final Lctj;
.super Ljava/lang/Object;
.source "SonicDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lctl;


# direct methods
.method constructor <init>(Ljava/lang/String;Lctl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lctj;->a:Ljava/lang/String;

    iput-object p2, p0, Lctj;->b:Lctl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lctj;->a:Ljava/lang/String;

    invoke-static {v0}, Ld;->C(Ljava/lang/String;)Lcom/wandoujia/game_launcher/models/GameRecommendModel;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/GameRecommendModel;->getRecommend()Lcom/wandoujia/game_launcher/models/RecommendModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lctj;->b:Lctl;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/GameRecommendModel;->getRecommend()Lcom/wandoujia/game_launcher/models/RecommendModel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcti;->a(Lctl;Ljava/lang/Object;Z)V

    .line 51
    const-string v1, "daily_recommend_cache"

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/models/GameRecommendModel;->getRecommend()Lcom/wandoujia/game_launcher/models/RecommendModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcti;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lctj;->b:Lctl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcti;->a(Lctl;Ljava/lang/Object;Z)V

    goto :goto_0
.end method
