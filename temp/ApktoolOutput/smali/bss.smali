.class public final Lbss;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# static fields
.field private static final a:Lbst;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 19
    new-instance v0, Lbsv;

    invoke-direct {v0}, Lbsv;-><init>()V

    sput-object v0, Lbss;->a:Lbst;

    .line 25
    :goto_0
    return-void

    .line 20
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    .line 21
    new-instance v0, Lbsu;

    invoke-direct {v0}, Lbsu;-><init>()V

    sput-object v0, Lbss;->a:Lbst;

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lbsw;

    invoke-direct {v0}, Lbsw;-><init>()V

    sput-object v0, Lbss;->a:Lbst;

    goto :goto_0
.end method

.method public static a(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    sget-object v0, Lbss;->a:Lbst;

    invoke-virtual {v0, p0, p1}, Lbst;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 29
    return-void
.end method

.method public static b(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    sget-object v0, Lbss;->a:Lbst;

    invoke-virtual {v0, p0, p1}, Lbst;->b(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 33
    return-void
.end method
