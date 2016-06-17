.class public Lcom/wandoujia/game_launcher/views/GameDailyTextView;
.super Landroid/widget/LinearLayout;
.source "GameDailyTextView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field private b:I

.field private c:Lcom/nineoldandroids/animation/AnimatorSet;

.field private d:Lcom/nineoldandroids/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->setVisibility(I)V

    .line 70
    iget v0, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->b:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ld;->b(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->d:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 72
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->d:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 73
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x0

    iget v1, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {p0, v0, v1}, Ld;->b(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 81
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 82
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->a:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$string;->game_launch_daily_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ld;->s()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 46
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->d:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 48
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    iget v2, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->b:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {p0, v1, v2}, Ld;->b(Ljava/lang/Object;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 49
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 55
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/game_launcher/views/GameDailyTextView;->b:I

    .line 56
    return-void
.end method
