.class public abstract Ladj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/squareup/picasso/Target;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 25
    invoke-virtual {p0, v1}, Ladj;->a(Landroid/graphics/drawable/Drawable;)V

    .line 26
    return-void
.end method
