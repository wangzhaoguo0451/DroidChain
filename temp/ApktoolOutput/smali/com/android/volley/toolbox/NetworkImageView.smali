.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lahq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public static synthetic a(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->b:I

    return v0
.end method

.method public static synthetic b(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->a:I

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 195
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->invalidate()V

    .line 196
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    invoke-virtual {v0}, Lahq;->a()V

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    iput-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    .line 189
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 190
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 176
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    invoke-virtual {v0}, Lahq;->a()V

    iput-object v2, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    :cond_2
    :goto_0
    return-void

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    iget-object v0, v0, Lahq;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    iget-object v0, v0, Lahq;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    invoke-virtual {v0}, Lahq;->a()V

    invoke-virtual {p0, v2}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    new-instance v0, Lahv;

    invoke-direct {v0, p0}, Lahv;-><init>(Lcom/android/volley/toolbox/NetworkImageView;)V

    invoke-virtual {v2, v2, v0, v3, v3}, Lahk;->a(Ljava/lang/String;Lahr;II)Lahq;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lahq;

    goto :goto_0
.end method

.method public setDefaultImageResId(I)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->a:I

    .line 88
    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->b:I

    .line 96
    return-void
.end method
