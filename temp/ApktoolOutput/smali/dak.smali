.class final Ldak;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/graphics/Bitmap;

.field private synthetic c:Ldaa;


# direct methods
.method constructor <init>(Ldaa;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Ldak;->c:Ldaa;

    iput-object p2, p0, Ldak;->a:Ljava/lang/String;

    iput-object p3, p0, Ldak;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Ldak;->c:Ldaa;

    iget-object v1, p0, Ldak;->a:Ljava/lang/String;

    iget-object v2, p0, Ldak;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Ldaa;->a(Ldaa;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 589
    return-void
.end method
