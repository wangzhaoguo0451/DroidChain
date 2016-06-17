.class public Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;
.super Lcom/wandoujia/image/view/AsyncImageView;
.source "TouchImageView.java"


# instance fields
.field private A:F

.field private B:J

.field private C:J

.field private D:Z

.field private E:Landroid/content/Context;

.field private F:Ljava/util/Timer;

.field private G:Landroid/view/View$OnClickListener;

.field private H:Ljava/lang/Object;

.field private I:Landroid/os/Handler;

.field a:Landroid/graphics/Matrix;

.field b:F

.field c:F

.field d:F

.field e:F

.field public f:Z

.field public g:Z

.field private h:I

.field private i:Landroid/graphics/Matrix;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Landroid/graphics/PointF;

.field private s:Landroid/graphics/PointF;

.field private t:Landroid/graphics/PointF;

.field private u:[F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h:I

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->i:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->r:Landroid/graphics/PointF;

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->s:Landroid/graphics/PointF;

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->t:Landroid/graphics/PointF;

    .line 55
    iput v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    .line 56
    iput v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    .line 57
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->x:F

    .line 58
    iput v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->y:F

    .line 60
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->z:Landroid/graphics/PointF;

    .line 61
    iput v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->A:F

    .line 63
    iput-wide v4, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->B:J

    .line 64
    iput-wide v4, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->C:J

    .line 65
    iput-boolean v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->D:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->I:Landroid/os/Handler;

    .line 74
    iput-boolean v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f:Z

    .line 76
    iput-boolean v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->g:Z

    .line 78
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setClickable(Z)V

    .line 98
    iput-object p1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->E:Landroid/content/Context;

    .line 100
    new-instance v0, Ldgn;

    invoke-direct {v0, p0}, Ldgn;-><init>(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->I:Landroid/os/Handler;

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->u:[F

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->E:Landroid/content/Context;

    new-instance v2, Ldgl;

    invoke-direct {v2, p0, v3}, Ldgl;-><init>(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->H:Ljava/lang/Object;

    .line 101
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    return v0
.end method

.method private static a(Ldgo;)F
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    invoke-virtual {p0, v2}, Ldgo;->a(I)F

    move-result v0

    invoke-virtual {p0, v3}, Ldgo;->a(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 416
    invoke-virtual {p0, v2}, Ldgo;->b(I)F

    move-result v1

    invoke-virtual {p0, v3}, Ldgo;->b(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 417
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->I:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h:I

    return v0
.end method

.method private b(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 387
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->p:F

    div-float v0, p1, v0

    .line 388
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->q:F

    div-float v1, p2, v1

    .line 389
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 392
    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 393
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    .line 396
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->q:F

    mul-float/2addr v1, v0

    sub-float v1, p2, v1

    iput v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->k:F

    .line 397
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->p:F

    mul-float/2addr v0, v1

    sub-float v0, p1, v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->j:F

    .line 398
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->k:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->k:F

    .line 399
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->j:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->j:F

    .line 401
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->j:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->k:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 403
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->j:F

    mul-float/2addr v0, v3

    sub-float v0, p1, v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->n:F

    .line 404
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->k:F

    mul-float/2addr v0, v3

    sub-float v0, p2, v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->o:F

    .line 405
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c()V

    .line 406
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 407
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    return p1
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->x:F

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    return p1
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    return v0
.end method

.method public static synthetic f(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    return v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/high16 v5, 0x4120

    const/4 v4, 0x1

    .line 322
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d()V

    .line 323
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->n:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 324
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->o:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 325
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->g:Z

    iput-boolean v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f:Z

    .line 327
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 329
    if-eqz v2, :cond_0

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    .line 330
    :cond_0
    iput-boolean v4, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->g:Z

    iput-boolean v4, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f:Z

    .line 344
    :goto_0
    return-void

    .line 333
    :cond_1
    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    neg-float v2, v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    .line 334
    iput-boolean v4, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f:Z

    .line 336
    :cond_2
    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_5

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    neg-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_5

    .line 338
    :cond_4
    iput-boolean v4, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->g:Z

    .line 340
    :cond_5
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    neg-float v0, v0

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    add-float/2addr v0, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    goto :goto_0
.end method

.method public static synthetic g(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->j:F

    return v0
.end method

.method public static synthetic h(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    return v0
.end method

.method public static synthetic i(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->k:F

    return v0
.end method

.method public static synthetic j(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->n:F

    return v0
.end method

.method public static synthetic k(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->o:F

    return v0
.end method

.method public static synthetic l(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/graphics/Matrix;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static synthetic m(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)[F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->u:[F

    return-object v0
.end method

.method public static synthetic n(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    return v0
.end method

.method public static synthetic o(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    return v0
.end method

.method public static synthetic p(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->G:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method final a(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 287
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->n:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 288
    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->o:F

    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 289
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d()V

    .line 290
    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 292
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    add-float/2addr v1, p2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 293
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    neg-float p2, v1

    move p1, v0

    .line 317
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 318
    invoke-direct {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f()V

    .line 319
    return-void

    .line 294
    :cond_1
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 295
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    add-float/2addr v1, v2

    neg-float p2, v1

    move p1, v0

    goto :goto_0

    .line 297
    :cond_2
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_4

    .line 299
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    add-float/2addr v1, p1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 300
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    neg-float p1, v1

    move p2, v0

    goto :goto_0

    .line 301
    :cond_3
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 302
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    add-float/2addr v1, v2

    neg-float p1, v1

    move p2, v0

    goto :goto_0

    .line 305
    :cond_4
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    add-float/2addr v1, p1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_6

    .line 306
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    neg-float p1, v1

    .line 311
    :cond_5
    :goto_1
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    add-float/2addr v1, p2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_7

    .line 312
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    neg-float p2, v0

    goto :goto_0

    .line 307
    :cond_6
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 308
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    add-float/2addr v1, v2

    neg-float p1, v1

    goto :goto_1

    .line 313
    :cond_7
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 314
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    add-float/2addr v0, v1

    neg-float p2, v0

    goto :goto_0

    :cond_8
    move p2, v0

    goto :goto_0

    :cond_9
    move p1, v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 268
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h:I

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final c()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 349
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->j:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    .line 350
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->k:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    .line 351
    return-void
.end method

.method final d()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->u:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 355
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->u:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    .line 356
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->u:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    .line 357
    return-void
.end method

.method final e()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    .line 360
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 363
    :cond_0
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 366
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const-wide v4, 0x3fb999999999999aL

    .line 274
    invoke-super {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 275
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->D:Z

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->z:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->A:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->z:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->A:F

    mul-float/2addr v1, v2

    .line 277
    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 280
    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->A:F

    const v3, 0x3f666666

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->A:F

    .line 281
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 282
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a(FF)V

    .line 283
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-super {p0, p1, p2}, Lcom/wandoujia/image/view/AsyncImageView;->onMeasure(II)V

    .line 379
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    .line 380
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    .line 381
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b(FF)V

    .line 382
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const/high16 v9, 0x3f80

    const/4 v12, 0x1

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 116
    invoke-static {p1}, Ldgo;->a(Landroid/view/MotionEvent;)Ldgo;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->H:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->H:Ljava/lang/Object;

    check-cast v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d()V

    .line 121
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {v1}, Ldgo;->b()F

    move-result v2

    invoke-virtual {v1}, Ldgo;->c()F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 123
    invoke-virtual {v1}, Ldgo;->a()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 248
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 249
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->invalidate()V

    .line 250
    return v12

    .line 125
    :pswitch_1
    iput-boolean v7, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->D:Z

    .line 126
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 127
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->r:Landroid/graphics/PointF;

    invoke-virtual {v1}, Ldgo;->b()F

    move-result v2

    invoke-virtual {v1}, Ldgo;->c()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 128
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->t:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->r:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 129
    iput v12, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h:I

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a(Ldgo;)F

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->y:F

    .line 134
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->y:F

    const/high16 v2, 0x4120

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 136
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->s:Landroid/graphics/PointF;

    invoke-virtual {v1, v7}, Ldgo;->a(I)F

    move-result v2

    invoke-virtual {v1, v12}, Ldgo;->a(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v7}, Ldgo;->b(I)F

    move-result v3

    invoke-virtual {v1, v12}, Ldgo;->b(I)F

    move-result v1

    add-float/2addr v1, v3

    div-float/2addr v2, v8

    div-float/2addr v1, v8

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 137
    const/4 v0, 0x2

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h:I

    goto :goto_0

    .line 141
    :pswitch_3
    iput-boolean v12, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->D:Z

    .line 142
    iput v7, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h:I

    .line 143
    invoke-virtual {v1}, Ldgo;->b()F

    move-result v0

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->t:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 144
    invoke-virtual {v1}, Ldgo;->c()F

    move-result v1

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->t:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 146
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    const/16 v0, 0xa

    if-ge v1, v0, :cond_1

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 149
    iget-wide v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->B:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 150
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->F:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->F:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 151
    :cond_2
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_3

    .line 152
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->x:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    div-float/2addr v0, v1

    .line 153
    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->t:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->t:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 154
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->x:F

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    .line 161
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c()V

    .line 162
    invoke-virtual {p0, v6, v6}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a(FF)V

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->B:J

    .line 170
    :goto_2
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e()V

    goto/16 :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    div-float/2addr v3, v8

    iget v4, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    div-float/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 159
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    goto :goto_1

    .line 166
    :cond_4
    iput-wide v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->B:J

    .line 167
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->F:Ljava/util/Timer;

    .line 168
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->F:Ljava/util/Timer;

    new-instance v1, Ldgm;

    invoke-direct {v1, p0, v7}, Ldgm;-><init>(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;B)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    .line 178
    :pswitch_4
    iput v7, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h:I

    .line 179
    iput v6, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->A:F

    .line 180
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 181
    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a(Ldgo;)F

    move-result v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->y:F

    goto/16 :goto_0

    .line 185
    :pswitch_5
    iput-boolean v7, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->D:Z

    .line 186
    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h:I

    if-ne v2, v12, :cond_5

    .line 187
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->r:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 188
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->r:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 192
    iget-object v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->r:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v8, v3

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    iget-wide v6, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->C:J

    sub-long v6, v4, v6

    long-to-float v6, v6

    div-float/2addr v3, v6

    const v6, 0x3f666666

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->A:F

    .line 193
    iput-wide v4, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->C:J

    .line 195
    invoke-virtual {p0, v1, v2}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a(FF)V

    .line 196
    iget-object v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->z:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 197
    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->r:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->H:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->h:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 200
    invoke-static {v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a(Ldgo;)F

    move-result v2

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    .line 205
    const/high16 v0, 0x4120

    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->y:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->y:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x4248

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 206
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->y:F

    div-float v0, v2, v0

    .line 207
    iput v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->y:F

    .line 209
    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    .line 210
    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    .line 211
    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    iget v4, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->x:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 212
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->x:F

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    .line 213
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->x:F

    div-float/2addr v0, v2

    .line 219
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c()V

    .line 220
    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->n:F

    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_7

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->o:F

    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a

    .line 221
    :cond_7
    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b:F

    div-float/2addr v2, v8

    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->c:F

    div-float/2addr v3, v8

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 222
    cmpg-float v1, v0, v9

    if-gez v1, :cond_8

    .line 223
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d()V

    .line 224
    cmpg-float v0, v0, v9

    if-gez v0, :cond_8

    .line 225
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e()V

    .line 243
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->f()V

    goto/16 :goto_0

    .line 214
    :cond_9
    iget v3, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    iget v4, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 215
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d:F

    .line 216
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->e:F

    div-float/2addr v0, v2

    goto :goto_3

    .line 229
    :cond_a
    invoke-virtual {v1, v7}, Ldgo;->a(I)F

    move-result v2

    invoke-virtual {v1, v12}, Ldgo;->a(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v7}, Ldgo;->b(I)F

    move-result v3

    invoke-virtual {v1, v12}, Ldgo;->b(I)F

    move-result v1

    add-float/2addr v1, v3

    new-instance v3, Landroid/graphics/PointF;

    div-float/2addr v2, v8

    div-float/2addr v1, v8

    invoke-direct {v3, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 230
    iget-object v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 231
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->d()V

    .line 232
    cmpg-float v0, v0, v9

    if-gez v0, :cond_8

    .line 233
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 234
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->l:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 237
    :cond_b
    :goto_5
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 238
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    iget v2, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->m:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 235
    :cond_c
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_b

    .line 236
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->v:F

    neg-float v1, v1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 239
    :cond_d
    iget v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    .line 240
    iget-object v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->w:F

    neg-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_4

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->p:F

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->q:F

    .line 373
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->b(FF)V

    .line 374
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->G:Landroid/view/View$OnClickListener;

    .line 436
    return-void
.end method

.method public setZoomToOriginalSize(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    return-void
.end method
