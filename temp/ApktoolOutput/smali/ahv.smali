.class public final Lahv;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Lahr;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/android/volley/toolbox/NetworkImageView;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/NetworkImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lahv;->b:Lcom/android/volley/toolbox/NetworkImageView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lahv;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lahq;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 151
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lahv;->a:Z

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lahv;->b:Lcom/android/volley/toolbox/NetworkImageView;

    new-instance v1, Lahw;

    invoke-direct {v1, p0, p1}, Lahw;-><init>(Lahv;Lahq;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p1, Lahq;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lahv;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p1, Lahq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lahv;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/android/volley/toolbox/NetworkImageView;->b(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lahv;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lahv;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/android/volley/toolbox/NetworkImageView;->b(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lahv;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/android/volley/toolbox/NetworkImageView;->a(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lahv;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lahv;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/android/volley/toolbox/NetworkImageView;->a(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 143
    :cond_0
    return-void
.end method
