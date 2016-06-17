.class public final Lecj;
.super Ljava/lang/Object;
.source "FloatingRocketView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Lecj;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 202
    mul-float v0, p1, p1

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    add-float/2addr v0, v2

    return v0
.end method
