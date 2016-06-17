.class public final Ldzp;
.super Ljava/lang/Object;
.source "DailyRecommendFragment.java"

# interfaces
.implements Lctl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lctl",
        "<",
        "Lcom/wandoujia/launcher/launcher/models/RecommendModel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Ldzp;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Ldzp;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Ldzp;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->b(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Ldzp;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->c(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)V

    .line 138
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    check-cast p1, Lcom/wandoujia/launcher/launcher/models/RecommendModel;

    iget-object v0, p0, Ldzp;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldzp;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->setVisibility(I)V

    iget-object v0, p0, Ldzp;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->b(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ldzp;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;Lcom/wandoujia/launcher/launcher/models/RecommendModel;)V

    :cond_0
    return-void
.end method
