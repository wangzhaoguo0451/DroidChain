.class public final Ldgi;
.super Ljava/lang/Object;
.source "DepthPageTransformer.java"

# interfaces
.implements Lhx;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const v0, 0x3f19999a

    sput v0, Ldgi;->a:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 17
    const/high16 v1, -0x4080

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    .line 19
    cmpg-float v1, p2, v2

    if-gtz v1, :cond_0

    .line 23
    invoke-static {p1, v3}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 24
    invoke-static {p1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 25
    invoke-static {p1, v3}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 26
    invoke-static {p1, v3}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 43
    :goto_0
    return-void

    .line 27
    :cond_0
    cmpg-float v1, p2, v3

    if-gtz v1, :cond_1

    .line 29
    sub-float v1, v3, p2

    invoke-static {p1, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 32
    int-to-float v0, v0

    neg-float v1, p2

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 34
    sget v0, Ldgi;->a:F

    sget v1, Ldgi;->a:F

    sub-float v1, v3, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 36
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 37
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method
