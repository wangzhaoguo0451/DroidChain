.class public final Lctp;
.super Legg;
.source "DailyRecommendCell.java"


# instance fields
.field private a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Legg;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lctp;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lctp;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    if-nez v0, :cond_0

    .line 20
    invoke-static {p2}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    move-result-object v0

    iput-object v0, p0, Lctp;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    .line 22
    :cond_0
    iget-object v0, p0, Lctp;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lctp;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-boolean v0, p0, Lctp;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lctp;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    iget-boolean v0, v0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->b:Z

    if-nez v0, :cond_2

    .line 31
    iget-object v0, p0, Lctp;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lctp;->g:Z

    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lctp;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    iget-object v0, v0, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    iget-object v1, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->d:Lcom/wandoujia/game_launcher/models/RecommendModel;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->a:Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

    iget-object v2, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->d:Lcom/wandoujia/game_launcher/models/RecommendModel;

    invoke-virtual {v1, v2}, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->setAppInfo(Lcom/wandoujia/game_launcher/models/RecommendModel;)V

    iget-object v1, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->b:Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;

    iget-object v0, v0, Lcom/wandoujia/game_launcher/views/GameStoryView;->d:Lcom/wandoujia/game_launcher/models/RecommendModel;

    invoke-virtual {v1, v0}, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->setAppInfo(Lcom/wandoujia/game_launcher/models/RecommendModel;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lctp;->g:Z

    .line 41
    return-void
.end method
