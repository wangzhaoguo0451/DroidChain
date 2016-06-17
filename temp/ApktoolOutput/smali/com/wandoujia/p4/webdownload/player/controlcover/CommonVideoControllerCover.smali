.class public Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;
.super Landroid/widget/RelativeLayout;
.source "CommonVideoControllerCover.java"

# interfaces
.implements Lgvb;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lgvz;

.field private c:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

.field private d:J

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/SeekBar;

.field private k:Landroid/widget/ProgressBar;

.field private l:Z

.field private m:Z

.field private final n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/view/animation/Animation;

.field private s:Landroid/view/animation/Animation;

.field private t:Landroid/view/animation/Animation;

.field private u:Landroid/view/animation/Animation;

.field private v:Landroid/view/animation/Animation;

.field private final w:Landroid/view/animation/Animation$AnimationListener;

.field private final x:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->IDLE:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->c:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->l:Z

    .line 66
    iput-boolean v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->m:Z

    .line 70
    iput-boolean v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->p:Z

    .line 79
    new-instance v0, Lgup;

    invoke-direct {v0, p0}, Lgup;-><init>(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->w:Landroid/view/animation/Animation$AnimationListener;

    .line 100
    new-instance v0, Lgut;

    invoke-direct {v0, p0}, Lgut;-><init>(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->x:Ljava/lang/Runnable;

    .line 131
    invoke-static {p1}, Lcom/wandoujia/base/utils/SystemUtil;->hasSoftKeys(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->n:Z

    .line 132
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;
    .locals 3
    .parameter

    .prologue
    .line 117
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$layout;->common_video_controller_cover:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;

    return-object v0
.end method

.method private a(J)V
    .locals 7
    .parameter

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->o:Z

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->i:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/wandoujia/base/utils/TextUtil;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->b:Lgvz;

    invoke-interface {v0}, Lgvz;->e()I

    move-result v0

    int-to-long v0, v0

    .line 313
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->j:Landroid/widget/SeekBar;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    div-long v0, v4, v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 316
    :cond_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->i:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/wandoujia/base/utils/TextUtil;->stringForTimeInMinutes(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->a(J)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->l:Z

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->p:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->m:Z

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->f()V

    return-void
.end method

.method public static synthetic d(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)Lgvz;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->b:Lgvz;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->m:Z

    if-nez v0, :cond_1

    .line 257
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->a:Ljava/lang/String;

    const-string v1, "showLoadingView "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->m:Z

    .line 265
    :cond_1
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->m:Z

    if-eqz v0, :cond_1

    .line 269
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideLoadingView state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->c:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iput-boolean v3, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->m:Z

    .line 277
    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->p:Z

    return v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)J
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->d:J

    return-wide v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 280
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->x:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->l:Z

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->f()V

    .line 335
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->n:Z

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 341
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->c:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->PREPARING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->c:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->SEEKING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->c:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->IDLE:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    if-ne v0, v1, :cond_3

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->k:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->u:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->d()V

    .line 352
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->l:Z

    .line 353
    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->setVisibility(I)V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->u:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 349
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->e()V

    goto :goto_1
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->a()V

    .line 410
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->f()V

    .line 411
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 423
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->total_time:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 424
    int-to-long v2, p3

    iput-wide v2, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->d:J

    .line 425
    int-to-long v2, p3

    sget-wide v4, Lcom/wandoujia/base/utils/DateUtil;->HOUR:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 426
    if-nez v1, :cond_0

    .line 427
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->o:Z

    .line 428
    int-to-long v2, p3

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->stringForTimeInMinutes(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :goto_0
    return-void

    .line 429
    :cond_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_1

    .line 430
    iput-boolean v6, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->o:Z

    .line 431
    int-to-long v2, p3

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 433
    :cond_1
    iput-boolean v6, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->o:Z

    .line 434
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;ZLjava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;",
            "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;",
            "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 442
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    sget-object v0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStateChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    :cond_0
    iput-object p3, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->c:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    .line 447
    sget-object v0, Lgus;->a:[I

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->c:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 456
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$drawable;->player_play_btn_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 460
    :goto_0
    sget-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->PREPARING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->SEEKING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    if-ne p3, v0, :cond_3

    .line 461
    :cond_1
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->m:Z

    if-nez v0, :cond_2

    .line 462
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->d()V

    .line 470
    :cond_2
    :goto_1
    return-void

    .line 449
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$drawable;->player_pause_btn_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 453
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 465
    :cond_3
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->m:Z

    if-eqz v0, :cond_2

    .line 466
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->e()V

    .line 467
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->f()V

    goto :goto_1

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->l:Z

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->n:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgur;

    invoke-direct {v1, p0}, Lgur;-><init>(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->r:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->v:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 372
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->e()V

    .line 377
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->l:Z

    .line 378
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->f()V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->k:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->v:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 375
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->d()V

    goto :goto_1
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->a()V

    .line 416
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->p:Z

    if-eqz v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 481
    :cond_0
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->a(J)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    return-void
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    return-void
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->j:Landroid/widget/SeekBar;

    mul-int/lit16 v1, p3, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 487
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 404
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->l:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 322
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 142
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->top_bar:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->e:Landroid/widget/RelativeLayout;

    .line 143
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->f:Landroid/widget/RelativeLayout;

    .line 144
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->back:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->g:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->g:Landroid/widget/ImageView;

    new-instance v1, Lguu;

    invoke-direct {v1, p0}, Lguu;-><init>(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->play_btn:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    .line 153
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    new-instance v1, Lguv;

    invoke-direct {v1, p0}, Lguv;-><init>(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->current_time:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->i:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lguw;

    invoke-direct {v1}, Lguw;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lgux;

    invoke-direct {v1}, Lgux;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    new-instance v0, Lguy;

    invoke-direct {v0, p0}, Lguy;-><init>(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->j:Landroid/widget/SeekBar;

    .line 193
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->j:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 194
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->j:Landroid/widget/SeekBar;

    new-instance v1, Lguz;

    invoke-direct {v1, p0}, Lguz;-><init>(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 219
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->loading_view:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->k:Landroid/widget/ProgressBar;

    .line 221
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->n:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lgva;

    invoke-direct {v1, p0}, Lgva;-><init>(Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 233
    :cond_0
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    const-string v1, "controller"

    invoke-virtual {v0, p0, v1}, Leny;->a(Landroid/view/View;Ljava/lang/String;)Leny;

    .line 234
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->g:Landroid/widget/ImageView;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v3, "back"

    invoke-virtual {v0, v1, v2, v4, v3}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Leny;

    .line 236
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->h:Landroid/widget/ImageView;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v3, "play"

    invoke-virtual {v0, v1, v2, v4, v3}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Leny;

    .line 239
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$anim;->video_top_bar_up_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->r:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$anim;->video_top_bar_down_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->q:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$anim;->video_bottom_bar_up_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->s:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$anim;->video_bottom_bar_down_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->t:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->t:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->w:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$anim;->fade_out_quickly:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->v:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$anim;->fade_in_quickly:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->u:Landroid/view/animation/Animation;

    .line 240
    return-void
.end method

.method public setCanSkipped(Z)V
    .locals 1
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->j:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 389
    return-void
.end method

.method public setMediaPlayer(Lgvz;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/player/controlcover/CommonVideoControllerCover;->b:Lgvz;

    .line 137
    return-void
.end method
