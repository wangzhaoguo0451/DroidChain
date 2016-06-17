.class Lfx;
.super Lfw;
.source "MotionEventCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lfw;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    return v0
.end method
