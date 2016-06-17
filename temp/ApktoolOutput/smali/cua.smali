.class public final Lcua;
.super Ljava/lang/Object;
.source "GameRecommendCellView.java"

# interfaces
.implements Lcuh;


# instance fields
.field final synthetic a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->c(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Lcom/wandoujia/game_launcher/views/GameStoryView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->a()V

    .line 147
    iget-object v0, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->h(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->c(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Lcom/wandoujia/game_launcher/views/GameStoryView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->a()V

    .line 157
    iget-object v0, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->i(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcua;->c()V

    goto :goto_0

    .line 160
    :cond_1
    new-instance v0, Lcub;

    invoke-direct {v0, p0}, Lcub;-><init>(Lcua;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcub;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method final c()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v1}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->i(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 193
    iget-object v2, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    iget-object v0, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->i(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    iget-object v2, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v2}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->a(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcua;->a:Lcom/wandoujia/game_launcher/views/GameRecommendCellView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameRecommendCellView;->i(Lcom/wandoujia/game_launcher/views/GameRecommendCellView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 196
    return-void
.end method
