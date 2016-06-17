.class public final Lamr;
.super Lamd;
.source "GenericDraweeHierarchy.java"

# interfaces
.implements Lamp;


# instance fields
.field private a:Lamq;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method


# virtual methods
.method public final a(Lamq;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lamr;->a:Lamq;

    .line 114
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lamr;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lamr;->a:Lamq;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lamr;->a:Lamq;

    invoke-interface {v0}, Lamq;->a()V

    .line 133
    :cond_1
    invoke-super {p0, p1}, Lamd;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, -0x1

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, -0x1

    return v0
.end method

.method public final setVisible(ZZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lamr;->a:Lamq;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lamr;->a:Lamq;

    invoke-interface {v0, p1}, Lamq;->a(Z)V

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Lamd;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
