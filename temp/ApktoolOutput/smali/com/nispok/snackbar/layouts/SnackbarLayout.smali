.class public Lcom/nispok/snackbar/layouts/SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "SnackbarLayout.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const v0, 0x7fffffff

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    iput v0, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->a:I

    .line 9
    iput v0, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->b:I

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nispok/snackbar/layouts/SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const v0, 0x7fffffff

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    iput v0, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->a:I

    .line 9
    iput v0, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->b:I

    .line 21
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 27
    iget v1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->a:I

    if-ge v1, v0, :cond_0

    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 29
    iget v1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->a:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 32
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 33
    iget v1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->b:I

    if-ge v1, v0, :cond_1

    .line 34
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 35
    iget v1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->b:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 37
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 38
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->b:I

    .line 47
    invoke-virtual {p0}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->requestLayout()V

    .line 48
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/nispok/snackbar/layouts/SnackbarLayout;->a:I

    .line 42
    invoke-virtual {p0}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->requestLayout()V

    .line 43
    return-void
.end method
