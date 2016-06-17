.class public final Lfl;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"


# static fields
.field private static a:Lfm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 129
    new-instance v0, Lfo;

    invoke-direct {v0}, Lfo;-><init>()V

    sput-object v0, Lfl;->a:Lfm;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lfn;

    invoke-direct {v0}, Lfn;-><init>()V

    sput-object v0, Lfl;->a:Lfm;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 147
    sget-object v0, Lfl;->a:Lfm;

    invoke-interface {v0, p0}, Lfm;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1
    .parameter

    .prologue
    .line 162
    sget-object v0, Lfl;->a:Lfm;

    invoke-interface {v0, p0}, Lfm;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method
