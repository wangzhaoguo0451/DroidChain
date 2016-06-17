.class public Lcom/wandoujia/ripple_framework/view/SmartImageView;
.super Landroid/widget/ImageView;
.source "SmartImageView.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lhnl;

.field public d:Lahk;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Landroid/view/animation/AlphaAnimation;

.field private i:Lahq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->setSupportTransition(Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->setSupportTransition(Z)V

    .line 82
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/SmartImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->f:I

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/SmartImageView;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 273
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->d:Lahk;

    new-instance v3, Lhnj;

    invoke-direct {v3, p0, p2, v0, v1}, Lhnj;-><init>(Lcom/wandoujia/ripple_framework/view/SmartImageView;ZJ)V

    invoke-virtual {v2, p1, v3, v4, v4}, Lahk;->a(Ljava/lang/String;Lahr;II)Lahq;

    move-result-object v0

    .line 337
    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    .line 338
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/view/SmartImageView;J)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/view/SmartImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->e:I

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/ripple_framework/view/SmartImageView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/ripple_framework/view/SmartImageView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/ripple_framework/view/SmartImageView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/ripple_framework/view/SmartImageView;)Lhnl;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->c:Lhnl;

    return-object v0
.end method

.method public static synthetic g(Lcom/wandoujia/ripple_framework/view/SmartImageView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->h:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->getWidth()I

    move-result v0

    .line 233
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->getHeight()I

    move-result v1

    .line 236
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    invoke-virtual {v0}, Lahq;->a()V

    .line 245
    iput-object v2, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    .line 247
    :cond_2
    invoke-virtual {p0, v2}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->e:I

    if-eqz v0, :cond_0

    .line 249
    iget v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->e:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->setImageResource(I)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    iget-object v0, v0, Lahq;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    iget-object v0, v0, Lahq;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    invoke-virtual {v0}, Lahq;->a()V

    .line 262
    invoke-virtual {p0, v2}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 210
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->invalidate()V

    .line 211
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    invoke-virtual {v0}, Lahq;->a()V

    .line 200
    invoke-virtual {p0, v1}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    iput-object v1, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->i:Lahq;

    .line 204
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 205
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/SmartImageView;->a(Z)V

    .line 192
    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->e:I

    .line 150
    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput p1, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->f:I

    .line 158
    return-void
.end method

.method public setSupportTransition(Z)V
    .locals 4
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->g:Z

    .line 167
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->h:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->h:Landroid/view/animation/AlphaAnimation;

    .line 169
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/SmartImageView;->h:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 171
    :cond_0
    return-void
.end method
