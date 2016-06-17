.class final Leav;
.super Ljava/lang/Object;
.source "GameLocalItemController.java"

# interfaces
.implements Ldbd;


# instance fields
.field private synthetic a:I

.field private synthetic b:Leau;


# direct methods
.method constructor <init>(Leau;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Leav;->b:Leau;

    iput p2, p0, Leav;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Leav;->a:I

    invoke-static {v0, p1, v1}, Lebw;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    iget-object v1, p0, Leav;->b:Leau;

    iget-object v1, v1, Leau;->a:Leay;

    invoke-interface {v1}, Leay;->a()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/image/view/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    return-void
.end method
