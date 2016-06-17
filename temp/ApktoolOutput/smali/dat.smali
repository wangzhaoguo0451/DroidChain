.class final Ldat;
.super Ljava/lang/Object;
.source "ImageManager.java"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ldaa;


# direct methods
.method constructor <init>(Ldaa;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Ldat;->b:Ldaa;

    iput-object p2, p0, Ldat;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 558
    iget-object v0, p0, Ldat;->b:Ldaa;

    iget-object v1, p0, Ldat;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Ldaa;->a(Ldaa;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 559
    return-void
.end method
