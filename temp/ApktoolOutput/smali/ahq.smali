.class public final Lahq;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field final b:Lahr;

.field public final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private synthetic e:Lahk;


# direct methods
.method public constructor <init>(Lahk;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lahr;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lahq;->e:Lahk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lahq;->a:Landroid/graphics/Bitmap;

    .line 297
    iput-object p3, p0, Lahq;->c:Ljava/lang/String;

    .line 298
    iput-object p4, p0, Lahq;->d:Ljava/lang/String;

    .line 299
    iput-object p5, p0, Lahq;->b:Lahr;

    .line 300
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lahq;->b:Lahr;

    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lahq;->e:Lahk;

    iget-object v0, v0, Lahk;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lahq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laho;

    .line 311
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0, p0}, Laho;->a(Lahq;)Z

    move-result v0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lahq;->e:Lahk;

    iget-object v0, v0, Lahk;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lahq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lahq;->e:Lahk;

    iget-object v0, v0, Lahk;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lahq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laho;

    .line 319
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0, p0}, Laho;->a(Lahq;)Z

    .line 321
    iget-object v0, v0, Laho;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lahq;->e:Lahk;

    iget-object v0, v0, Lahk;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lahq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
