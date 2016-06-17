.class final Leed;
.super Ljava/lang/Object;
.source "WallpaperView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/drawable/Drawable;

.field private synthetic b:Leec;


# direct methods
.method constructor <init>(Leec;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Leed;->b:Leec;

    iput-object p2, p0, Leed;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Leed;->b:Leec;

    iget-object v0, v0, Leec;->a:Lcom/wandoujia/launcher/view/WallpaperView;

    iget-object v1, p0, Leed;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/view/WallpaperView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method
