.class public final Lcud;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "GameStoryView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/game_launcher/views/GameStoryView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/game_launcher/views/GameStoryView;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcud;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcud;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->d(Lcom/wandoujia/game_launcher/views/GameStoryView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcud;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->c(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/game_launcher/views/GameDailyTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->b()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcud;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->a(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/ripple_framework/view/LoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/LoadingView;->a()V

    .line 163
    iget-object v0, p0, Lcud;->a:Lcom/wandoujia/game_launcher/views/GameStoryView;

    invoke-static {v0}, Lcom/wandoujia/game_launcher/views/GameStoryView;->a(Lcom/wandoujia/game_launcher/views/GameStoryView;)Lcom/wandoujia/ripple_framework/view/LoadingView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/LoadingView;->setVisibility(I)V

    .line 164
    return-void
.end method
