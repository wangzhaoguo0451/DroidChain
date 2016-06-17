.class public final Labg;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# instance fields
.field private final a:Lcom/alipay/squareup/picasso/Picasso;

.field private final b:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Labg;->a:Lcom/alipay/squareup/picasso/Picasso;

    .line 42
    iput-object v0, p0, Labg;->b:Landroid/net/Uri;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/alipay/squareup/picasso/Picasso;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Labg;->a:Lcom/alipay/squareup/picasso/Picasso;

    .line 36
    iput-object p2, p0, Labg;->b:Landroid/net/Uri;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/squareup/picasso/Target;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 306
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Labg;->b:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Labg;->a:Lcom/alipay/squareup/picasso/Picasso;

    invoke-virtual {v0, p1, v2}, Lcom/alipay/squareup/picasso/Picasso;->a(Ljava/lang/Object;Landroid/net/Uri;)V

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Labg;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Labm;->a(Landroid/net/Uri;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labg;->a:Lcom/alipay/squareup/picasso/Picasso;

    iget-object v2, p0, Labg;->b:Landroid/net/Uri;

    iget-object v3, v1, Lcom/alipay/squareup/picasso/Picasso;->c:Lcom/alipay/squareup/picasso/Cache;

    invoke-interface {v3, v0}, Lcom/alipay/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, p1, v2}, Lcom/alipay/squareup/picasso/Picasso;->a(Ljava/lang/Object;Landroid/net/Uri;)V

    if-eqz v0, :cond_2

    iget-object v1, v1, Lcom/alipay/squareup/picasso/Picasso;->d:Labh;

    invoke-virtual {v1}, Labh;->a()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Lcom/alipay/squareup/picasso/Target;->onSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    new-instance v0, Labk;

    iget-object v1, p0, Labg;->a:Lcom/alipay/squareup/picasso/Picasso;

    iget-object v2, p0, Labg;->b:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p1}, Labk;-><init>(Lcom/alipay/squareup/picasso/Picasso;Landroid/net/Uri;Lcom/alipay/squareup/picasso/Target;)V

    iget-object v1, p0, Labg;->a:Lcom/alipay/squareup/picasso/Picasso;

    invoke-virtual {v1, v0}, Lcom/alipay/squareup/picasso/Picasso;->a(Lcom/alipay/squareup/picasso/Request;)V

    goto :goto_0
.end method
