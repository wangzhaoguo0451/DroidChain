.class public final Ldzq;
.super Ljava/lang/Object;
.source "DailyRecommendFragment.java"

# interfaces
.implements Lecr;


# instance fields
.field final synthetic a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x258

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 145
    iget-object v0, p0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->d(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;

    move-result-object v0

    iget-boolean v1, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->d:Lcom/nineoldandroids/animation/AnimatorSet;

    if-nez v1, :cond_1

    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->d:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v1, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->b:Lcom/wandoujia/launcher/launcher/views/MaskRelativeLayout;

    invoke-static {v1, v4, v3}, Ld;->a(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lecq;

    invoke-direct {v2, v0}, Lecq;-><init>(Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->a:Lcom/wandoujia/launcher/launcher/views/LoadingView;

    invoke-static {v2, v3, v4}, Ld;->a(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->d:Lcom/nineoldandroids/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/nineoldandroids/animation/Animator;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->playSequentially([Lcom/nineoldandroids/animation/Animator;)V

    :cond_1
    iget-object v1, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->d:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    iput-boolean v5, v0, Lcom/wandoujia/launcher/launcher/views/GameStoryCardView;->e:Z

    .line 149
    :cond_2
    iget-object v0, p0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->e(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    invoke-virtual {p0}, Ldzq;->b()V

    goto :goto_0

    .line 152
    :cond_3
    new-instance v0, Ldzr;

    invoke-direct {v0, p0}, Ldzr;-><init>(Ldzq;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldzr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v1}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->e(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 184
    iget-object v2, p0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    iget-object v0, p0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->e(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    iget-object v0, p0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    iget-object v2, p0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v2}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->g(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->b(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Ldzq;->a:Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;->e(Lcom/wandoujia/launcher/launcher/fragments/DailyRecommendFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    return-void
.end method
