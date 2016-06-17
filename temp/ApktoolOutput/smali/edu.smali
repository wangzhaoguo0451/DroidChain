.class final Ledu;
.super Ljava/lang/Object;
.source "NativeBlurProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Ledu;->a:Landroid/graphics/Bitmap;

    .line 61
    iput p2, p0, Ledu;->b:I

    .line 62
    iput p3, p0, Ledu;->c:I

    .line 63
    iput p4, p0, Ledu;->d:I

    .line 64
    iput p5, p0, Ledu;->e:I

    .line 65
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 52
    iget-object v0, p0, Ledu;->a:Landroid/graphics/Bitmap;

    iget v1, p0, Ledu;->b:I

    iget v2, p0, Ledu;->c:I

    iget v3, p0, Ledu;->d:I

    iget v4, p0, Ledu;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wandoujia/launcher/launcher/utils/ImageUtils;->functionToBlur(Landroid/graphics/Bitmap;IIII)V

    const/4 v0, 0x0

    return-object v0
.end method
