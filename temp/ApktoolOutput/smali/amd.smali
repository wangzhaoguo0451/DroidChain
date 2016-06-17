.class public abstract Lamd;
.super Landroid/graphics/drawable/Drawable;
.source "ForwardingDrawable.java"

# interfaces
.implements Lamn;
.implements Lamo;
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private final b:Lamb;

.field private c:Lamo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    new-instance v0, Lamb;

    invoke-direct {v0}, Lamb;-><init>()V

    iput-object v0, p0, Lamd;->b:Lamb;

    .line 49
    iput-object p1, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0, p0}, Ld;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lamo;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Ld;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lamo;)V

    invoke-static {p1, v1, v1}, Ld;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lamo;)V

    iget-object v1, p0, Lamd;->b:Lamb;

    invoke-static {p1, v1}, Ld;->a(Landroid/graphics/drawable/Drawable;Lamb;)V

    invoke-static {p1, v0}, Ld;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, p0, p0}, Ld;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lamo;)V

    iput-object p1, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p0}, Lamd;->invalidateSelf()V

    .line 63
    return-object v0
.end method

.method public final a(Lamo;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lamd;->c:Lamo;

    .line 194
    return-void
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lamd;->b(Landroid/graphics/Matrix;)V

    .line 211
    return-void
.end method

.method public final a(Landroid/graphics/RectF;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lamd;->c:Lamo;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lamd;->c:Lamo;

    invoke-interface {v0, p1}, Lamo;->a(Landroid/graphics/RectF;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lamd;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected final b(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lamd;->c:Lamo;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lamd;->c:Lamo;

    invoke-interface {v0, p1}, Lamo;->a(Landroid/graphics/Matrix;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    return-void
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0}, Lamd;->invalidateSelf()V

    .line 176
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 161
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 121
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0, p2, p3, p4}, Lamd;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 181
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lamd;->b:Lamb;

    iput p1, v0, Lamb;->a:I

    .line 91
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 92
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lamd;->b:Lamb;

    iput-object p1, v0, Lamb;->b:Landroid/graphics/ColorFilter;

    .line 97
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 98
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lamd;->b:Lamb;

    iput-boolean p1, v0, Lamb;->c:Z

    .line 103
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 104
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lamd;->b:Lamb;

    iput-boolean p1, v0, Lamb;->d:Z

    .line 109
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 110
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 115
    iget-object v0, p0, Lamd;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-virtual {p0, p2}, Lamd;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method
