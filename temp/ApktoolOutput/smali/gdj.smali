.class public final Lgdj;
.super Ljava/lang/Object;
.source "SectionGridCardUtils.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lgdj;->a:I

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 25
    sget v0, Lgdj;->a:I

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lj;->b(Landroid/content/Context;)F

    move-result v1

    .line 28
    invoke-static {v0, v1}, Lgdj;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lgdj;->a:I

    .line 30
    :cond_0
    sget v0, Lgdj;->a:I

    return v0
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 98
    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sub-float v1, p1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method public static b()I
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lj;->b(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 42
    invoke-static {v0, v1}, Lgdj;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method
