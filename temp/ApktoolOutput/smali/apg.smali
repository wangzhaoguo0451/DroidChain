.class public final Lapg;
.super Ljava/lang/Object;
.source "DefaultBitmapMemoryCacheParamsSupplier.java"

# interfaces
.implements Lakd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lakd",
        "<",
        "Lapn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lapg;->a:Landroid/app/ActivityManager;

    .line 31
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    const v4, 0x7fffffff

    .line 21
    new-instance v1, Lapn;

    iget-object v0, p0, Lapg;->a:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v2, 0x10

    mul-int/2addr v0, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v2, 0x200

    if-ge v0, v2, :cond_0

    const/high16 v0, 0x40

    :goto_0
    const/16 v2, 0x100

    invoke-direct {v1, v0, v2, v4, v4}, Lapn;-><init>(IIII)V

    return-object v1

    :cond_0
    const/high16 v2, 0x400

    if-ge v0, v2, :cond_1

    const/high16 v0, 0x60

    goto :goto_0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_2

    const/high16 v0, 0x80

    goto :goto_0

    :cond_2
    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method
