.class final Lfo;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"

# interfaces
.implements Lfm;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    return v0
.end method
