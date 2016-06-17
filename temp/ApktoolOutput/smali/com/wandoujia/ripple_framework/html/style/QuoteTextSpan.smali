.class public Lcom/wandoujia/ripple_framework/html/style/QuoteTextSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "QuoteTextSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 45
    return-void
.end method

.method private static a(Landroid/graphics/Paint;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    const/4 v0, 0x0

    .line 62
    :goto_0
    or-int/lit8 v2, v0, 0x1

    .line 65
    if-nez v1, :cond_3

    .line 66
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 71
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    .line 73
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 77
    :cond_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 78
    const/high16 v1, -0x4180

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 81
    :cond_1
    const v1, -0x636364

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    goto :goto_0

    .line 68
    :cond_3
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x7

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-static {p1}, Lcom/wandoujia/ripple_framework/html/style/QuoteTextSpan;->a(Landroid/graphics/Paint;)V

    .line 108
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    invoke-static {p1}, Lcom/wandoujia/ripple_framework/html/style/QuoteTextSpan;->a(Landroid/graphics/Paint;)V

    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void
.end method
