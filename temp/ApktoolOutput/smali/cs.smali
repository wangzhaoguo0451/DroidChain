.class public Lcs;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapperDonut.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcr;


# static fields
.field private static b:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:I

.field private f:Landroid/graphics/PorterDuff$Mode;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcs;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    sget-object v0, Lcs;->b:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcs;->d:Landroid/graphics/PorterDuff$Mode;

    .line 47
    invoke-virtual {p0, p1}, Lcs;->a(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method private a([I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 208
    iget-object v1, p0, Lcs;->c:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcs;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcs;->c:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcs;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 210
    iget-object v2, p0, Lcs;->d:Landroid/graphics/PorterDuff$Mode;

    .line 211
    iget-boolean v3, p0, Lcs;->g:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcs;->e:I

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcs;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v2, v3, :cond_1

    .line 212
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcs;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 213
    iput v1, p0, Lcs;->e:I

    .line 214
    iput-object v2, p0, Lcs;->f:Landroid/graphics/PorterDuff$Mode;

    .line 215
    iput-boolean v0, p0, Lcs;->g:Z

    .line 219
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 237
    :cond_0
    iput-object p1, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    .line 239
    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcs;->invalidateSelf()V

    .line 244
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 53
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0}, Lcs;->invalidateSelf()V

    .line 169
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcs;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcs;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 156
    if-eq v1, v0, :cond_0

    .line 158
    invoke-virtual {p0, v1}, Lcs;->a(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 58
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p2, p3, p4}, Lcs;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 176
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 83
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 63
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 88
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 73
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 78
    return-void
.end method

.method public setState([I)Z
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 98
    invoke-direct {p0, p1}, Lcs;->a([I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_1
    const/4 v0, 0x0

    .line 99
    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1
    .parameter

    .prologue
    .line 192
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcs;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 193
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcs;->c:Landroid/content/res/ColorStateList;

    .line 198
    invoke-virtual {p0}, Lcs;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcs;->a([I)Z

    .line 199
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcs;->d:Landroid/graphics/PorterDuff$Mode;

    .line 204
    invoke-virtual {p0}, Lcs;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcs;->a([I)Z

    .line 205
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcs;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-virtual {p0, p2}, Lcs;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method
