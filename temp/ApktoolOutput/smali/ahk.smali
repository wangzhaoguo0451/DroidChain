.class public final Lahk;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# instance fields
.field final a:Lahp;

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Laho;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Laho;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Runnable;

.field private final e:Lagr;

.field private f:I

.field private final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lagr;Lahp;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x64

    iput v0, p0, Lahk;->f:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lahk;->b:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lahk;->c:Ljava/util/HashMap;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lahk;->g:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lahk;->e:Lagr;

    .line 87
    iput-object p2, p0, Lahk;->a:Lahp;

    .line 88
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lahr;II)Lahq;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImageLoader must be invoked from the main thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "#W"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#H"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    iget-object v1, p0, Lahk;->a:Lahp;

    invoke-interface {v1, v5}, Lahp;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 181
    if-eqz v3, :cond_1

    .line 183
    new-instance v1, Lahq;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lahq;-><init>(Lahk;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lahr;)V

    .line 184
    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Lahr;->a(Lahq;Z)V

    .line 222
    :goto_0
    return-object v1

    .line 189
    :cond_1
    new-instance v1, Lahq;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lahq;-><init>(Lahk;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lahr;)V

    .line 193
    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Lahr;->a(Lahq;Z)V

    .line 196
    iget-object v2, p0, Lahk;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laho;

    .line 197
    if-eqz v2, :cond_2

    .line 199
    iget-object v2, v2, Laho;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_2
    new-instance v6, Lahs;

    new-instance v8, Lahl;

    invoke-direct {v8, p0, v5}, Lahl;-><init>(Lahk;Ljava/lang/String;)V

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v12, Lahm;

    invoke-direct {v12, p0, v5}, Lahm;-><init>(Lahk;Ljava/lang/String;)V

    move-object v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v6 .. v12}, Lahs;-><init>(Ljava/lang/String;Lagu;IILandroid/graphics/Bitmap$Config;Lagt;)V

    .line 219
    iget-object v2, p0, Lahk;->e:Lagr;

    invoke-virtual {v2, v6}, Lagr;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 220
    iget-object v2, p0, Lahk;->b:Ljava/util/HashMap;

    new-instance v3, Laho;

    invoke-direct {v3, v6, v1}, Laho;-><init>(Lcom/android/volley/Request;Lahq;)V

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Laho;Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lahk;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lahk;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lahn;

    invoke-direct {v0, p0, p3}, Lahn;-><init>(Lahk;Lcom/android/volley/VolleyError;)V

    iput-object v0, p0, Lahk;->d:Ljava/lang/Runnable;

    .line 428
    iget-object v0, p0, Lahk;->g:Landroid/os/Handler;

    iget-object v1, p0, Lahk;->d:Ljava/lang/Runnable;

    iget v2, p0, Lahk;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    :cond_0
    return-void
.end method
