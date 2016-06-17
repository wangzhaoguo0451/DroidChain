.class public final Laqa;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# instance fields
.field final a:Landroid/content/Context;

.field public b:Laja;

.field public c:Laub;

.field d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqa;->d:Z

    .line 280
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Laqa;->a:Landroid/content/Context;

    .line 281
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1}, Laqa;-><init>(Landroid/content/Context;)V

    return-void
.end method
