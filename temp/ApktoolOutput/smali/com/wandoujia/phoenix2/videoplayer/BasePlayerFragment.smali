.class public abstract Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "BasePlayerFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lgyp;
.implements Lgyx;


# instance fields
.field private A:I

.field private B:J

.field private C:I

.field public a:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Landroid/media/MediaPlayer;

.field public f:Lgyk;

.field public g:Landroid/view/SurfaceHolder;

.field public h:Z

.field public i:Z

.field public j:J

.field private k:Lgyw;

.field private l:Lgyo;

.field private m:Ljava/util/Timer;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/FrameLayout;

.field private q:Landroid/widget/FrameLayout;

.field private r:Landroid/view/SurfaceView;

.field private s:Landroid/view/animation/Animation;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->b:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->c:Ljava/util/List;

    .line 53
    iput v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->d:I

    .line 70
    iput-boolean v2, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->t:Z

    .line 71
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->u:Z

    .line 72
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->v:Z

    .line 74
    iput-boolean v2, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->h:Z

    .line 75
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->w:Z

    .line 78
    iput-boolean v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    .line 79
    iput-boolean v2, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->i:Z

    .line 80
    iput v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->A:I

    .line 83
    iput-wide v4, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->j:J

    .line 84
    iput-wide v4, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->B:J

    .line 85
    iput v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->C:I

    .line 1024
    return-void
.end method

.method private A()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 428
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    invoke-virtual {v0, v2}, Lgyk;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    invoke-virtual {v1, v2}, Lgyk;->removeMessages(I)V

    .line 430
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lgyk;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 431
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->B:J

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Lgyw;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    return-object v0
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0, p1}, Lgyw;->setCurrentTime(I)V

    .line 502
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0, p2}, Lgyw;->setTotalTime(I)V

    .line 503
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->d(I)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a(II)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->i:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->x:Z

    return p1
.end method

