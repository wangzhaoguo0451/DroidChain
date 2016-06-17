.class public Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;
.super Landroid/widget/LinearLayout;
.source "GameStoryAppInfoCardView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

.field private c:Lejy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->c:Lejy;

    invoke-virtual {v0, p1, p2}, Lejy;->a(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 38
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->app_icon:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

    .line 39
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->app_sub_title:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->a:Landroid/widget/TextView;

    .line 40
    new-instance v0, Lejy;

    invoke-direct {v0}, Lejy;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->c:Lejy;

    .line 41
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->c:Lejy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lejy;->f:Z

    .line 42
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$layout;->gf_suggestion_view:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->a(I)V

    .line 43
    return-void
.end method

.method public setAppInfo(Lcom/wandoujia/game_launcher/models/RecommendModel;)V
    .locals 8
    .parameter

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getApp()Lcom/wandoujia/entities/game/GameLiteInfo;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/wandoujia/game_launcher/lib/R$string;->game_launch_app_sub_title:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/wandoujia/entities/game/GameLiteInfo;->getStat()Lcom/wandoujia/entities/app/StatLiteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wandoujia/entities/app/StatLiteInfo;->getTotalStr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Lehh;->a(Lcom/wandoujia/entities/app/IAppLiteInfo;)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->c:Lejy;

    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameStoryAppInfoCardView;->b:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

    new-instance v2, Leiv;

    invoke-virtual {p1}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getApp()Lcom/wandoujia/entities/game/GameLiteInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Leiv;-><init>(Lcom/wandoujia/entities/app/IAppLiteInfo;)V

    invoke-virtual {v0, v1, v2}, Lejy;->a(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;Leiu;)V

    .line 61
    :cond_0
    return-void
.end method
