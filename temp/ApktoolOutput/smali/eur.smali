.class final Leur;
.super Landroid/widget/FrameLayout;
.source "FakeGridAdapter.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Leur;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0, p1}, Leur;-><init>(Landroid/content/Context;)V

    return-void
.end method