.method public static synthetic c(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->p:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private d(I)V
    .locals 3
    .parameter

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->x:Z

    if-eqz v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->p()I

    move-result v0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->q()I

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v2

    :goto_1
    invoke-interface {v1, v0}, Lgyw;->setCurrentPlayPercent(I)V

    .line 494
    iget v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->A:I

    if-eq p1, v0, :cond_0

    .line 495
    invoke-virtual {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->b(I)V

    .line 496
    iput p1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->A:I

    goto :goto_0

    .line 493
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static synthetic d(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->u:Z

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    return v0
.end method

.method public static synthetic f(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->d:I

    return v0
.end method

.method public static synthetic g(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->B:J

    return-wide v0
.end method

.method public static synthetic h(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->j:J

    return-wide v0
.end method

.method public static synthetic i(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->h:Z

    return v0
.end method

.method public static synthetic j(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)I
    .locals 2
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->C:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->C:I

    return v0
.end method

.method public static synthetic k(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->C:I

    return v0
.end method

.method public static synthetic l(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static synthetic m(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f_()V

    return-void
.end method

.method public static synthetic n(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    return-object v0
.end method

.method public static synthetic o(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic p(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic q(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->t:Z

    return v0
.end method

.method public static synthetic r(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    return v0
.end method

.method public static synthetic s(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->A:I

    return v0
.end method

.method public static w()V
    .locals 0

    .prologue
    .line 941
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->u:Z

    .line 370
    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0}, Lgyw;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0}, Lgyw;->b()V

    .line 383
    :cond_0
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->w:Z

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    invoke-virtual {v0, v1}, Lgyk;->removeMessages(I)V

    .line 388
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgyk;->removeMessages(I)V

    .line 389
    return-void
.end method


# virtual methods
.method public abstract a(Lgyp;)Lgyo;
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 888
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0}, Lgyw;->f()V

    .line 890
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z()V

    .line 891
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->A()V

    .line 936
    :goto_0
    return-void

    .line 934
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z()V

    goto :goto_0
.end method

.method public a(JI)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 907
    invoke-direct {p0, v8}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->d(I)V

    .line 908
    iput v8, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->A:I

    .line 909
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 910
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0, v9}, Lgyw;->setCanPlay(Z)V

    .line 911
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0, v9}, Lgyw;->setCanDragSeekBar(Z)V

    .line 912
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->A()V

    .line 913
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->h:Z

    if-eqz v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->m:Ljava/util/Timer;

    new-instance v1, Lgym;

    invoke-direct {v1, p0, v8}, Lgym;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;B)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 917
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->j()V

    .line 918
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->i()V

    .line 919
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lgyk;->sendEmptyMessage(I)Z

    .line 920
    iput-boolean v8, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->h:Z

    .line 921
    iput v8, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->C:I

    .line 922
    return-void

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenHeight(Landroid/view/WindowManager;)I

    move-result v2

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenWidth(Landroid/view/WindowManager;)I

    move-result v3

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    int-to-float v4, v3

    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v2

    int-to-float v6, v1

    int-to-float v7, v0

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->r:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v2

    int-to-float v7, v3

    div-float/2addr v1, v7

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->r:Landroid/view/SurfaceView;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_3
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 902
    const-string v0, "BasePlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError called "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 655
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->q()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a(II)V

    .line 951
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 673
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 955
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0, p1}, Lgyw;->setBufferPercent(I)V

    .line 956
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 568
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    .line 570
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->B()V

    .line 571
    sget-object v0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;->URL:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    .line 572
    const-string v0, "BasePlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " load url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , now playingIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 588
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 587
    :goto_1
    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 580
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 583
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public d()V
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->n()V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 591
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 596
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    .line 598
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->B()V

    .line 599
    sget-object v0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;->LOCAL_FILE:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 614
    :goto_1
    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 607
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 610
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public e()V
    .locals 4

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e04e4

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 457
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->n()V

    .line 459
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->t:Z

    .line 460
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->n()V

    .line 985
    return-void
.end method

.method public final f_()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    .line 207
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 208
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    new-instance v1, Lgyf;

    invoke-direct {v1, p0}, Lgyf;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 219
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    new-instance v1, Lgyg;

    invoke-direct {v1, p0}, Lgyg;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 226
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    new-instance v1, Lgyh;

    invoke-direct {v1, p0}, Lgyh;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 232
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    new-instance v1, Lgyi;

    invoke-direct {v1, p0}, Lgyi;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 247
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    new-instance v1, Lgyj;

    invoke-direct {v1, p0}, Lgyj;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 276
    return-void
.end method

.method public g()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 879
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c04ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0c04ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f0c04ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->p:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f0c04a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->r:Landroid/view/SurfaceView;

    const v0, 0x7f0c04aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->q:Landroid/widget/FrameLayout;

    new-instance v0, Lgxz;

    invoke-direct {v0, p0}, Lgxz;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0}, Lgyw;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v1}, Lgyw;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v1}, Lgyw;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lgyc;

    invoke-direct {v1, p0}, Lgyc;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->r:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-boolean v5, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->y:Z

    .line 880
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->s:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->s:Landroid/view/animation/Animation;

    new-instance v1, Lgyd;

    invoke-direct {v1, p0}, Lgyd;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 881
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->y()V

    .line 882
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f_()V

    .line 883
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0, v3}, Lgyw;->setCanPlay(Z)V

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0, v3}, Lgyw;->setCanDragSeekBar(Z)V

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0, v3}, Lgyw;->setCurrentPlayPercent(I)V

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0, v3}, Lgyw;->setBufferPercent(I)V

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    new-instance v1, Lgyl;

    invoke-direct {v1, p0}, Lgyl;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    invoke-interface {v0, v1}, Lgyw;->setPlayerExitListener(Lgyl;)V

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    new-instance v1, Lgya;

    invoke-direct {v1, p0}, Lgya;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    invoke-interface {v0, v1}, Lgyw;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->p:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->y()V

    .line 884
    :goto_0
    return-void

    .line 883
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->g_()V

    goto :goto_0
.end method

.method public final g_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->v:Z

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0, v1}, Lgyw;->setCanPlay(Z)V

    .line 334
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->v:Z

    .line 337
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0}, Lgyw;->e()V

    .line 896
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->A()V

    .line 897
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->v:Z

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgyw;->setCanPlay(Z)V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->v:Z

    .line 345
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->p:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->u:Z

    .line 377
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z()V

    .line 393
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->A()V

    .line 396
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->m()V

    .line 403
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0}, Lgyw;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    invoke-interface {v0}, Lgyw;->c()V

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgyk;->removeMessages(I)V

    .line 411
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    invoke-virtual {v0, v2}, Lgyk;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    invoke-virtual {v1, v2}, Lgyk;->removeMessages(I)V

    .line 413
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lgyk;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x406

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 425
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->x()V

    .line 438
    :cond_0
    return-void
