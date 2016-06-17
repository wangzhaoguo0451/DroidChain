.class final Lahl;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagu",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lahk;


# direct methods
.method constructor <init>(Lahk;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lahl;->b:Lahk;

    iput-object p2, p0, Lahl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 206
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lahl;->b:Lahk;

    iget-object v2, p0, Lahl;->a:Ljava/lang/String;

    iget-object v0, v1, Lahk;->a:Lahp;

    invoke-interface {v0, v2, p1}, Lahp;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Lahk;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laho;

    if-eqz v0, :cond_0

    iput-object p1, v0, Laho;->a:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lahk;->a(Ljava/lang/String;Laho;Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method
