.class public final Ldgj;
.super Ldgo;
.source "EclairMotionEvent.java"


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 7
    invoke-direct {p0, p1}, Ldgo;-><init>(Landroid/view/MotionEvent;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Ldgj;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public final b(I)F
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Ldgj;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
