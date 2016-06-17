.class public Lcom/wandoujia/ripple_framework/html/style/QuoteSpan;
.super Ljava/lang/Object;
.source "QuoteSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$dimen;->detail_quote_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/wandoujia/ripple_framework/html/style/QuoteSpan;->a:F

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    .line 66
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 68
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    const v0, -0x3f3f40

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    int-to-float v0, p3

    iget v1, p0, Lcom/wandoujia/ripple_framework/html/style/QuoteSpan;->a:F

    add-float/2addr v1, v0

    int-to-float v2, p5

    int-to-float v0, p3

    iget v3, p0, Lcom/wandoujia/ripple_framework/html/style/QuoteSpan;->a:F

    add-float/2addr v0, v3

    const/high16 v3, 0x4120

    add-float/2addr v3, v0

    int-to-float v4, p7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/wandoujia/ripple_framework/html/style/QuoteSpan;->a:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x9

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    const v0, -0x3f3f40

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
