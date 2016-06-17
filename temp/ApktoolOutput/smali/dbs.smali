.class public final Ldbs;
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
    .line 405
    iput-object p1, p0, Ldbs;->c:Lcom/wandoujia/image/view/AsyncImageView;

    iput-boolean p2, p0, Ldbs;->a:Z

    iput-wide p3, p0, Ldbs;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Ldbs;->c:Lcom/wandoujia/image/view/AsyncImageView;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-static {v0, v1}, Lcom/wandoujia/image/view/AsyncImageView;->a(Lcom/wandoujia/image/view/AsyncImageView;Landroid/os/AsyncTask$Status;)V

    .line 410
    iget-object v0, p0, Ldbs;->c:Lcom/wandoujia/image/view/AsyncImageView;

    iget-boolean v3, p0, Ldbs;->a:Z

    iget-wide v4, p0, Ldbs;->b:J

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/image/view/AsyncImageView;->a(Lcom/wandoujia/image/view/AsyncImageView;Landroid/graphics/Bitmap;ZZJ)V

    .line 411
    return-void
.end method
