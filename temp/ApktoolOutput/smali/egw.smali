.class final Legw;
.super Ljava/lang/Object;
.source "WallpaperView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/drawable/Drawable;

.field private synthetic b:Legv;


# direct methods
.method constructor <init>(Legv;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Legw;->b:Legv;

    iput-object p2, p0, Legw;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Legw;->b:Legv;

    iget-object v0, v0, Legv;->a:Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;

    iget-object v1, p0, Legw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/launcher/view/WallpaperView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method
