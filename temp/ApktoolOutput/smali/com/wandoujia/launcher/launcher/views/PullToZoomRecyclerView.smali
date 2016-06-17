.class public Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "PullToZoomRecyclerView.java"


# static fields
.field private static final q:Landroid/view/animation/Interpolator;


# instance fields
.field private r:Landroid/view/View;

.field private s:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:Lecw;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lecv;

    invoke-direct {v0}, Lecv;-><init>()V

    sput-object v0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->q:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x4080

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->t:I

    .line 29
    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F

    .line 30
    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->w:F

    .line 31
    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->x:F

    .line 45
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->z:I

    new-instance v0, Lecw;

    invoke-direct {v0, p0}, Lecw;-><init>(Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->y:Lecw;

    .line 46
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->u:I

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;)Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->s:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    return-object v0
.end method

.method public static synthetic l()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->q:Landroid/view/animation/Interpolator;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/high16 v8, 0x3f80

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    .line 88
    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    if-nez v1, :cond_0

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 90
    :cond_0
    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->u:I

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->u:I

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 153
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 96
    :pswitch_0
    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->y:Lecw;

    iget-boolean v1, v1, Lecw;->b:Z

    if-nez v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->y:Lecw;

    iput-boolean v0, v1, Lecw;->b:Z

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F

    .line 100
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->t:I

    .line 101
    iget v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->z:I

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->u:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->x:F

    .line 102
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->u:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->w:F

    goto :goto_1

    .line 105
    :pswitch_1
    iget v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->t:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 106
    if-eq v1, v2, :cond_2

    .line 108
    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F

    .line 110
    :cond_4
    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->u:I

    if-lt v2, v3, :cond_7

    .line 111
    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 113
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->u:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->w:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget v4, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->w:F

    add-float/2addr v3, v4

    .line 116
    iget v4, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->w:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_5

    iget v4, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->w:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    .line 117
    iget v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->u:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->s:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    invoke-virtual {v0, v8}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setScale(F)V

    .line 121
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 123
    :cond_5
    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->w:F

    .line 125
    iget v3, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->u:I

    int-to-float v3, v3

    iget v4, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->w:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->z:I

    if-ge v3, v4, :cond_6

    .line 127
    iget-object v3, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v2, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->s:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    iget v3, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->w:F

    invoke-virtual {v2, v3}, Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;->setScale(F)V

    .line 130
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F

    goto/16 :goto_0

    .line 133
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F

    goto/16 :goto_1

    .line 137
    :pswitch_2
    iput v2, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->t:I

    iput v3, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F

    iput v3, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->x:F

    iput v3, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->w:F

    .line 138
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->y:Lecw;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lecw;->d:J

    const-wide/16 v2, 0xc8

    iput-wide v2, v0, Lecw;->a:J

    iget-object v1, v0, Lecw;->e:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    iget-object v1, v1, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lecw;->e:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    iget v2, v2, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->u:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lecw;->c:F

    iput-boolean v4, v0, Lecw;->b:Z

    iget-object v1, v0, Lecw;->e:Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 141
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->t:I

    goto/16 :goto_1

    .line 146
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->t:I

    if-ne v1, v2, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->t:I

    .line 148
    :cond_8
    :try_start_0
    iget v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->t:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->v:F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setHeaderImageView(Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->s:Lcom/wandoujia/launcher/launcher/views/TopCropAsyncImageView;

    .line 69
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/views/PullToZoomRecyclerView;->r:Landroid/view/View;

    .line 65
    return-void
.end method
