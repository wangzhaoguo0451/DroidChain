.class public Lcom/wandoujia/jupiter/toolbar/MythingMenuView;
.super Landroid/widget/TextView;
.source "MythingMenuView.java"


# instance fields
.field private a:I

.field private b:Lexg;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Bitmap;

.field private e:Lcom/nineoldandroids/animation/ValueAnimator;

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Rect;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->i:Z

    .line 60
    invoke-direct {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->i:Z

    .line 66
    invoke-direct {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->i:Z

    .line 71
    invoke-direct {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a()V

    .line 72
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->g:I

    return p1
.end method

.method private static varargs a(Lcom/wandoujia/ripple_framework/download/DownloadManager;[Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-static {}, Lhbm;->a()Lhbn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhbn;->a([Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Lhbn;

    move-result-object v0

    invoke-virtual {v0}, Lhbn;->a()Lhbn;

    move-result-object v0

    invoke-virtual {v0}, Lhbn;->b()Lhbm;

    move-result-object v0

    .line 221
    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/high16 v3, 0x4240

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    .line 77
    const/high16 v1, 0x4130

    invoke-virtual {p0, v5, v1}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setTextSize(IF)V

    .line 78
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setTextColor(I)V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v5}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 80
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setGravity(I)V

    .line 81
    new-instance v1, Ldvg;

    invoke-direct {v1, p0, v0}, Ldvg;-><init>(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;Lcom/wandoujia/ripple_framework/download/DownloadManager;)V

    invoke-virtual {p0, v1}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->c:Landroid/graphics/Paint;

    .line 115
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020262

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->d:Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3, v1}, Lj;->a(FLandroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->f:I

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-static {v3, v0}, Lj;->a(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x4200

    invoke-static {v3, v0}, Lj;->a(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->h:Landroid/graphics/Rect;

    .line 118
    new-array v0, v5, [F

    const/high16 v1, 0x3f80

    aput v1, v0, v4

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->e:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 119
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->e:Lcom/nineoldandroids/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 120
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->e:Lcom/nineoldandroids/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    .line 121
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->e:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->e:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Ldvh;

    invoke-direct {v1, p0}, Ldvh;-><init>(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a:I

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/16 v1, 0x63

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    .line 185
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b()I

    move-result v2

    if-lez v2, :cond_5

    .line 186
    new-array v1, v4, [Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;[Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)I

    move-result v1

    if-lez v1, :cond_3

    .line 187
    iput-boolean v4, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->i:Z

    .line 206
    :cond_0
    const v0, 0x7f020264

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setBackgroundResource(I)V

    .line 207
    invoke-virtual {p0, v5}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->e:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->i:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->e:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 213
    :cond_1
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->i:Z

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->e:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 216
    :cond_2
    return-void

    .line 190
    :cond_3
    new-array v1, v4, [Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager;[Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)I

    move-result v0

    if-lez v0, :cond_4

    .line 191
    iput-boolean v3, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->i:Z

    .line 192
    const v0, 0x7f020263

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setBackgroundResource(I)V

    .line 193
    invoke-virtual {p0, v5}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :cond_4
    iput-boolean v3, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->i:Z

    .line 196
    const v0, 0x7f020265

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setBackgroundResource(I)V

    .line 197
    invoke-virtual {p0, v5}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_5
    iput-boolean v3, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->i:Z

    .line 201
    iget v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a:I

    if-lez v0, :cond_0

    .line 202
    const v0, 0x7f020266

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setBackgroundResource(I)V

    .line 203
    iget v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a:I

    if-le v0, v1, :cond_6

    move v0, v1

    .line 204
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :cond_6
    iget v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a:I

    goto :goto_1
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->b()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 137
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020262

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->d:Landroid/graphics/Bitmap;

    .line 140
    :cond_0
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->i()Ljava/util/List;

    move-result-object v1

    sget-object v0, Lham;->f:Lham;

    const-string v2, "app"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a:I

    .line 141
    invoke-direct {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->b()V

    .line 142
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 144
    new-instance v0, Ldvi;

    invoke-direct {v0, p0}, Ldvi;-><init>(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->b:Lexg;

    .line 151
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->b:Lexg;

    invoke-static {v0}, Lewx;->a(Lexg;)V

    .line 152
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 165
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->d:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->e:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 170
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 227
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 229
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 230
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->d:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->g:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 233
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/wandoujia/ripple_framework/event/DownloadEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_INFO_LOADED:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_STATE_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    if-eq v0, v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->b()V

    goto :goto_0
.end method
