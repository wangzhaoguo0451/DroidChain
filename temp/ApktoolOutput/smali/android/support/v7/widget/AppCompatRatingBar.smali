.class public Landroid/support/v7/widget/AppCompatRatingBar;
.super Landroid/widget/RatingBar;
.source "AppCompatRatingBar.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatRatingBar;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3bt 0x1t 0x1t 0x1t
        0x3ct 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    sget v0, Landroid/support/v7/appcompat/R$attr;->ratingBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    sget-boolean v0, Lrb;->a:Z

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/AppCompatRatingBar;->a:[I

    invoke-static {v0, p2, v1, p3}, Lrd;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lrd;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Lrd;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatRatingBar;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatRatingBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrd;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/AppCompatRatingBar;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatRatingBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_1
    iget-object v0, v0, Lrd;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x2710

    .line 136
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 137
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 138
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 139
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 142
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 143
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatRatingBar;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 144
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 145
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v0

    .line 150
    :cond_1
    return-object p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    instance-of v0, p1, Lcr;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 90
    check-cast v0, Lcr;

    invoke-interface {v0}, Lcr;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/AppCompatRatingBar;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, p1

    .line 93
    check-cast v0, Lcr;

    invoke-interface {v0, v1}, Lcr;->a(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_0
    :goto_0
    return-object p1

    .line 95
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_6

    .line 96
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 97
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 98
    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    move v3, v1

    .line 100
    :goto_1
    if-ge v3, v4, :cond_4

    .line 101
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    .line 102
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v0, v7, :cond_2

    const v7, 0x102000f

    if-ne v0, v7, :cond_3

    :cond_2
    move v0, v2

    :goto_2
    invoke-direct {p0, v6, v0}, Landroid/support/v7/widget/AppCompatRatingBar;->a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v5, v3

    .line 100
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 102
    goto :goto_2

    .line 105
    :cond_4
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 107
    :goto_3
    if-ge v1, v4, :cond_5

    .line 108
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move-object p1, v0

    .line 111
    goto :goto_0

    .line 113
    :cond_6
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRatingBar;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 116
    iput-object v1, p0, Landroid/support/v7/widget/AppCompatRatingBar;->b:Landroid/graphics/Bitmap;

    .line 119
    :cond_7
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 120
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 122
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 123
    if-eqz p2, :cond_8

    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    :cond_8
    move-object p1, v0

    goto :goto_0
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 155
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 154
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method


# virtual methods
.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRatingBar;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRatingBar;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getNumStars()I

    move-result v1

    mul-int/2addr v0, v1

    .line 164
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lgs;->a(III)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/AppCompatRatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
