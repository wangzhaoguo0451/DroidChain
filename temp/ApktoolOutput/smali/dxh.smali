.class final Ldxh;
.super Lekl;
.source "LauncherAppCell.java"


# instance fields
.field private a:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;


# direct methods
.method constructor <init>(Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lekl;-><init>()V

    .line 73
    iput-object p1, p0, Ldxh;->a:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

    .line 74
    return-void
.end method


# virtual methods
.method public final a(Leiu;)Z
    .locals 12
    .parameter

    .prologue
    .line 78
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-interface {p1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-interface {p1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lebl;->c(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 82
    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/wandoujia/base/utils/MemoryUtil;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v2

    .line 84
    invoke-interface {p1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/MemoryUtil;->killAllProcesses(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    invoke-static {v0}, Lcom/wandoujia/base/utils/MemoryUtil;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v4

    .line 86
    invoke-interface {p1}, Leiu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v5, v1}, Ldxg;->a(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v2, p0, Ldxh;->a:Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

    invoke-virtual {v2}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;->getIcon()Landroid/view/View;

    move-result-object v2

    .line 89
    new-instance v3, Lcom/wandoujia/launcher/view/SpeedUpView;

    invoke-direct {v3, v0}, Lcom/wandoujia/launcher/view/SpeedUpView;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-interface {p1}, Leiu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/launcher/view/SpeedUpView;->setIcon(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v1}, Lcom/wandoujia/launcher/view/SpeedUpView;->setMsg(Ljava/lang/String;)V

    .line 92
    invoke-static {v2}, Ldxg;->a(Landroid/view/View;)I

    move-result v1

    invoke-static {v2}, Ldxg;->b(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v3}, Lcom/wandoujia/launcher/view/SpeedUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v5, 0x7d3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v5, 0x428

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v5, 0x11

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/wandoujia/game_launcher/lib/R$id;->background:I

    invoke-virtual {v3, v0}, Lcom/wandoujia/launcher/view/SpeedUpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v4, Lcom/wandoujia/game_launcher/lib/R$id;->icon_container:I

    invoke-virtual {v3, v4}, Lcom/wandoujia/launcher/view/SpeedUpView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/wandoujia/game_launcher/lib/R$id;->icon_bg:I

    invoke-virtual {v3, v5}, Lcom/wandoujia/launcher/view/SpeedUpView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/wandoujia/game_launcher/lib/R$id;->msg_container:I

    invoke-virtual {v3, v6}, Lcom/wandoujia/launcher/view/SpeedUpView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "translationX"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v1, v10

    int-to-float v1, v1

    aput v1, v8, v9

    const/4 v1, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v8, v1

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x1f4

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v7, "translationY"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v2, v10

    int-to-float v2, v2

    aput v2, v8, v9

    const/4 v2, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v8, v2

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x1f4

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {v0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v10, 0x1f4

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v9, "rotation"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v10, 0x7d0

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v10, 0x1f4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v10, "alpha"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_6

    invoke-static {v6, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v3, v3, Lcom/wandoujia/launcher/view/SpeedUpView;->a:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 94
    new-instance v1, Ldxi;

    invoke-direct {v1, p1}, Ldxi;-><init>(Leiu;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 92
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x61t 0x45t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
