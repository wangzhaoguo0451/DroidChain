.class public Lcu;
.super Lct;
.source "DrawableWrapperKitKat.java"


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lct;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 25
    return-void
.end method


# virtual methods
.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcu;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcu;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 30
    return-void
.end method
