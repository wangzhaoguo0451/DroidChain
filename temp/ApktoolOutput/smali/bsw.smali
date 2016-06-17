.class final Lbsw;
.super Lbst;
.source "DisplayCompatImplPreHoneycombMR2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lbst;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 11
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 12
    return-void
.end method

.method final b(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 17
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 18
    return-void
.end method
