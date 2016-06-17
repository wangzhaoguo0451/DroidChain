.class Lcm;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {p1, p2}, Lg;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 71
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p1, p2}, Lg;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 76
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {p1, p2}, Lg;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 81
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 85
    instance-of v0, p1, Lcs;

    if-nez v0, :cond_0

    new-instance v0, Lcs;

    invoke-direct {v0, p1}, Lcs;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method
