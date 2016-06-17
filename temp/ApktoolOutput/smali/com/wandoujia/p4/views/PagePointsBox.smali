.class public Lcom/wandoujia/p4/views/PagePointsBox;
.super Landroid/widget/LinearLayout;
.source "PagePointsBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/views/PagePointsBox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/views/PagePointsBox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 34
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/PagePointsBox;->setGravity(I)V

    .line 35
    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/views/PagePointsBox;->setOrientation(I)V

    .line 36
    if-nez p2, :cond_0

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->PagePointsBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    const v1, 0x7f020430

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 42
    const/4 v1, 0x1

    const v2, 0x7f02042f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method
