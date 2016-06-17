.class public final Ldbp;
.super Ljava/lang/Object;
.source "AsyncImageView.java"

# interfaces
.implements Ldbd;


# instance fields
.field private synthetic a:Z

.field private synthetic b:J

.field private synthetic c:Lcom/wandoujia/image/view/AsyncImageView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/image/view/AsyncImageView;ZJ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Ldbp;->c:Lcom/wandoujia/image/view/AsyncImageView;

    iput-boolean p2, p0, Ldbp;->a:Z

    iput-wide p3, p0, Ldbp;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Ldbp;->c:Lcom/wandoujia/image/view/AsyncImageView;

    iget-boolean v3, p0, Ldbp;->a:Z

    iget-wide v4, p0, Ldbp;->b:J

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/image/view/AsyncImageView;->a(Lcom/wandoujia/image/view/AsyncImageView;Landroid/graphics/Bitmap;ZZJ)V

    .line 362
    return-void
.end method
