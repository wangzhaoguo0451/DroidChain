.class public final Lfe;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# static fields
.field private static a:Lff;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Lfh;

    invoke-direct {v0}, Lfh;-><init>()V

    sput-object v0, Lfe;->a:Lff;

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 59
    new-instance v0, Lfg;

    invoke-direct {v0}, Lfg;-><init>()V

    sput-object v0, Lfe;->a:Lff;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lff;

    invoke-direct {v0}, Lff;-><init>()V

    sput-object v0, Lfe;->a:Lff;

    goto :goto_0
.end method

.method public static a(Landroid/view/LayoutInflater;Lfk;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    sget-object v0, Lfe;->a:Lff;

    invoke-virtual {v0, p0, p1}, Lff;->a(Landroid/view/LayoutInflater;Lfk;)V

    .line 80
    return-void
.end method
