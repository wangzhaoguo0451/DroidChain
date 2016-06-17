.class public abstract Lalq;
.super Ljava/lang/Object;
.source "AbstractDraweeController.java"

# interfaces
.implements Lalp;
.implements Lamt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lalp;",
        "Lamt;"
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
.field private final b:Lcom/facebook/drawee/components/DraweeEventTracker;

.field private final c:Laln;

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Lalx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalx",
            "<TINFO;>;"
        }
    .end annotation
.end field

.field private f:Lamv;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Object;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lalb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalb",
            "<TT;>;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private n:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lalq;

    sput-object v0, Lalq;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Laln;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    invoke-direct {v0}, Lcom/facebook/drawee/components/DraweeEventTracker;-><init>()V

    iput-object v0, p0, Lalq;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 100
    iput-object p1, p0, Lalq;->c:Laln;

    .line 101
    iput-object p2, p0, Lalq;->d:Ljava/util/concurrent/Executor;

    .line 102
    invoke-virtual {p0, p3, p4}, Lalq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method static synthetic a(Lalq;Ljava/lang/String;Lalb;FZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lalq;->a(Ljava/lang/String;Lalb;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ignore_old_datasource @ onProgress"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lalq;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lalb;->f()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p4, :cond_0

    iget-object v0, p0, Lalq;->f:Lamv;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lamv;->a(FZ)V

    goto :goto_0
.end method

.method static synthetic a(Lalq;Ljava/lang/String;Lalb;Ljava/lang/Object;FZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lalq;->a(Ljava/lang/String;Lalb;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ignore_old_datasource @ onNewResult"

    invoke-direct {p0, v0, p3}, Lalq;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lalq;->a(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lalb;->f()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lalq;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p5, :cond_3

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_1
    invoke-virtual {v2, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    :try_start_0
    invoke-virtual {p0, p3}, Lalq;->d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v3, p0, Lalq;->m:Ljava/lang/Object;

    iget-object v4, p0, Lalq;->n:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lalq;->m:Ljava/lang/Object;

    iput-object v2, p0, Lalq;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_5

    :try_start_1
    const-string v0, "set_final_result @ onNewResult"

    invoke-direct {p0, v0, p3}, Lalq;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lalq;->l:Lalb;

    iget-object v0, p0, Lalq;->f:Lamv;

    const/high16 v5, 0x3f80

    invoke-virtual {v0, v2, v5, p6}, Lamv;->a(Landroid/graphics/drawable/Drawable;FZ)V

    invoke-direct {p0}, Lalq;->g()Lalx;

    move-result-object v5

    invoke-virtual {p0, p3}, Lalq;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v0, p0, Lalq;->n:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lalq;->n:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    :goto_2
    invoke-interface {v5, p1, v6, v0}, Lalx;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v4, :cond_2

    if-eq v4, v2, :cond_2

    invoke-virtual {p0, v4}, Lalq;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v3, :cond_0

    if-eq v3, p3, :cond_0

    const-string v0, "release_previous_result @ onNewResult"

    invoke-direct {p0, v0, v3}, Lalq;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lalq;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "drawable_failed @ onNewResult"

    invoke-direct {p0, v1, p3}, Lalq;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lalq;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v0, p5}, Lalq;->a(Ljava/lang/String;Lalb;Ljava/lang/Throwable;Z)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    :try_start_2
    const-string v0, "set_intermediate_result @ onNewResult"

    invoke-direct {p0, v0, p3}, Lalq;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lalq;->f:Lamv;

    invoke-virtual {v0, v2, p4, p6}, Lamv;->a(Landroid/graphics/drawable/Drawable;FZ)V

    invoke-direct {p0}, Lalq;->g()Lalx;

    move-result-object v0

    invoke-virtual {p0, p3}, Lalq;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lalx;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    invoke-virtual {p0, v4}, Lalq;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    if-eqz v3, :cond_7

    if-eq v3, p3, :cond_7

    const-string v1, "release_previous_result @ onNewResult"

    invoke-direct {p0, v1, v3}, Lalq;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lalq;->a(Ljava/lang/Object;)V

    :cond_7
    throw v0
.end method

.method static synthetic a(Lalq;Ljava/lang/String;Lalb;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lalq;->a(Ljava/lang/String;Lalb;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lalb;Ljava/lang/Throwable;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lalb",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 493
    invoke-direct {p0, p1, p2}, Lalq;->a(Ljava/lang/String;Lalb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    const-string v0, "ignore_old_datasource @ onFailure"

    invoke-direct {p0, v0, p3}, Lalq;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    invoke-virtual {p2}, Lalb;->f()Z

    .line 517
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v1, p0, Lalq;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p4, :cond_1

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 501
    if-eqz p4, :cond_3

    .line 502
    const-string v0, "final_failed @ onFailure"

    invoke-direct {p0, v0, p3}, Lalq;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lalq;->l:Lalb;

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lalq;->k:Z

    .line 505
    iget-object v0, p0, Lalq;->f:Lamv;

    iget-object v1, v0, Lamv;->a:Lamc;

    invoke-virtual {v1}, Lamc;->a()V

    invoke-virtual {v0}, Lamv;->d()V

    iget v1, v0, Lamv;->c:I

    if-ltz v1, :cond_2

    iget v1, v0, Lamv;->c:I

    invoke-virtual {v0, v1}, Lamv;->a(I)V

    :goto_2
    iget-object v0, v0, Lamv;->a:Lamc;

    invoke-virtual {v0}, Lamc;->b()V

    .line 510
    invoke-direct {p0}, Lalq;->g()Lalx;

    move-result-object v0

    iget-object v1, p0, Lalq;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lalx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 498
    :cond_1
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_1

    .line 505
    :cond_2
    iget v1, v0, Lamv;->b:I

    invoke-virtual {v0, v1}, Lamv;->a(I)V

    goto :goto_2

    .line 513
    :cond_3
    const-string v0, "intermediate_failed @ onFailure"

    invoke-direct {p0, v0, p3}, Lalq;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    invoke-direct {p0}, Lalq;->g()Lalx;

    move-result-object v0

    iget-object v1, p0, Lalq;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lalx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 555
    const/4 v0, 0x2

    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    sget-object v0, Lalq;->a:Ljava/lang/Class;

    const-string v1, "controller %x %s: %s: failure: %s"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lalq;->g:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 564
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lalb;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lalb",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lalq;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalq;->l:Lalb;

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lalq;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 542
    invoke-static {v5}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    sget-object v1, Lalq;->a:Ljava/lang/Class;

    const-string v2, "controller %x %s: %s: image: %s %x"

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lalq;->g:Ljava/lang/String;

    aput-object v4, v3, v0

    aput-object p1, v3, v5

    const/4 v4, 0x3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x4

    invoke-virtual {p0, p2}, Lalq;->b(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    :cond_0
    return-void

    .line 543
    :cond_1
    const-string v0, "<null>"

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 169
    iget-boolean v0, p0, Lalq;->j:Z

    .line 170
    iput-boolean v1, p0, Lalq;->j:Z

    .line 171
    iput-boolean v1, p0, Lalq;->k:Z

    .line 172
    iget-object v1, p0, Lalq;->l:Lalb;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lalq;->l:Lalb;

    invoke-virtual {v1}, Lalb;->f()Z

    .line 174
    iput-object v3, p0, Lalq;->l:Lalb;

    .line 176
    :cond_0
    iget-object v1, p0, Lalq;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lalq;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lalq;->a(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_1
    iput-object v3, p0, Lalq;->n:Landroid/graphics/drawable/Drawable;

    .line 180
    iget-object v1, p0, Lalq;->m:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 181
    const-string v1, "release"

    iget-object v2, p0, Lalq;->m:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lalq;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    iget-object v1, p0, Lalq;->m:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lalq;->a(Ljava/lang/Object;)V

    .line 183
    iput-object v3, p0, Lalq;->m:Ljava/lang/Object;

    .line 185
    :cond_2
    if-eqz v0, :cond_3

    .line 186
    invoke-direct {p0}, Lalq;->g()Lalx;

    move-result-object v0

    iget-object v1, p0, Lalq;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lalx;->a(Ljava/lang/String;)V

    .line 188
    :cond_3
    return-void
.end method

.method private g()Lalx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalx",
            "<TINFO;>;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lalq;->e:Lalx;

    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Lalw;->a()Lalx;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lalq;->e:Lalx;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lalb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalb",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final a(Lalx;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalx",
            "<-TINFO;>;)V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lalq;->e:Lalx;

    instance-of v0, v0, Lals;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lalq;->e:Lalx;

    check-cast v0, Lals;

    invoke-virtual {v0, p1}, Lals;->a(Lalx;)V

    .line 239
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lalq;->e:Lalx;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lalq;->e:Lalx;

    new-instance v1, Lals;

    invoke-direct {v1}, Lals;-><init>()V

    invoke-virtual {v1, v0}, Lals;->a(Lalx;)V

    invoke-virtual {v1, p1}, Lals;->a(Lalx;)V

    iput-object v1, p0, Lalq;->e:Lalx;

    goto :goto_0

    .line 238
    :cond_1
    iput-object p1, p0, Lalq;->e:Lalx;

    goto :goto_0
.end method

.method public final a(Lamu;)V
    .locals 4
    .parameter

    .prologue
    .line 276
    const/4 v0, 0x2

    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Lalq;->a:Ljava/lang/Class;

    const-string v1, "controller %x %s: setHierarchy: %s"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lalq;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    :cond_0
    iget-object v1, p0, Lalq;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 287
    iget-boolean v0, p0, Lalq;->j:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lalq;->c:Laln;

    invoke-virtual {v0, p0}, Laln;->a(Lalp;)V

    .line 289
    invoke-virtual {p0}, Lalq;->b()V

    .line 292
    :cond_1
    iget-object v0, p0, Lalq;->f:Lamv;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lalq;->f:Lamv;

    invoke-virtual {v0}, Lamv;->c()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lalq;->f:Lamv;

    .line 297
    :cond_2
    if-eqz p1, :cond_3

    .line 298
    instance-of v0, p1, Lamv;

    invoke-static {v0}, Ld;->a(Z)V

    .line 299
    check-cast p1, Lamv;

    iput-object p1, p0, Lalq;->f:Lamv;

    .line 300
    iget-object v0, p0, Lalq;->f:Lamv;

    invoke-virtual {v0}, Lamv;->c()V

    .line 302
    :cond_3
    return-void

    .line 284
    :cond_4
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0
.end method

.method public abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lalq;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_INIT_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 119
    iget-object v0, p0, Lalq;->c:Laln;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lalq;->c:Laln;

    invoke-virtual {v0, p0}, Laln;->a(Lalp;)V

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalq;->i:Z

    .line 124
    invoke-direct {p0}, Lalq;->f()V

    .line 126
    iget-object v0, p0, Lalq;->e:Lalx;

    instance-of v0, v0, Lals;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lalq;->e:Lalx;

    check-cast v0, Lals;

    invoke-virtual {v0}, Lals;->a()V

    .line 139
    :goto_0
    iget-object v0, p0, Lalq;->f:Lamv;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lalq;->f:Lamv;

    invoke-virtual {v0}, Lamv;->b()V

    .line 141
    iget-object v0, p0, Lalq;->f:Lamv;

    invoke-virtual {v0}, Lamv;->c()V

    .line 142
    iput-object v2, p0, Lalq;->f:Lamv;

    .line 144
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    sget-object v0, Lalq;->a:Ljava/lang/Class;

    const-string v1, "controller %x %s -> %s: initialize"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lalq;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    :cond_2
    iput-object p1, p0, Lalq;->g:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lalq;->h:Ljava/lang/Object;

    .line 151
    return-void

    .line 136
    :cond_3
    iput-object v2, p0, Lalq;->e:Lalx;

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 348
    const/4 v0, 0x2

    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lalq;->a:Ljava/lang/Class;

    const-string v1, "controller %x %s: onTouchEvent %s"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lalq;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 582
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lalq;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_RELEASE_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 156
    iget-object v0, p0, Lalq;->f:Lamv;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lalq;->f:Lamv;

    invoke-virtual {v0}, Lamv;->b()V

    .line 165
    :cond_0
    invoke-direct {p0}, Lalq;->f()V

    .line 166
    return-void
.end method

.method public final c()Lamu;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lalq;->f:Lamv;

    return-object v0
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TINFO;"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method public final d()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 319
    invoke-static {v6}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    sget-object v1, Lalq;->a:Ljava/lang/Class;

    const-string v2, "controller %x %s: onAttach: %s"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lalq;->g:Ljava/lang/String;

    iget-boolean v0, p0, Lalq;->j:Z

    if-eqz v0, :cond_3

    const-string v0, "request already submitted"

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lalq;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 328
    iget-object v0, p0, Lalq;->f:Lamv;

    invoke-static {v0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lalq;->c:Laln;

    invoke-virtual {v0, p0}, Laln;->a(Lalp;)V

    .line 330
    iput-boolean v5, p0, Lalq;->i:Z

    .line 331
    iget-boolean v0, p0, Lalq;->j:Z

    if-nez v0, :cond_2

    .line 332
    iget-object v0, p0, Lalq;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_SUBMIT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    invoke-direct {p0}, Lalq;->g()Lalx;

    move-result-object v0

    iget-object v1, p0, Lalq;->g:Ljava/lang/String;

    iget-object v2, p0, Lalq;->h:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lalx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lalq;->f:Lamv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lamv;->a(FZ)V

    iput-boolean v5, p0, Lalq;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lalq;->k:Z

    invoke-virtual {p0}, Lalq;->a()Lalb;

    move-result-object v0

    iput-object v0, p0, Lalq;->l:Lalb;

    invoke-static {v6}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lalq;->a:Ljava/lang/Class;

    const-string v1, "controller %x %s: submitRequest: dataSource: %x"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lalq;->g:Ljava/lang/String;

    iget-object v4, p0, Lalq;->l:Lalb;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lalq;->g:Ljava/lang/String;

    iget-object v1, p0, Lalq;->l:Lalb;

    invoke-virtual {v1}, Lalb;->b()Z

    move-result v1

    new-instance v2, Lalr;

    invoke-direct {v2, p0, v0, v1}, Lalr;-><init>(Lalq;Ljava/lang/String;Z)V

    iget-object v0, p0, Lalq;->l:Lalb;

    iget-object v1, p0, Lalq;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Lalb;->a(Lald;Ljava/util/concurrent/Executor;)V

    .line 334
    :cond_2
    return-void

    .line 320
    :cond_3
    const-string v0, "request needs submit"

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 338
    const/4 v0, 0x2

    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lalq;->a:Ljava/lang/Class;

    const-string v1, "controller %x %s: onDetach"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lalq;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    :cond_0
    iget-object v0, p0, Lalq;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalq;->i:Z

    .line 343
    iget-object v0, p0, Lalq;->c:Laln;

    iget-object v1, v0, Laln;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Laln;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Laln;->b:Landroid/os/Handler;

    iget-object v0, v0, Laln;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 591
    invoke-static {p0}, Ld;->c(Ljava/lang/Object;)Lakb;

    move-result-object v0

    const-string v1, "isAttached"

    iget-boolean v2, p0, Lalq;->i:Z

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Z)Lakb;

    move-result-object v0

    const-string v1, "isRequestSubmitted"

    iget-boolean v2, p0, Lalq;->j:Z

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Z)Lakb;

    move-result-object v0

    const-string v1, "hasFetchFailed"

    iget-boolean v2, p0, Lalq;->k:Z

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Z)Lakb;

    move-result-object v0

    const-string v1, "fetchedImage"

    iget-object v2, p0, Lalq;->m:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lalq;->b(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Ljava/lang/Object;)Lakb;

    move-result-object v0

    const-string v1, "events"

    iget-object v2, p0, Lalq;->b:Lcom/facebook/drawee/components/DraweeEventTracker;

    invoke-virtual {v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Ljava/lang/Object;)Lakb;

    move-result-object v0

    invoke-virtual {v0}, Lakb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
