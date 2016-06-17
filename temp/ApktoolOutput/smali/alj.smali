.class public Lalj;
.super Lalq;
.source "PipelineDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lalq",
        "<",
        "Lakk",
        "<",
        "Laqv;",
        ">;",
        "Laqy;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Lanr;

.field private d:Lakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakd",
            "<",
            "Lalb",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lalj;

    sput-object v0, Lalj;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Laln;Lanr;Ljava/util/concurrent/Executor;Lakd;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Laln;",
            "Lanr;",
            "Ljava/util/concurrent/Executor;",
            "Lakd",
            "<",
            "Lalb",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p2, p4, p6, v0}, Lalq;-><init>(Laln;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lalj;->b:Landroid/content/res/Resources;

    .line 65
    iput-object p3, p0, Lalj;->c:Lanr;

    .line 66
    iput-object p5, p0, Lalj;->d:Lakd;

    .line 67
    return-void
.end method


# virtual methods
.method protected final a()Lalb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalb",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lalj;->a:Ljava/lang/Class;

    const-string v1, "controller %x: getDataSource"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lalj;->d:Lakd;

    invoke-interface {v0}, Lakd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalb;

    return-object v0
.end method

.method public final a(Lakd;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakd",
            "<",
            "Lalb",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-super {p0, p2, v0}, Lalq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iput-object p1, p0, Lalj;->d:Lakd;

    .line 83
    return-void
.end method

.method protected final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    instance-of v0, p1, Lali;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lali;

    invoke-interface {p1}, Lali;->a()V

    .line 145
    :cond_0
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    check-cast p1, Lakk;

    invoke-static {p1}, Lakk;->c(Lakk;)V

    return-void
.end method

.method protected final synthetic b(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    check-cast p1, Lakk;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lakk;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 43
    check-cast p1, Lakk;

    invoke-static {p1}, Lakk;->a(Lakk;)Z

    move-result v0

    invoke-static {v0}, Ld;->b(Z)V

    invoke-virtual {p1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqy;

    return-object v0
.end method

.method protected final synthetic d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 43
    check-cast p1, Lakk;

    invoke-static {p1}, Lakk;->a(Lakk;)Z

    move-result v0

    invoke-static {v0}, Ld;->b(Z)V

    invoke-virtual {p1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqv;

    instance-of v1, v0, Laqw;

    if-eqz v1, :cond_2

    check-cast v0, Laqw;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lalj;->b:Landroid/content/res/Resources;

    iget-object v3, v0, Laqw;->a:Landroid/graphics/Bitmap;

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v1, v0, Laqw;->b:I

    if-eqz v1, :cond_0

    iget v1, v0, Laqw;->b:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lamf;

    iget v0, v0, Laqw;->b:I

    invoke-direct {v1, v2, v0}, Lamf;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    instance-of v1, v0, Laqt;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lalj;->c:Lanr;

    check-cast v0, Laqt;

    invoke-virtual {v0}, Laqt;->f()Lano;

    move-result-object v0

    sget-object v2, Lank;->a:Lank;

    iget-object v3, v0, Lano;->a:Lanm;

    new-instance v4, Landroid/graphics/Rect;

    invoke-interface {v3}, Lanm;->a()I

    move-result v5

    invoke-interface {v3}, Lanm;->b()I

    move-result v3

    invoke-direct {v4, v6, v6, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v1, Lanr;->a:Lanv;

    invoke-interface {v3, v0, v4}, Lanv;->a(Lano;Landroid/graphics/Rect;)Lani;

    move-result-object v0

    iget-object v3, v1, Lanr;->e:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    iget-object v3, v1, Lanr;->b:Laob;

    invoke-interface {v3, v0, v2}, Laob;->a(Lani;Lank;)Lanw;

    move-result-object v2

    invoke-static {}, Laoc;->a()Laoc;

    move-result-object v3

    new-instance v0, Land;

    iget-object v4, v1, Lanr;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, v1, Lanr;->d:Lakt;

    invoke-direct {v0, v4, v2, v3, v1}, Land;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lanj;Lmv;Lakt;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized image class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-static {p0}, Ld;->c(Ljava/lang/Object;)Lakb;

    move-result-object v0

    const-string v1, "super"

    invoke-super {p0}, Lalq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Ljava/lang/Object;)Lakb;

    move-result-object v0

    const-string v1, "dataSourceSupplier"

    iget-object v2, p0, Lalj;->d:Lakd;

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Ljava/lang/Object;)Lakb;

    move-result-object v0

    invoke-virtual {v0}, Lakb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
