.class public final Lcuc;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "GameStoryView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/game_launcher/views/GameStoryView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/game_launcher/views/GameStoryView;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcuc;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 5
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcuc;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->a(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/ripple_framework/view/LoadingView;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/view/LoadingView;->a:Lhmj;

    invoke-virtual {v0}, Lhmj;->stop()V

    .line 135
    iget-object v0, p0, Lcuc;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->a(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/ripple_framework/view/LoadingView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/LoadingView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcuc;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->c(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    move-result-object v0

    iget-object v1, p0, Lcuc;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v1}, Lcom/wandoujia/game_launcher/views/GameStoryView;->b(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/game_launcher/models/RecommendModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/game_launcher/models/RecommendModel;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ld;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ld;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/wandoujia/game_launcher/lib/R$string;->game_launch_daily_title_today:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcuc;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->c(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->a()V

    .line 138
    return-void

    .line 136
    :cond_0
    iget-object v2, v0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/wandoujia/game_launcher/lib/R$string;->game_launch_daily_title:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
