.class public final Lfcf;
.super Landroid/text/style/DynamicDrawableSpan;
.source "CardControllerUtil.java"


# instance fields
.field private synthetic a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lfcf;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lfcf;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
