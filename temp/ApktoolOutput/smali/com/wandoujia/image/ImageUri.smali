.class public Lcom/wandoujia/image/ImageUri;
.super Ljava/lang/Object;
.source "ImageUri.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4d972613ae95e2bfL


# instance fields
.field public imageUri:Ljava/lang/String;

.field public imageUriType:Lcom/wandoujia/image/ImageUri$ImageUriType;

.field public imageUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/wandoujia/image/ImageUri$ImageUriType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/wandoujia/image/ImageUri;->imageUri:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/wandoujia/image/ImageUri;->imageUriType:Lcom/wandoujia/image/ImageUri$ImageUriType;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/wandoujia/image/ImageUri;->imageUris:Ljava/util/List;

    .line 129
    sget-object v0, Lcom/wandoujia/image/ImageUri$ImageUriType;->MULTI_ICONS:Lcom/wandoujia/image/ImageUri$ImageUriType;

    iput-object v0, p0, Lcom/wandoujia/image/ImageUri;->imageUriType:Lcom/wandoujia/image/ImageUri$ImageUriType;

    .line 130
    return-void
.end method

.method private setImageView(Landroid/widget/ImageView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/image/ImageUri;->imageUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/image/ImageUri;->imageUriType:Lcom/wandoujia/image/ImageUri$ImageUriType;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    invoke-static {p1, p2}, Lcom/wandoujia/image/ImageUri;->setStaticImageResource(Landroid/widget/ImageView;I)V

    .line 79
    :goto_0
    return-void

    .line 53
    :cond_1
    sget-object v0, Ldbc;->a:[I

    iget-object v1, p0, Lcom/wandoujia/image/ImageUri;->imageUriType:Lcom/wandoujia/image/ImageUri$ImageUriType;

    invoke-virtual {v1}, Lcom/wandoujia/image/ImageUri$ImageUriType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_1
    invoke-static {p1, p2}, Lcom/wandoujia/image/ImageUri;->setStaticImageResource(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 55
    :pswitch_0
    check-cast p1, Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v0, p0, Lcom/wandoujia/image/ImageUri;->imageUri:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 59
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/image/ImageUri;->imageUri:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    if-lez v0, :cond_2

    :goto_2
    invoke-static {p1, v0}, Lcom/wandoujia/image/ImageUri;->setStaticImageResource(Landroid/widget/ImageView;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/wandoujia/base/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, p2

    .line 60
    goto :goto_2

    .line 67
    :pswitch_2
    check-cast p1, Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v0, p0, Lcom/wandoujia/image/ImageUri;->imageUri:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/wandoujia/image/view/AsyncImageView;->d(Ljava/lang/String;I)V

    goto :goto_0

    .line 70
    :pswitch_3
    check-cast p1, Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v0, p0, Lcom/wandoujia/image/ImageUri;->imageUri:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/wandoujia/image/view/AsyncImageView;->c(Ljava/lang/String;I)V

    goto :goto_0

    .line 73
    :pswitch_4
    check-cast p1, Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v0, p0, Lcom/wandoujia/image/ImageUri;->imageUri:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/wandoujia/image/view/AsyncImageView;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static setStaticImageResource(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    instance-of v0, p0, Lcom/wandoujia/image/view/AsyncImageView;

    if-eqz v0, :cond_0

    .line 83
    check-cast p0, Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->setStaticImageResource(I)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/image/ImageUri;->setImageView(Landroid/widget/ImageView;I)V

    .line 24
    return-void
.end method

.method public apply(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, Lcom/wandoujia/image/ImageUri;->imageUriType:Lcom/wandoujia/image/ImageUri$ImageUriType;

    sget-object v2, Lcom/wandoujia/image/ImageUri$ImageUriType;->MULTI_ICONS:Lcom/wandoujia/image/ImageUri$ImageUriType;

    if-eq v1, v2, :cond_1

    .line 28
    const-string v1, "ImageView"

    const-string v2, "wrong type"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/image/ImageUri;->imageUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v0

    .line 32
    :goto_0
    if-ge v2, v3, :cond_0

    .line 33
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v1, p0, Lcom/wandoujia/image/ImageUri;->imageUris:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/wandoujia/image/ImageUri;->imageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUriType()Lcom/wandoujia/image/ImageUri$ImageUriType;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wandoujia/image/ImageUri;->imageUriType:Lcom/wandoujia/image/ImageUri$ImageUriType;

    return-object v0
.end method

.method public load(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method
