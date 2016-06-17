.class public final Ldbu;
.super Ljava/lang/Object;
.source "AsyncImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:J

.field private synthetic c:Lcom/wandoujia/image/view/AsyncImageView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/image/view/AsyncImageView;Landroid/graphics/Bitmap;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Ldbu;->c:Lcom/wandoujia/image/view/AsyncImageView;

    iput-object p2, p0, Ldbu;->a:Landroid/graphics/Bitmap;

    iput-wide p3, p0, Ldbu;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 457
    iget-object v0, p0, Ldbu;->c:Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v1, p0, Ldbu;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-wide v4, p0, Ldbu;->b:J

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/image/view/AsyncImageView;->a(Lcom/wandoujia/image/view/AsyncImageView;Landroid/graphics/Bitmap;ZZJ)V

    .line 458
    return-void
.end method
