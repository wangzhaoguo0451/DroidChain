.class final Ldyv;
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
    .line 46
    iput-object p1, p0, Ldyv;->a:Ljava/lang/String;

    iput-object p2, p0, Ldyv;->b:Lctl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Ldyv;->a:Ljava/lang/String;

    invoke-static {v0}, Lg;->l(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/models/GameRecommendModel;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/GameRecommendModel;->getRecommend()Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Ldyv;->b:Lctl;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/GameRecommendModel;->getRecommend()Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ldyu;->a(Lctl;Ljava/lang/Object;Z)V

    .line 52
    const-string v1, "daily_recommend_cache"

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/models/GameRecommendModel;->getRecommend()Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    move-result-object v0

    invoke-static {v1, v0}, Ldyu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Ldyv;->b:Lctl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ldyu;->a(Lctl;Ljava/lang/Object;Z)V

    goto :goto_0
.end method
