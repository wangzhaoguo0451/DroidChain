.class public Lcom/wandoujia/p4/video2/view/NoScrollGridView;
.super Lcom/wandoujia/p4/views/ContentGridView;
.source "NoScrollGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/views/ContentGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    const v0, 0x1fffffff

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 23
    invoke-super {p0, p1, v0}, Lcom/wandoujia/p4/views/ContentGridView;->onMeasure(II)V

    .line 24
    return-void
.end method
