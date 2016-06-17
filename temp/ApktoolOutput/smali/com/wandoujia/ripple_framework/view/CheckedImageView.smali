.class public Lcom/wandoujia/ripple_framework/view/CheckedImageView;
.super Landroid/widget/ImageView;
.source "CheckedImageView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final b:[I


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/wandoujia/ripple_framework/view/CheckedImageView;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/CheckedImageView;->a:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter

    .prologue
    .line 26
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/CheckedImageView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    sget-object v1, Lcom/wandoujia/ripple_framework/view/CheckedImageView;->b:[I

    invoke-static {v0, v1}, Lcom/wandoujia/ripple_framework/view/CheckedImageView;->mergeDrawableStates([I[I)[I

    .line 29
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/CheckedImageView;->a:Z

    if-ne v0, p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/view/CheckedImageView;->a:Z

    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/view/CheckedImageView;->refreshDrawableState()V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/view/CheckedImageView;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/CheckedImageView;->setChecked(Z)V

    .line 35
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
