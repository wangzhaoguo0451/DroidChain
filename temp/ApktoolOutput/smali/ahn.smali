.class final Lahn;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/volley/VolleyError;

.field private synthetic b:Lahk;


# direct methods
.method constructor <init>(Lahk;Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lahn;->b:Lahk;

    iput-object p2, p0, Lahn;->a:Lcom/android/volley/VolleyError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 406
    iget-object v0, p0, Lahn;->b:Lahk;

    iget-object v0, v0, Lahk;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laho;

    .line 407
    iget-object v1, v0, Laho;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahq;

    .line 411
    iget-object v4, v1, Lahq;->b:Lahr;

    if-eqz v4, :cond_1

    .line 412
    iget-object v4, p0, Lahn;->a:Lcom/android/volley/VolleyError;

    if-nez v4, :cond_2

    .line 415
    iget-object v4, v0, Laho;->a:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lahq;->a:Landroid/graphics/Bitmap;

    .line 416
    iget-object v4, v1, Lahq;->b:Lahr;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lahr;->a(Lahq;Z)V

    goto :goto_0

    .line 418
    :cond_2
    iget-object v1, v1, Lahq;->b:Lahr;

    iget-object v4, p0, Lahn;->a:Lcom/android/volley/VolleyError;

    invoke-interface {v1, v4}, Lahr;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 422
    :cond_3
    iget-object v0, p0, Lahn;->b:Lahk;

    iget-object v0, v0, Lahk;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 423
    iget-object v0, p0, Lahn;->b:Lahk;

    const/4 v1, 0x0

    iput-object v1, v0, Lahk;->d:Ljava/lang/Runnable;

    .line 424
    return-void
.end method