.end method

.method public final o()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 710
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    if-eqz v1, :cond_0

    .line 711
    sget-object v1, Lgyb;->a:[I

    iget-object v2, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a:Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;

    invoke-virtual {v2}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment$SourceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 720
    :cond_0
    :goto_0
    return v0

    .line 713
    :pswitch_0
    const-string v1, "BasePlayerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " totalSnippetNum = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 717
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e0461

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 94
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->hasSoftKeys(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->w:Z

    .line 100
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->m:Ljava/util/Timer;

    .line 101
    new-instance v0, Lgyk;

    invoke-direct {v0, p0}, Lgyk;-><init>(Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;)V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->f:Lgyk;

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f030241

    invoke-static {v0, v1}, Ld;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onDestroy()V

    .line 514
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->y:Z

    .line 516
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 517
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 507
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onPause()V

    .line 508
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->s()V

    .line 509
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0, p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a(Lgyp;)Lgyo;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->l:Lgyo;

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->l:Lgyo;

    invoke-interface {v0}, Lgyo;->c()Lgyw;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->l:Lgyo;

    invoke-interface {v0}, Lgyo;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->k:Lgyw;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "VideoPlayerControllerView can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->g()V

    .line 114
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->l:Lgyo;

    invoke-interface {v0}, Lgyo;->a()V

    .line 115
    return-void
.end method

.method public final p()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 746
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    if-nez v1, :cond_1

    .line 752
    :cond_0
    :goto_0
    return v0

    .line 750
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final q()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 770
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    if-nez v1, :cond_1

    .line 776
    :cond_0
    :goto_0
    return v0

    .line 774
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final r()V
    .locals 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    if-eqz v0, :cond_0

    .line 790
    :try_start_0
    const-string v0, "BasePlayerFragment"

    const-string v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 792
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->h()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final s()V
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    if-eqz v0, :cond_0

    .line 809
    :try_start_0
    const-string v0, "BasePlayerFragment"

    const-string v1, "pause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 811
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->a(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 522
    iput-object p1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->g:Landroid/view/SurfaceHolder;

    .line 528
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 529
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 534
    :goto_1
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_4

    .line 535
    :goto_2
    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    .line 539
    :cond_2
    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->y:Z

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->g:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 532
    goto :goto_1

    :cond_4
    move v1, v2

    .line 534
    goto :goto_2
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    return-void
.end method

.method public final t()V
    .locals 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    if-eqz v0, :cond_0

    .line 822
    :try_start_0
    const-string v0, "BasePlayerFragment"

    const-string v1, "stop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->z:Z

    .line 825
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->onStop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final u()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 834
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 836
    :try_start_0
    const-string v1, "BasePlayerFragment"

    const-string v2, "isPlaying"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    iget-object v1, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 839
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final v()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 862
    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/videoplayer/BasePlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 946
    return-void
.end method
