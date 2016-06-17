.class public Lcom/facebook/drawee/view/DraweeView;
.super Landroid/widget/ImageView;
.source "DraweeView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lamu;",
        ">",
        "Landroid/widget/ImageView;"
    }
.end annotation


# instance fields
.field private a:Lamy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamy",
            "<TDH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->a()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->a()V

    .line 58
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lamy;

    invoke-direct {v0}, Lamy;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    .line 62
    return-void
.end method


# virtual methods
.method public getController()Lamt;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    iget-object v0, v0, Lamy;->b:Lamt;

    return-object v0
.end method

.method public getHierarchy()Lamu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    iget-object v0, v0, Lamy;->a:Lamu;

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamu;

    return-object v0
.end method

.method public getTopLevelDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    invoke-virtual {v0}, Lamy;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 104
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    invoke-virtual {v0}, Lamy;->b()V

    .line 105
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    invoke-virtual {v0}, Lamy;->c()V

    .line 111
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishTemporaryDetach()V

    .line 122
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    invoke-virtual {v0}, Lamy;->b()V

    .line 123
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/ImageView;->onStartTemporaryDetach()V

    .line 116
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    invoke-virtual {v0}, Lamy;->c()V

    .line 117
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    iget-object v1, v0, Lamy;->b:Lamt;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lamy;->b:Lamt;

    invoke-interface {v0, p1}, Lamt;->a(Landroid/view/MotionEvent;)Z

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setController(Lamt;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    invoke-virtual {v0, p1}, Lamy;->a(Lamt;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    invoke-virtual {v0}, Lamy;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void
.end method

.method public setHierarchy(Lamu;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    iget-object v0, v1, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lamy;->a(Lamq;)V

    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamu;

    iput-object v0, v1, Lamy;->a:Lamu;

    iget-object v0, v1, Lamy;->a:Lamu;

    invoke-interface {v0}, Lamu;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    invoke-virtual {v1, v0}, Lamy;->a(Z)V

    invoke-virtual {v1, v1}, Lamy;->a(Lamq;)V

    iget-object v0, v1, Lamy;->b:Lamt;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lamy;->b:Lamt;

    invoke-interface {v0, p1}, Lamt;->a(Lamu;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    invoke-virtual {v0}, Lamy;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamy;->a(Lamt;)V

    .line 152
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamy;->a(Lamt;)V

    .line 141
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamy;->a(Lamt;)V

    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamy;->a(Lamt;)V

    .line 174
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    invoke-static {p0}, Ld;->c(Ljava/lang/Object;)Lakb;

    move-result-object v0

    const-string v1, "holder"

    iget-object v2, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lamy;

    invoke-virtual {v2}, Lamy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Ljava/lang/Object;)Lakb;

    move-result-object v0

    invoke-virtual {v0}, Lakb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
