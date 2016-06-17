.class public final Lctz;
.super Ljava/lang/Object;
.source "GameRecommendCellView.java"

# interfaces
.implements Lctl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lctl",
        "<",
        "Lcom/wandoujia/game_launcher/models/RecommendModel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lctz;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lctz;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->c(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Lcom/wandoujia/game_launcher/views/GameStoryView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lctz;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->f(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->b()V

    .line 124
    iget-object v0, p0, Lctz;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->d(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lctz;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->g(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)V

    .line 126
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    check-cast p1, Lcom/wandoujia/game_launcher/models/RecommendModel;

    iget-object v0, p0, Lctz;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->b(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctz;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->c(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Lcom/wandoujia/game_launcher/views/GameStoryView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->setVisibility(I)V

    iget-object v0, p0, Lctz;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->d(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lctz;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0, p1}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;Lcom/wandoujia/game_launcher/models/RecommendModel;)V

    iget-object v0, p0, Lctz;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->e(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Z

    :cond_0
    return-void
.end method
