.class Lcp;
.super Lco;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lco;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 131
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    instance-of v0, p1, Lcv;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lg;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 136
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    instance-of v0, p1, Lcv;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lg;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    instance-of v0, p1, Lcv;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lg;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 155
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    new-instance v0, Lcv;

    invoke-direct {v0, p1}, Lcv;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method
