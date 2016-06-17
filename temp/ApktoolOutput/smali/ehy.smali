.class final Lehy;
.super Landroid/text/style/DynamicDrawableSpan;
.source "ViewUtils.java"


# instance fields
.field private synthetic a:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lehy;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lehy;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
