.class public final Leec;
.super Landroid/os/AsyncTask;
.source "WallpaperView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/wandoujia/launcher/view/WallpaperView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/view/WallpaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Leec;->a:Lcom/wandoujia/launcher/view/WallpaperView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Leec;->a:Lcom/wandoujia/launcher/view/WallpaperView;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/view/WallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    iget-object v1, p0, Leec;->a:Lcom/wandoujia/launcher/view/WallpaperView;

    invoke-static {v1}, Lcom/wandoujia/launcher/view/WallpaperView;->a(Lcom/wandoujia/launcher/view/WallpaperView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Leed;

    invoke-direct {v2, p0, v0}, Leed;-><init>(Leec;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Leec;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
