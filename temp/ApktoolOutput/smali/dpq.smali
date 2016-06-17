.class final Ldpq;
.super Lum;
.source "RecyclerListPresenter.java"


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lum;-><init>()V

    .line 70
    iput p1, p0, Ldpq;->a:I

    .line 71
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ldpq;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Luv;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lum;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Luv;)V

    .line 77
    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget v0, p0, Ldpq;->a:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method
