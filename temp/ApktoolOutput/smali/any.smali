.class final Lany;
.super Ljava/lang/Object;
.source "AnimatedDrawableCachingBackendImpl.java"

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
.field private synthetic a:Lanw;


# direct methods
.method constructor <init>(Lanw;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lany;->a:Lanw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lany;->a:Lanw;

    invoke-virtual {v0, p1}, Lanw;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
