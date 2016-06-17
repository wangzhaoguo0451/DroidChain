.class final Laoo;
.super Ljava/lang/Object;
.source "DalvikBitmapFactory.java"

# interfaces
.implements Lakn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lakn",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Laon;


# direct methods
.method constructor <init>(Laon;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Laoo;->a:Laon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    check-cast p1, Landroid/graphics/Bitmap;

    :try_start_0
    iget-object v0, p0, Laoo;->a:Laon;

    iget-object v0, v0, Laon;->a:Larc;

    invoke-virtual {v0, p1}, Larc;->b(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method
