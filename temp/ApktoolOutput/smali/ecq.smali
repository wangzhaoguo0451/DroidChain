.class public final Lecq;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "GameStoryCardView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lecq;->a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lecq;->a:Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->d(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)Lcom/wandoujia/launcher/launcher/views/LoadingView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/views/LoadingView;->setVisibility(I)V

    .line 310
    return-void
.end method
