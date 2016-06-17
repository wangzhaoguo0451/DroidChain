.class final Laho;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lahq;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Lahq;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laho;->b:Ljava/util/LinkedList;

    .line 363
    iput-object p1, p0, Laho;->c:Lcom/android/volley/Request;

    .line 364
    iget-object v0, p0, Laho;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method


# virtual methods
.method public final a(Lahq;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 382
    iget-object v1, p0, Laho;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 383
    iget-object v1, p0, Laho;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 384
    iget-object v1, p0, Laho;->c:Lcom/android/volley/Request;

    iput-boolean v0, v1, Lcom/android/volley/Request;->h:Z

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
