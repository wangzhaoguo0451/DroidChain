.class final Ldax;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lahr;


# instance fields
.field private synthetic a:Ldaw;


# direct methods
.method constructor <init>(Ldaw;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Ldax;->a:Ldaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lahq;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 767
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 768
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 772
    :goto_1
    return-void

    .line 767
    :cond_0
    iget-object v0, p1, Lahq;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 771
    :cond_1
    iget-object v1, p0, Ldax;->a:Ldaw;

    iget-object v1, v1, Ldaw;->e:Ldat;

    invoke-virtual {v1, v0}, Ldat;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter

    .prologue
    .line 777
    iget-object v0, p0, Ldax;->a:Ldaw;

    iget-object v0, v0, Ldaw;->e:Ldat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldat;->a(Landroid/graphics/Bitmap;)V

    .line 778
    return-void
.end method
