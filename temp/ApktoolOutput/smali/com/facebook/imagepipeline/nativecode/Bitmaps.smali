.class public Lcom/facebook/imagepipeline/nativecode/Bitmaps;
.super Ljava/lang/Object;
.source "Bitmaps.java"


# annotations
.annotation build Laka;
.end annotation


# static fields
.field public static final a:Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->a:Landroid/graphics/Bitmap$Config;

    .line 37
    const-string v0, "bitmaps"

    invoke-static {v0}, Lako;->a(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-static {p0}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p0}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->nativePinBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    return-void
.end method

.method private static native nativeCopyBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;II)V
    .annotation build Laka;
    .end annotation
.end method

.method private static native nativePinBitmap(Landroid/graphics/Bitmap;)V
    .annotation build Laka;
    .end annotation
.end method
