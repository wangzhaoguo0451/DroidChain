.class final Lahm;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lagt;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lahk;


# direct methods
.method constructor <init>(Lahk;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lahm;->b:Lahk;

    iput-object p2, p0, Lahm;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter

    .prologue
    .line 215
    iget-object v1, p0, Lahm;->b:Lahk;

    iget-object v2, p0, Lahm;->a:Ljava/lang/String;

    iget-object v0, v1, Lahk;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laho;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2, v0, p1}, Lahk;->a(Ljava/lang/String;Laho;Lcom/android/volley/VolleyError;)V

    .line 216
    :cond_0
    return-void
.end method
